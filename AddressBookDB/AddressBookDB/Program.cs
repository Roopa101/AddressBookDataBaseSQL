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
            model.FirstName = "Shradha";
            model.LastName = "Jadhav";
            model.address = "Pune";
            model.city = "Pune";
            model.State = "Maharashtra";
            model.Zip = "5674639";
            model.PhoneNumber = "9689519187";
            model.Email = "shradha@gmail.com";
           // if (addressBookRepo.AddContact(model))
            //   Console.WriteLine("Record Added Successfully..");

          //  if (addressBookRepo.EditContact(model))
            //    Console.WriteLine("Record Updated Successfully");

            if (addressBookRepo.DeleteContact(model))
                Console.WriteLine("Record Deleted Successfully");
            Console.ReadLine();
        }
    }
}
