package com.example.servlet;

import com.example.dao.PetDao;
import com.example.entity.Pet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailServlet", value = "/DetailServlet")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Id= request.getParameter("id");
        Pet pet=new PetDao().getById(Integer.parseInt(Id));
        request.setAttribute("pet",pet);
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
