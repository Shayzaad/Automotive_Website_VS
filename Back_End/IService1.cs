using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Back_End
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool Register(string Username, string Email, string Password);

        [OperationContract]
        int Login(string Email, string Password);

        [OperationContract]
        List<ProductDTO> GetProducts();

        [OperationContract]
        Product GetProduct(int ID);

        [OperationContract]
        Customer1 GetUserByEmail(string email);

        [OperationContract]
        List<ProductDTO> GetProductByCategory(int CatID);

        [OperationContract]
        ProductDTO GetProductDTO(int ID);

        [OperationContract]
        void UpdateProduct(string productId, int category, string productName, decimal price, string imageUrl, string description, int quantity);

        [OperationContract]
        void DeleteProduct(string productId);

        [OperationContract]
        bool AddProduct(string name, int category, decimal price, string imageUrl, string description, int quantity);

        [OperationContract]
        List<InvoicesDTO> GetInvoicesByUserId(int userId);
    }
}
