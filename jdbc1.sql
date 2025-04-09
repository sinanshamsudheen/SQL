import java.sql.*;

class jdbcfile{
    public static void main(String args[]) {
        String URL = "jdbc:oracle:thin:@localhost:1521:ORCL";
        String user = "sinan";
        String password = "sinan";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(URL, user, password);
            System.out.println("Connection successful");

            Statement stmt = con.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT rollno, name, marks FROM student");

            while (rs.next()) {
                System.out.println("Roll no: " + rs.getInt(1));
                System.out.println("Name: " + rs.getString(2));
                System.out.println("Mark: " + rs.getInt(3));
                System.out.println();
            }

            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}