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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CursWorkProj
{
    
    public partial class MainWindow : Window
    {

        public MainWindow()
        {
            InitializeComponent();
            dataIDGrid.AutoGenerateColumns = true;
        }

        private void Button_AddingClient(object sender, RoutedEventArgs e)
        {
            AddingClient addingClientWindow = new AddingClient();
            addingClientWindow.Show();
        }

        private void Button_AddingGrave(object sender, RoutedEventArgs e)
        {
            AddingGrave addingGraveWindow = new AddingGrave();
            addingGraveWindow.Show();
        }

        private void Button_AddingCemetery(object sender, RoutedEventArgs e)
        {
            AddingCemetery addingCemeteryWindow = new AddingCemetery();
            addingCemeteryWindow.Show();
        }

        private void Button_AddingCoffin(object sender, RoutedEventArgs e)
        {
            AddingCoffin addingCoffinWindow = new AddingCoffin();
            addingCoffinWindow.Show();
        }

        private void Button_DeletingClient(object sender, RoutedEventArgs e)
        {
            DeletingCustomer deletingCustomer = new DeletingCustomer();
            deletingCustomer.Show();
        }

        private void Button_CreateProcession(object sender, RoutedEventArgs e)
        {
            AddingFuneralProcession addingFuneralProcession = new AddingFuneralProcession();
            addingFuneralProcession.Show();
        }

        private void Button_EditCustomerClick(object sender, RoutedEventArgs e)
        {
            EditCustomer editCustomer = new EditCustomer();
            editCustomer.Show();
        }

        private void Button_SelectCustomersClick(object sender, RoutedEventArgs e)
        {
            using (DBcontexts db = new DBcontexts())
            {
                var customers = db.Customer.ToList();
                dataIDGrid.ItemsSource = customers;
            }
        }

        private void Button_SelectFuneralProcessionClick(object sender, RoutedEventArgs e)
        {
            using (DBcontexts db = new DBcontexts())
            {
                var Fp = db.FuneralProcession.ToList();

                for (int i = 0; i < Fp.Count;)
                {
                    if (DateTime.Parse(Fp[i].Date).AddHours(23) < DateTime.Now)
                    {
                        Fp.RemoveAt(i);

                    } else
                    {
                        i++;
                    }
                }

                dataIDGrid.ItemsSource = Fp;
            }
        }
        private void Button_SelectTodayProcessionClick(object sender, RoutedEventArgs e)
        {
            using (DBcontexts db = new DBcontexts())
            {
                DateTime dateTime = DateTime.Now;
                var info = db.FuneralProcession.Where(p => p.Date == dateTime.ToShortDateString()).ToList();
                dataIDGrid.ItemsSource = info;
            }
        }

        private void Button_SelectAllProcessionClick(object sender, RoutedEventArgs e)
        {
            using (DBcontexts db = new DBcontexts())
            {
                var info = db.FuneralProcession.ToList();
                dataIDGrid.ItemsSource = info;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }


    }
}
