using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CursWorkProj
{

    public partial class DeletingCustomer : Window
    {
        public DeletingCustomer()
        {
            InitializeComponent();
            using (DBcontexts db = new DBcontexts()) 
            {
                var CustomerNames = db.Customer.Select(p => p.Id.ToString() + " " + p.FirstName + " " + p.LastName).ToList();
                CustomerSelector.ItemsSource = CustomerNames;
            }
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {
            using (DBcontexts db = new DBcontexts())
            {
                int CutomerId = int.Parse(CustomerSelector.SelectedItem.ToString().Split(' ')[0]);
                Customer customer = db.Customer.Where(p => p.Id == CutomerId).FirstOrDefault();
                db.Customer.Remove(customer);
                db.SaveChanges();
            }
            MessageBox.Show("Клиент успешно удален!");
            Close();

        }
    }
}
