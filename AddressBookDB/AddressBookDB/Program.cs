using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddressBookDB
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Address Book");

            AddressBookModel model = new AddressBookModel();
            AddressBookRepo addressBookRepo = new AddressBookRepo();
            model.FirstName = "Roopa";
            model.LastName = "Jamadar";
            model.address = "Khandal";
            model.city = "Kalaburagi";
            model.State = "Karnataka";
            model.Zip = "585401";
            model.PhoneNumber = "9901123984";
            model.Email = "roopa14@gmail.com";
           // if (addressBookRepo.AddContact(model))
            //   Console.WriteLine("Record Added Successfully..");

            if (addressBookRepo.EditContact(model))
                Console.WriteLine("Record Updated Successfully");
            Console.ReadLine();
        }
    }
}
