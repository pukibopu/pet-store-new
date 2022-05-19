package com.example.servlet;

import com.example.entity.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/changeQuan")
public class ChangeQuantityServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String id=req.getParameter("id");
        String quan=req.getParameter("quantity");
        ShoppingCart cart=(ShoppingCart) req.getSession().getAttribute("cart");
        cart.ChangeQuantity(Integer.parseInt(id),Integer.parseInt(quan));
        resp.setContentType("application/json");
        resp.getWriter().print(cart.getTotalMoney());

    }
}
