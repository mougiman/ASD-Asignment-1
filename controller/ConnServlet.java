package asd.demo.controller;

import asd.demo.model.dao.DBConnector;
import asd.demo.model.dao.DBManager;
import asd.demo.model.dao.MongoDBConnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author George
 */
public class ConnServlet extends HttpServlet {
    /*private MongoDBConnector connector;  
     
    @Override 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String adminemail = request.getParameter("adminemail");
        String adminpass = request.getParameter("adminpassword");
        connector = new MongoDBConnector(adminemail, adminpass);        
        response.setContentType("text/html;charset=UTF-8");  
        HttpSession session = request.getSession();              
        String status = (connector != null) ? "Connected to mLab" : "Disconnected from mLab";        
        
        session.setAttribute("status", status); 
        session.setAttribute("adminemail", adminemail);
        session.setAttribute("adminpassword", adminpass);
          
        RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
        rs.forward(request, response);
    }    
  
    */
    //Evreything below here is only temporary for R0 and is used to connect to a local SQL database
    
    
    private DBConnector db;
    private DBManager manager;
    private Connection conn;
    
    @Override //Create and instance of DBConnector for the deployment session
    public void init() {
        try {
            db = new DBConnector();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }       
    }
  
    @Override //Add the DBManager instance to the session 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");        
        HttpSession session = request.getSession();
        conn = db.openConnection();        
        try {
            manager = new DBManager(conn);
        } catch (SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }      
        //export the DB manager to the view-session (JSPs)
        session.setAttribute("manager", manager);
        
    }    
    
    @Override //Destroy the servlet and release the resources of the application
     public void destroy() {
        try {
            db.closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
