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
using System.Net.Mail;
using System.Data.SqlClient;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Database1Entities1 _db = new Database1Entities1();
        class Liist
        {
            public string Name { get; set; }
            public string Surname { get; set; }
            public string DateOfBirth { get; set; }
            public string City { get; set; }
            public string Email { get; set; }
            public string Gender { get; set; }
        }
        bool used=false;
        List<Liist> collection = new List<Liist>();
        public MainWindow()
        {
            List<Table1> persons = _db.Table1.ToList();

            foreach (var person in persons)
            {
                collection.Add(new Liist
                {
                    Name = person.Name,
                    Surname = person.LastName,
                    DateOfBirth = person.BirthDate.ToString(),
                    City = person.City,
                    Email = person.Email,
                    Gender = person.Gender
                });
            }
            InitializeComponent();
        }


        private void Male_Click(object sender, RoutedEventArgs e)
        {
            Male.IsChecked = true;
            Female.IsChecked = Undecided.IsChecked = false;
        }

        private void Female_Click(object sender, RoutedEventArgs e)
        {
            Female.IsChecked = true;
            Male.IsChecked = Undecided.IsChecked = false;
        }

        private void Undecided_Click(object sender, RoutedEventArgs e)
        {
            Undecided.IsChecked = true;
            Male.IsChecked = Female.IsChecked = false;
        }

        private void Submit_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(Email.Text))
            {
                try
                {
                    var test = new MailAddress(Email.Text);
                }
                catch (FormatException ex)
                {
                    return;
                }
            }
            string name = Name.Text;
            string surname = Surname.Text;
            string dateofbirth = DateOfBirth.ToString();
            string variant;
            string city = City.Text;
            string email = Email.Text;
            if (Female.IsChecked == true)
            {
                variant = "M";
            }
            else
                if (Male.IsChecked == true)
            {
                variant = "F";
            }
            else
            {
                variant = "U";
            }
            bool hasSameValue = false;
            if (collection != null)
            foreach (var item in collection)
            {
                if (name.Equals(item.Name) && surname.Equals(item.Surname) && dateofbirth.Equals(item.DateOfBirth) && city.Equals(item.City) && email.Equals(item.Email) && variant.Equals(item.Gender))
                {
                    hasSameValue = true;
                    break;
                }
            }
            if (!hasSameValue)
            {
                if (used==false)
                {
                    used = true;
                    GridData.ItemsSource = collection;
                }
                Liist ne = new Liist()
                {
                    Name = name,
                    Surname = surname,
                    DateOfBirth = dateofbirth,
                    City = city,
                    Email = email,
                    Gender = variant
                };
                collection.Add(ne);
                _db.Table1.Add(new Table1
                {
                    Name = ne.Name,
                    LastName = ne.Surname,
                    BirthDate = DateTime.Parse(ne.DateOfBirth),
                    City = ne.City,
                    Email = ne.Email,
                    Gender = ne.Gender
                });
                _db.SaveChanges();
                GridData.Items.Refresh();
            }
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var selectedItem = ((FrameworkElement)sender).DataContext as Liist;
            if (selectedItem != null)
            {
                collection.Remove(selectedItem);
                List<Table1> persons = _db.Table1.ToList();
                foreach (var person in persons)
                {
                    if (selectedItem.Name == person.Name &&
                        selectedItem.Surname == person.LastName &&
                        selectedItem.DateOfBirth == person.BirthDate.ToString() &&
                        selectedItem.City == person.City &&
                        selectedItem.Email == person.Email &&
                        selectedItem.Gender == person.Gender
                    )
                    {
                        _db.Table1.Remove(person);
                        _db.SaveChanges();
                        break;
                    }
                }
            }
            GridData.Items.Refresh();
        }
    }
    }
