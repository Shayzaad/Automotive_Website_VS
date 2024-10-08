using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using Front_End.ServiceReference1;

namespace Front_End
{
    public partial class Invoices : Page
    {
        Service1Client SC = new Service1Client();
        StringBuilder InvoiceBuilder = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            var user = (Customer1)Session["User"];
            if (user == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            int userID = user.CustomerID;

            UpdateInvoicesPage(userID);
        }

        private void UpdateInvoicesPage(int userID)
        {
            List<InvoicesDTO> invoices = SC.GetInvoicesByUserId(userID).ToList();
            if (invoices != null)
            {
                // Clear existing invoice content
                InvoiceBuilder.Clear();

                foreach (InvoicesDTO invoice in invoices)
                {
                    InvoiceBuilder.AppendLine("<div class='invoice-item'>");
                    InvoiceBuilder.AppendLine($"<h3>Invoice #{invoice.I_InvoiceID}</h3>");
                    InvoiceBuilder.AppendLine($"<p><strong>Date:</strong> {invoice.I_PurchaseDate.ToString("dd MMM yyyy")}</p>");
                    InvoiceBuilder.AppendLine($"<p><strong>Total Amount:</strong> R{invoice.I_TotalAmount:F2}</p>");
                    InvoiceBuilder.AppendLine($"<p><strong>VAT:</strong> R{invoice.I_VATAmount:F2}</p>");
                    InvoiceBuilder.AppendLine($"<p><strong>PDF:</strong> <a href='{invoice.I_PDFPath}' target='_blank'>View PDF</a></p>");
                    InvoiceBuilder.AppendLine("</div>");
                }

                invoiceContainer.InnerHtml = InvoiceBuilder.ToString();
            }
            else
            {
                // Handle no invoices scenario
                invoiceContainer.InnerHtml = "<p>No invoices found.</p>";
            }
        }
    }
}
