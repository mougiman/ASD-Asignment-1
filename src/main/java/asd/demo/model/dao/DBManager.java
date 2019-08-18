package asd.demo.model.dao;

import java.sql.*;
import java.util.ArrayList;
import asd.demo.model.*;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;



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
    
    public ArrayList<Item> getItem() throws SQLException{
        ArrayList<Item> list = new ArrayList<Item>();
        String query = "SELECT * FROM ITEMS";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String id = rs.getString(1);
            String name = rs.getString(2);
            String datelisted = rs.getString(3);
            int stock = Integer.parseInt(rs.getString(4));
            int soldQunatity = Integer.parseInt(rs.getString(5));
            Double price = Double.parseDouble(rs.getString(6));
            String desc = rs.getString(7);
            String category = rs.getString(8);
            String yearMade = rs.getString(9);
            String sellerId = rs.getString(10);
            String condition = rs.getString(11);          
            String color = rs.getString(12);
            String image = rs.getString(15);
            
            Item currItem = new Item(id, name, datelisted, stock, soldQunatity, price, desc, category, 
                    yearMade, sellerId, condition,color, image);
            list.add(currItem);
        }
        return list;
    }
    
    
    
    
    public void addAucItem(String id, String name, String datelisted, int quantity,  Double bid, String desc, String category, String yearMade, String sellerId, String condition, String color,String expdate,String CusID) throws SQLException {
        String query = "INSERT INTO AUC (ID, NAME, DATELISTED, QUANTITY, BID，DESCRIPTION, CATEGORY, YEARMADE, SELLERID, CONDITION, COLOR,EXPDATE,CUSID) VALUES ('" + id + "','" + name + "','" + datelisted + "'," + quantity + "," + bid + ",'" + desc + "','" + category + "','" + yearMade + "','" + sellerId + "','" + condition + "','" + color + "','" + expdate + "','" + CusID + "')";
        st.executeUpdate(query);
    }
  public ArrayList<Auction> allAUC() throws SQLException {
        ArrayList<Auction> list = new ArrayList<Auction>();
        String query = "SELECT * FROM AUC";
        ResultSet rs = st.executeQuery(query);
        while (rs.next()) {
            String id = rs.getString(1);
            String name = rs.getString(2);
            String datelisted = rs.getString(3);
            int quantity = Integer.parseInt(rs.getString(4));
            Double bid = Double.parseDouble(rs.getString(6));
            String desc = rs.getString(5);
            String category = rs.getString(6);
            String yearMade = rs.getString(7);
            String sellerId = rs.getString(8);
            String condition = rs.getString(9);          
            String color = rs.getString(10);
            String expdate = rs.getString(11);
            String CusID = rs.getString(12);
            
            Auction auction = new Auction(id, name, datelisted,quantity,bid,desc,category,yearMade,sellerId,condition,color,expdate,CusID);
            list.add(auction);
        }
        return list;
    }
  public boolean IsAuc(String id) throws SQLException
  { 
      String query = "SELECT * FROM AUC WHERE ID = '" + id + "'";
        ResultSet rs = st.executeQuery(query);
  if(rs == null)
  {return false;
  }
  else {return true;}
  }
  public boolean compareBid(String id, double bid) throws SQLException
  {
   String query = "SELECT * FROM AUC WHERE ID = '" + id + "'";
        ResultSet rs = st.executeQuery(query);
        if (Double.parseDouble(rs.getString(6)) < bid)
        {
return true;

        }
        return false;
  }
   public void changeBid(String id, double bid,String cusID)throws SQLException
   {
  String query= "UPDATE AUC SET BID =  '" + bid + "', CUSID = '" + cusID + "'  WHERE ID = '" + id + "'";
  ResultSet rs = st.executeQuery(query);
   }
   public boolean isExpire(String id)throws SQLException
   {
         
          String query = "SELECT * FROM AUC  WHERE ID = '" + id + "'";
         ResultSet rs = st.executeQuery(query);
         String expdate = rs.getString(11);
         LocalDate now =LocalDate.now();
        String date = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
         if (expdate.compareTo(date)>0)
                 {return false;}
         return true;
   }
    
    public History[] getHistory() throws SQLException {
        String searchQueryString = "select * from ISDUSER.ORDERS";
        ResultSet rs = st.executeQuery(searchQueryString);
        ArrayList<History> historiesFromDB;
        historiesFromDB = new ArrayList();
        //search the ResultSet for a student using the parameters
        boolean hasHistory;
        hasHistory = rs.next();

        while (rs.next()) {

            String hID = rs.getString("id");
            String hName = rs.getString("name");
            String hDatelisted = rs.getString("datelisted");
            String hQty = rs.getString("qty");
            String hDesc = rs.getString("desc");
            String hCategory = rs.getString("category");
            String hYearMade = rs.getString("yearMade");
            String hSellerId = rs.getString("sellerId");
            String hColor = rs.getString("color");
            String hCusID = rs.getString("CusID");
            String hPrice = rs.getString("price");

            historiesFromDB.add(new History(hID, hName, hDatelisted, hQty, hDesc, hCategory, hYearMade, hSellerId, hColor, hCusID, hPrice));
        }
        rs.close();
        // st.close();
        return historiesFromDB.toArray(new History[historiesFromDB.size()]);

    }
   
   
   }
