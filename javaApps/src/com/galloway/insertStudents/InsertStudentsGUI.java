package com.galloway.insertStudents;

import javax.swing.*;
import java.awt.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class InsertStudentsGUI {
    private JButton insertDataBtn;
    private JPanel mainPanel;
    private JTextField rollNoTxtField;
    private JTextField nameTxtField;
    private JTextField marksTxtField;
    private static Connection connection;

    public InsertStudentsGUI() {

        insertDataBtn.addActionListener(e -> {
            try{
                Statement stmt = connection.createStatement();
                String sql = "INSERT INTO student (roll_no, marks, name) VALUES("
                        + String.join(",", rollNoTxtField.getText(), marksTxtField.getText())
                        + ",'" + nameTxtField.getText() + "')";
                System.out.println(sql);
                stmt.execute(sql);
            }catch (SQLException se){
                se.printStackTrace();
            }
        });
    }

    public static void main(String[] args) {
        JFrame jFrame = new JFrame("Insert Students");
        Dimension screenSize = getDimension();

        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","c##exp10","galloway");

        } catch (Exception se){
            se.printStackTrace();
        }

        // get 2/3 of the height, and 2/3 of the width
        int height = screenSize.height * 3/5;
        int width = screenSize.width * 3 / 5;

        // set the jframe height and width
        jFrame.setPreferredSize(new Dimension(width, height));
        jFrame.setContentPane(new InsertStudentsGUI().mainPanel);
        jFrame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        jFrame.setLocation(screenSize.width/5, screenSize.height/5);
        jFrame.pack();
        jFrame.setVisible(true);
    }

    private static Dimension getDimension() {
        return Toolkit.getDefaultToolkit().getScreenSize();
    }
}
