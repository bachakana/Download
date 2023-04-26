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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import Dal.AccountDal;
import Dal.UserDal;
import Model.User;
import Model.Account;

/**
 *
 * @author fifak
 */
public class signUpController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullname = req.getParameter("fullname");
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        String re_password = req.getParameter("re-password");
        String birthdate = req.getParameter("birthdate");
        String allert = "";
        if (fullname.matches("^[a-zA-Z]{3,}( {1,2}[a-zA-Z]{3,}){0,}$")) {
            if (account.matches("^[a-zA-Z0-9]{6,}$")) {
                if (!password.isEmpty() && !re_password.isEmpty()) {
                    if (password.matches("^[a-zA-Z0-9]{6,}$") && re_password.matches("^[a-zA-Z0-9]{6,}$")) {
                        if (password.equals(re_password)) {
                            try {
                                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                                Date birth = dateFormat.parse(birthdate);
                                // Get the current date
                                Date currentDate = new Date();
                                // Compare the input date to the current date
                                if (birth.before(currentDate)) {
                                    // The input date is in the past
                                    AccountDal ac_db = new AccountDal();
                                    if (!ac_db.AccountExist(account)) {
                                        UserDal userDal = new UserDal();
                                        int user_id = userDal.insert_User(fullname, birth);
                                        int result = ac_db.insert_account(account, password, user_id);
                                        if (result > 0) {
                                            resp.sendRedirect("login");
                                        }
                                        

                                    } else {
                                        allert += "Account is exist";

                                    }
                                } else {
                                    // The input date is in the future
                                    allert += "The birthdate is not suitable ";

                                }
                            } catch (ParseException ex) {
                                allert += "The birthdate is not suitable ";
                            }
                        } else {
                            allert += "The re password must be same password!!";
                        }
                    } else {
                        allert += "The password is not suitable";
                    }
                } else {
                    allert += "The account is not suitable";
                }

            } else {
                allert += "The name is not suitable";
            }
        }
        resp.getWriter().println(allert);
    }

}
