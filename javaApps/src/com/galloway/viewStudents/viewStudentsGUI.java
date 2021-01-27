package com.galloway.viewStudents;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.sql.*;

public class viewStudentsGUI {
    private JTable viewStudentsTable;
    private JPanel mainPanel;
    private JButton refreshButton;
    private static Connection connection;

    public viewStudentsGUI() {
        getData();
        refreshButton.addActionListener(e -> getData());
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
        jFrame.setContentPane(new viewStudentsGUI().mainPanel);
        jFrame.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        jFrame.setLocation(screenSize.width/5, screenSize.height/5);
        jFrame.pack();
        jFrame.setVisible(true);
    }

    private static Dimension getDimension() {
        return Toolkit.getDefaultToolkit().getScreenSize();
    }

    private void getData(){
        try{
            Statement stmt = connection.createStatement();
            String sql = "SELECT * FROM student";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);

            DefaultTableModel defaultTableModel = new DefaultTableModel();
            viewStudentsTable.setModel(defaultTableModel);

            defaultTableModel.addColumn("Roll No");
            defaultTableModel.addColumn("Name");
            defaultTableModel.addColumn("Marks");
            while(rs.next()){
                defaultTableModel.addRow(new Object[]{rs.getString(1), rs.getString(2), rs.getString(3)});
            }
        }catch (SQLException se){
            se.printStackTrace();
        }
    }
}
