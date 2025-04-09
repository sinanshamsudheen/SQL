//Muhammed Sinan D - 347
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;

public class UserForm extends JFrame {
    private JTextField[] fields = new JTextField[5];
    private JLabel statusLabel = new JLabel("");

    public UserForm() {
        setTitle("User Form");
        setSize(300, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new GridLayout(7, 2));
        String[] labels = {"First Name:", "Last Name:", "Email:", "Address:", "Phone Number:"};

        for (int i = 0; i < labels.length; i++) {
            add(new JLabel(labels[i]));
            fields[i] = new JTextField();
            add(fields[i]);
        }

        JButton submitButton = new JButton("Submit");
        add(submitButton);
        add(statusLabel);

        submitButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    for (JTextField field : fields) {
                        if (field.getText().isEmpty()) {
                            throw new Exception("All fields must be filled out.");
                        }
                    }
                    insertUser(fields[0].getText(), fields[1].getText(), fields[2].getText(), fields[3].getText(), fields[4].getText());
                    statusLabel.setText("User added successfully!");
                } catch (Exception ex) {
                    statusLabel.setText("Error: " + ex.getMessage());
                }
            }
        });

        setLocationRelativeTo(null);
        setVisible(true);
    }

    private void insertUser(String firstName, String lastName, String email, String address, String phone) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL", "sinan", "sinan");
            String query = "INSERT INTO users (user_id, first_name, last_name, email, address, phone_number) "
                         + "VALUES (user_seq.NEXTVAL, ?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(query);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, address);
            statement.setString(5, phone);
            statement.executeUpdate();
        } catch (ClassNotFoundException e) {
            throw new SQLException("Oracle JDBC Driver not found.");
        } finally {
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }
    }

    public static void main(String[] args) {
        new UserForm();
    }
}
