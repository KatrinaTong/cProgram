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

namespace ClientMoneyMine
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
        
    {
        NYSEDataEntities _db = new NYSEDataEntities();
        public MainWindow()
        {
            InitializeComponent();
            Load();
        }

       public void Load()
        {
            myDatagrid.ItemsSource = _db.NYSEDailyPriceAs.ToList();          
        }

       private void SearchButton_Click(object sender, RoutedEventArgs e)
       {
           using (var _db = new NYSEDataEntities())
           {
               // Query for all stocks with symbol name like "ASP"
               var stockSymbol = stockTextBox.Text;
               var stocks = from b in _db.NYSEDailyPriceAs
                           where b.stock_symbol == stockSymbol
                           select b;

               myDatagrid.ItemsSource = stocks.ToList();
           }
       }
    }
}
