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
using System.Data.Entity;
using System.ComponentModel;

namespace MoneyBMineWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public NYSEData newNYSEData { get; set; }

        NYSEDataEntities context = new NYSEDataEntities();
        CollectionViewSource MBMViewSource;


        public MainWindow()
        {
            InitializeComponent();
            newNYSEData = new NYSEData();
            MBMViewSource = ((CollectionViewSource)FindResource("nYSEDataViewSource"));
            DataContext = this;

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource nYSEDataViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("nYSEDataViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // nYSEDataViewSource.Source = [generic data source]
            context.NYSEDatas.Load();
            MBMViewSource.Source = context.NYSEDatas.Local;
        }

        //Navigate between the records
        private void LastCommandHandler(object sender, ExecutedRoutedEventArgs e)
        {
            MBMViewSource.View.MoveCurrentToLast();
        }

        private void PreviousCommandHandler(object sender, ExecutedRoutedEventArgs e)
        {
            MBMViewSource.View.MoveCurrentToPrevious();
        }

        private void NextCommandHandler(object sender, ExecutedRoutedEventArgs e)
        {
            MBMViewSource.View.MoveCurrentToNext();
        }

        private void FirstCommandHandler(object sender, ExecutedRoutedEventArgs e)
        {
            MBMViewSource.View.MoveCurrentToFirst();
        }

        //search record according to the text in TextBox(txtSearch)
        private void Button_Click1(object sender, RoutedEventArgs e)
        {
            var search = txtSearch.Text;

            var records = from r in this.context.NYSEDatas
                          where r.stock_symbol.Contains(search)
                          select r;

            MBMViewSource.Source = records.ToList();

        }

    }
}