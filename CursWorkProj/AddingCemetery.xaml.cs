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
    
    public partial class AddingCemetery : Window
    {
        public AddingCemetery()
        {
            InitializeComponent();
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            using (DBcontexts dbcontexts = new DBcontexts())
            {
                dbcontexts.Cemetery.Add(new Cemetery(nameInput.Text,cityInput.Text));
                dbcontexts.SaveChanges();
            }
            MessageBox.Show("Новое кладбище успешно добавлено");
            Close();
        }
    }
}
