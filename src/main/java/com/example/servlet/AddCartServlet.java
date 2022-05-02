package com.example.servlet;

import com.example.entity.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCartServlet", value = "/AddCartServlet")
public class AddCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = toInt(request.getParameter("id"));
        int quantity = toInt(request.getParameter("quantity"));
        ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
        if (cart == null){
            cart = new ShoppingCart();
        }

        cart.add(id,quantity);
        request.getSession().setAttribute("cart",cart);
        request.getRequestDispatcher("/showCart").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private static int toInt(String str) {
        return Integer.parseInt(str);
    }
}
