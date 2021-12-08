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
    /// <summary>
    /// Логика взаимодействия для EditCustomer.xaml
    /// </summary>
    public partial class EditCustomer : Window
    {
        public EditCustomer()
        {
            InitializeComponent();
            using (DBcontexts db = new DBcontexts()) // Init combobox items
            {
                var humanNames = db.Customer.Select(p => p.Id.ToString() + " " + p.FirstName + " " + p.LastName).ToList();
                CustomerSelector.ItemsSource = humanNames;
            }
        }

        private void CustomerSelector_SelectionChanged(object sender, RoutedEventArgs e)
        {
            Customer customer;
            int customerID;
            using (DBcontexts db = new DBcontexts())
            {
                customerID = int.Parse(CustomerSelector.SelectedItem.ToString().Split(' ')[0]);
                customer = db.Customer.Where(p => p.Id == customerID).FirstOrDefault();
            }
            nameInput.Text = customer.FirstName;
            lastNameInput.Text = customer.LastName;
            PatronInput.Text = customer.Patronymic;
            phoneInput.Text = customer.PhoneNumber;
            cityInput.Text = customer.City;
        }

        private void changeButton_Click(object sender, RoutedEventArgs e)
        {
            Customer customer;
            int customerID;
            using (DBcontexts db = new DBcontexts())
            {
                customerID = int.Parse(CustomerSelector.SelectedItem.ToString().Split(' ')[0]);
                customer = db.Customer.Where(p => p.Id == customerID).FirstOrDefault();
                customer.FirstName = nameInput.Text;
                customer.LastName = lastNameInput.Text;
                customer.Patronymic = PatronInput.Text;
                customer.PhoneNumber = phoneInput.Text;
                customer.City = cityInput.Text;
                db.SaveChanges();
            }
            MessageBox.Show("Клиент успешно отредактикрован!");
            Close();
        }
    }
}
