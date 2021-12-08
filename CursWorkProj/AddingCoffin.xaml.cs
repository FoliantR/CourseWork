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
    
    public partial class AddingCoffin : Window
    {
        public AddingCoffin()
        {
            InitializeComponent();
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            using (DBcontexts dbcontexts = new DBcontexts())
            {
                dbcontexts.Coffin.Add(new Coffin(nameInput.Text));
                dbcontexts.SaveChanges();
            }
            MessageBox.Show("Новый гроб успешно добавлен");
            Close();
        }
    }
}
