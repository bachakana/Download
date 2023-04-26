/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Dal.DownloadDal;
import Dal.FilesDal;

/**
 *
 * @author fifak
 */
public class DownloadController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Model.Account account = (Model.Account) req.getSession().getAttribute("account");
            if (account == null) {
                req.getRequestDispatcher("view/login.jsp").forward(req, resp);
            } else {
                DownloadDal downloadDal = new DownloadDal();
                FilesDal filesDal = new FilesDal();
                String id_file = req.getParameter("id");
                int downloadtimeleft = downloadDal.DownloadTimeLeftInCurrentDay(account.getUser().getUser_id());
                if (downloadtimeleft > 0) {
                    String url = filesDal.getFileLinkDownloadWithId(id_file);
                    downloadDal.InsertDownload(id_file, account.getUser().getUser_id());
                    filesDal.updateFiledownloadtime(id_file);
                    resp.getWriter().print(url);
                }else{
                    resp.getWriter().print("limited");
                }
            }
        } catch (Exception e) {
            req.getRequestDispatcher("view/login.jsp").forward(req, resp);
        }
    }

}
