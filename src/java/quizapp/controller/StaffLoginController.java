package quizapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import quizapp.bean.Staff;
import quizapp.bean.modulecount;
import quizapp.model.FetchModules;
import quizapp.model.StaffMember;
import quizapp.bean.UserLogin;
import quizapp.model.UserMember;

@WebServlet(name = "StaffLogin", urlPatterns = {"/StaffLogin"})
public class StaffLoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("stafflogin.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String sss = request.getParameter("staffID");
        int staffID = Integer.parseInt(sss);
        UserMember um = new StaffMember();
        HttpSession session = request.getSession();

        if (um.isValid(staffID)) {
            UserLogin userLogin = new Staff(staffID);
            userLogin.setLoggedIn();
            session.setAttribute("whoLog", userLogin);
            session.setAttribute("UserMember", um);

            modulecount modfinder = new modulecount();
            FetchModules fetchmod = new FetchModules();
            modfinder.setSize(fetchmod.returnModuleCount());
            for (int i = 0; i < modfinder.getSize(); i++) {
                modfinder.setModule(fetchmod.returnModules(i), i);
            }
            session.setAttribute("modulecount", modfinder);
            RequestDispatcher rd = request.getRequestDispatcher("login-success.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login-error.jsp");
            rd.forward(request, response);
        }
    }

}
