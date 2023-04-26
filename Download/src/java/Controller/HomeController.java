/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Dal.FilesDal;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Model.Account;
import Model.Files;
import java.util.ArrayList;

/**
 *
 * @author fifak
 */
public class HomeController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Account account = (Account) req.getSession().getAttribute("account");
        if (account != null) {
            FilesDal filesDal = new FilesDal();
            ArrayList<Files> top5 = filesDal.gettop5dowloadFiles();
            ArrayList<Files> top6nonelike = filesDal.gettop6NoonedowloadFiles();
            req.setAttribute("top5download", top5);
            req.setAttribute("top6nonelike", top6nonelike);
            req.getRequestDispatcher("./view/home.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("login");
        }
    }

}
