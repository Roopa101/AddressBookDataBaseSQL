using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddressBookDB
{
    public class AddressBookRepo
    {
        public static string connectionString = @"Data Source=(localdb)\ProjectsV13;Initial Catalog=AddressBookService;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection connection = new SqlConnection(connectionString);

    }
}
