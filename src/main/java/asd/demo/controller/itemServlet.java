/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.controller;

import asd.demo.model.Item;
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


@WebServlet("/item")
public class itemServlet extends HttpServlet {

   protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
       HttpSession session = request.getSession();
       //Dummy data 
       Item item = new Item("01","Dog","01/01/1901",10,30,9.99,"","","","","","","");
       //itemList.add(new Item("01","Dog","01/01/1901",10,30,9.99,"","","","","","",""));
       session.setAttribute("name", item);
       
       /*
         This will set response to be requested Item
       */
       request.getRequestDispatcher("itemPage.jsp").forward(request, response);
   }
}

 
