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
import Model.Files;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author fifak
 */
public class SearchController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FilesDal filesDal = new FilesDal();
        String status = req.getParameter("status");
        if (status.equals("search")) {
            String txtSearch = req.getParameter("txtSearch");
            ArrayList<Files> searchElement = filesDal.searchFile(txtSearch);
            PrintWriter out = resp.getWriter();
            for (Files files : searchElement) {
                out.println("<div class=\"container\">\n"
                        + "                    <ul class=\"image-list\">\n"
                        + "                        <li>				\n"
                        + "                            <div>\n"
                        + "                                <h2>" + files.getFile_name() + "</h2>\n"
                        + "                                <p>" + files.getFile_desc() + "</p>				\n"
                        + "                            </div>\n"
                        + "                            <a href=\"" + files.getFile_url() + "\" class=\"download-link\">Download</a>\n"
                        + "                        </li>\n"
                        + "                    </ul>\n"
                        + "                </div>");
            }
        } else if (!status.isEmpty()) {
            ArrayList<Files> searchElement = filesDal.getFilewithType(status);
            PrintWriter out = resp.getWriter();
            for (Files files : searchElement) {
                out.println("<div class=\"container\">\n"
                        + "                    <ul class=\"image-list\">\n"
                        + "                        <li>				\n"
                        + "                            <div>\n"
                        + "                                <h2>" + files.getFile_name() + "</h2>\n"
                        + "                                <p>" + files.getFile_desc() + "</p>				\n"
                        + "                            </div>\n"
                        + "                            <a href=\"" + files.getFile_url() + "\" class=\"download-link\">Download</a>\n"
                        + "                        </li>\n"
                        + "                    </ul>\n"
                        + "                </div>");
            }
        }
    }

}
