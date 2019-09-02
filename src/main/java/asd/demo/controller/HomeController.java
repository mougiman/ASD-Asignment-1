/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.controller;

import asd.demo.model.Item;

import asd.demo.model.dao.MongoDBConnector;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import asd.demo.model.Test;
import java.util.Enumeration;
import javax.servlet.http.HttpSession;
     

/**
 *
 * @author Calvin
 */


@WebServlet("/home")
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MongoDBConnector connector = new MongoDBConnector();
        
        Item item = connector.getItemList();
        //String id = request.getParameter("id");
        request.setAttribute("item", item); // Will be available as ${products} in JSP
        request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
    }

    
//   protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
//       HttpSession session = request.getSession();
//       //Dummy data 
//       Item item = new Item("01","1000 Piece Puzzle","01/01/2018",10,30,9.99,"Great Board Game","Puzzle","2017","01-Calvin","New","Brown","puzzle-img.jpg");
//       //itemList.add(new Item("01","Dog","01/01/1901",10,30,9.99,"","","","","","",""));
//       request.setAttribute("name", item);
//       request.getRequestDispatcher("itemPage.jsp").forward(request, response);
//   }
}

 
