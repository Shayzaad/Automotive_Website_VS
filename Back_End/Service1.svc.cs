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
        public bool Login(string Email, string Password)
        {
            var cu = (from c in db.Customer1s
                      where c.Email.Equals(Email) && c.Pass.Equals(Password)
                      select c).FirstOrDefault();

            if (cu != null)
            {
                return true;
            }
            else
            {
                return false;
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
                Pass = Password
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
        public List<Product> GetProducts()
        {
            dynamic product = null;
            product = (from p in db.Products
                       where p.StockQuantity > 1
                       select p).DefaultIfEmpty();

            if (product != null)
            {
                //Create Product list and add products to list
                List<Product> ListProd = new List<Product>();
                foreach (Product p in product)
                {
                    ListProd.Add(p);
                }
                return ListProd;
            }
            else
            {
                return null;
            }
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
    }
}

