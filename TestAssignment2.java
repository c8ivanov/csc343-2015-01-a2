import java.sql.*;
import java.util.ArrayList;

class TestAssignment2
{
    Connection conn;
    Assignment2 a2;

    TestAssignment2()
    {
        conn = null;
        try{
            a2 = new Assignment2();
        }catch(Exception s)
        {
            System.out.println("Error initializing a new Assignment2");
        }

    }
    /**
     *Parameters:
     *args[0] : dbname
     *args[1] : username for database
     *arts[2] : password for database
     */

    public static void main(String args[]) throws Exception
    {
        String dbname = args[0];
        String username = args[1];
        String password = "";
        String url = "jdbc:postgresql:" + dbname;

        TestAssignment2 ta2 = new TestAssignment2();

        //Test function connectDB
        ta2.a2.connectDB(url,username,password);


        if (args.length > 3 && args[3].equals("costars")) {
          //Test function findCoStars
          System.out.println("");
          System.out.println("Find co-stars of " + args[4]);
          ArrayList<String> res = ta2.a2.findCoStars(args[4]);
          for (String s : res) {
              System.err.println(s);
          }
        } else if (args.length > 3 && args[3].equals("connectivity")) {
          //Test function computeConnectivity
          System.out.println("");
          System.out.println("Compute the connectivity between " + args[4] + " and " + args[5]);
          System.err.println(ta2.a2.computeConnectivity(args[4], args[5]));
        }
  
        ta2.a2.disconnectDB();
      }
}
