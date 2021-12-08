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
    public partial class AddingFuneralProcession : Window
    {
        public AddingFuneralProcession()
        {
            InitializeComponent();
            using (DBcontexts db = new DBcontexts()) // Init combobox items
            {
                var humanNames = db.Customer.Select(p => p.Id.ToString() + " " + p.FirstName + " " + p.LastName).ToList();
                ClientSelector.ItemsSource = humanNames;
                var CemeteryNames = db.Cemetery.Select(p => p.Id.ToString() + " " + p.City + " " + p.Name).ToList();
                CemeterySelector.ItemsSource = CemeteryNames;
                var CoffinNames = db.Coffin.Select(p => p.Id.ToString() + " " + p.Material).ToList();
                CoffinSelector.ItemsSource = CoffinNames;
                var GraveNames = db.Grave.Select(p => p.Id.ToString() + " " + p.Name).ToList();
                GraveSelector.ItemsSource = GraveNames;
            }
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            using (DBcontexts dbcontexts = new DBcontexts())
            {
                int ClientId = int.Parse(ClientSelector.SelectedItem.ToString().Split(' ')[0]);
                int CemetryId = int.Parse(CemeterySelector.SelectedItem.ToString().Split(' ')[0]);
                int CoffinId = int.Parse(CoffinSelector.SelectedItem.ToString().Split(' ')[0]);
                int GraveId = int.Parse(GraveSelector.SelectedItem.ToString().Split(' ')[0]);         
                dbcontexts.FuneralProcession.Add(new FuneralProcession(CemetryId, GraveId, CafeInput.Text, CoffinId, ClientId, DateInput.Text));
                dbcontexts.SaveChanges();
                
            }
            MessageBox.Show("Новая похоронная процессия успешно создана");
            Close();
        }
    }
}
