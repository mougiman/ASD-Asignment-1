package asd.demo.model.dao;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author George
 *
 * DBManager is the primary DAO class to interact with the database and perform
 * CRUD operations with the db. Firstly, complete the existing methods and
 * implement them into the application.
 *
 * So far the application uses the Read and Create operations in the view.
 * Secondly, improve the current view to enable the Update and Delete
 * operations.
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public void addItem(String id, String name, String datelisted, int qunatity, int soldQunatity, Double price, String desc, String category, String yearMade, String sellerId, String condition, String color) throws SQLException {
        String query = "INSERT INTO ITEMS (ID, NAME, DATELISTED, QUANTITY, SOLDQUANTITY, PRICE, DESCRIPTION, CATEGORY, YEARMADE, SELLERID, CONDITION, COLOR) VALUES ('" + id + "','" + name + "','" + datelisted + "'," + qunatity + "," + soldQunatity + "," + price + ",'" + desc + "','" + category + "','" + yearMade + "','" + sellerId + "','" + condition + "','" + color + "')";
        st.executeUpdate(query);
    }
}
