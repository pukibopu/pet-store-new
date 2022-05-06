package com.example.servlet;

import com.alibaba.fastjson.JSON;
import com.example.entity.ShoppingCart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveFromCartServlet", value = "/remove")
public class RemoveFromCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        ShoppingCart cart =(ShoppingCart) request.getSession().getAttribute("cart");
        if(request.getParameter("id")!=null){
            cart.remove(id);
        }
        response.setContentType("application/json;charset=UTF-8");
        request.getSession().setAttribute("cart",cart);
        response.getWriter().print(JSON.toJSONString(cart));

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
