using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Back_End
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        //Function used to check login details in database
        //Either denies or allows user access
        //Customer = 0
        //Manager = 1
        public int Login(string Email, string Password)
        {
            var user = (from u in db.Customer1s
                        where u.Email.Equals(Email) && u.Pass.Equals(Password)
                        select u).FirstOrDefault();

            //0 - Customer
            if (user != null && user.UserType.Equals("Customer"))
            {
                return 0;
            }
            //1 - Manager
            else if (user != null && user.UserType.Equals("Manager"))
            {
                return 1;
            }
            //2 - Error
            else
            {
                return 2;
            }
        }

        //Function used to register a user
        public bool Register(string Username, string Email, string Password)
        {

            //var existingCustomer = db.Customer1s.FirstOrDefault(c => c.Username == Username || c.Email == Email);

            //if (existingCustomer != null)
            //{
            //    // Customer already exists
            //    return false;
            //}

            var Customer = new Customer1
            {
                UserName = Username,
                Email = Email,
                Pass = Password,
                UserType = "Customer"
            };

            db.Customer1s.InsertOnSubmit(Customer);
            try
            {
                db.SubmitChanges();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                e.GetBaseException();
                return false;
            }
        }

        //Returns list of products with quantity greater than 1
        //DefaultIfEmpty() - Brings back all that you find, or nothing
        public List<ProductDTO> GetProducts()
        {
            // Query to get products with StockQuantity greater than 1
            var products = from p in db.Products
                           where p.StockQuantity > 1
                           select new ProductDTO
                           {
                               ProductID = p.ProductID,
                               CategoryID = p.CategoryID,
                               Name = p.Name,
                               Image = p.Image,
                               Price = p.Price,
                               DiscountedPrice = p.DiscountedPrice,
                               Description = p.Description,
                               Rating = p.Rating,
                               StockQuantity = p.StockQuantity
                           };

            // Convert the result to a List
            List<ProductDTO> ListProd = products.ToList();

            return ListProd; // Return the list (can be empty, but not null)
        }

        //Returns a single product
        public Product GetProduct(int ID)
        {
            var product = (from p in db.Products
                           where p.ProductID.Equals(ID)
                           select p).FirstOrDefault();

            if (product != null)
            {
                return product;
            }
            else
            {
                return null;
            }
        }

        public ProductDTO GetProductDTO(int ID)
        {
            var product = (from p in db.Products
                           where p.ProductID.Equals(ID)
                           select p).FirstOrDefault();

            if (product != null)
            {
                // Map Product to ProductDTO
                return new ProductDTO
                {
                    ProductID = product.ProductID,
                    CategoryID = product.CategoryID,
                    Name = product.Name,
                    Image = product.Image,
                    Price = product.Price,
                    DiscountedPrice = product.DiscountedPrice,
                    Description = product.Description,
                    Rating = product.Rating,
                    StockQuantity = product.StockQuantity
                };
            }
            else
            {
                return null;
            }
        }


        public Customer1 GetUserByEmail(string email)
        {
            var user = (from u in db.Customer1s
                        where u.Email == email
                        select u).FirstOrDefault();

            if (user != null)
            {
                var objUser = new Customer1();
                objUser.CustomerID = user.CustomerID;
                objUser.UserName = user.UserName;
                objUser.Email = user.Email;
                objUser.UserType = user.UserType;

                return objUser;
            }
            else
            {
                return null;
            }
        }

        public List<ProductDTO> GetProductByCategory(int CatID)
        {
            List<ProductDTO> productList = new List<ProductDTO>();

            dynamic products = db.Products.ToList();

            if (products != null && products.Count > 0)
            {
                foreach (dynamic product in products)
                {
                    if (product.CategoryID == CatID)
                    {
                        ProductDTO productDto = new ProductDTO
                        {
                            ProductID = product.ProductID,
                            CategoryID = product.CategoryID,
                            Name = product.Name,
                            Image = product.Image,
                            Price = product.Price,
                            DiscountedPrice = product.DiscountedPrice,
                            Description = product.Description,
                            Rating = product.Rating,
                            StockQuantity = product.StockQuantity
                        };

                        productList.Add(productDto);
                    }
                }
            }

            return productList;
        }

    }

    public class ProductDTO
    {
        public int ProductID { get; set; } // Unique identifier for the product
        public int CategoryID { get; set; } // Foreign key referencing the Categories table
        public string Name { get; set; } // Name of the product
        public string Image { get; set; } // URL or path to the product image
        public decimal Price { get; set; } // Price of the product
        public decimal? DiscountedPrice { get; set; } // Discounted price, nullable if no discount is available
        public string Description { get; set; } // Description of the product
        public string Rating { get; set; } // Rating of the product, possibly as a string representation
        public int StockQuantity { get; set; } // Quantity of the product in stock
    }
}

