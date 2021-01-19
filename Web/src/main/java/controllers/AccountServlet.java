package controllers;


import at.favre.lib.crypto.bcrypt.BCrypt;
import beans.User;
import models.UserModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;


@WebServlet(name = "AccountServlet",urlPatterns = "/Account/*")
public class AccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String path= request.getPathInfo();


  switch (path)
        {
            case "/Register":
                postRegister(request,response);

                break;
            case "/Login":
                postLogin(request, response);
                break;
            case "/Logout":
                postLogout(request, response);
                break;
            default:
                break;
        }


    }

    private void postRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password=request.getParameter("password");
        String bcryptHashString= BCrypt.withDefaults().hashToString(12,password.toCharArray());
        String username=request.getParameter("username");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        int permission=0;
        User user = new User(-1, username, bcryptHashString, name, email, permission);
        UserModel.add(user);
        ServletUtils.redirect("/Home", request, response);
    }
    private void postLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Optional<User> user = UserModel.findByUserName(username);
        if (user.isPresent()) {
            BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), user.get().getPassword());
            if (result.verified) {
                HttpSession session = request.getSession();
                session.setAttribute("auth", true);
                session.setAttribute("authUser", user.get());

                String url = (String) session.getAttribute("retUrl");
                if (url == null) url = "/Document/nav";
                ServletUtils.redirect(url, request, response);
            } else {
                request.setAttribute("hasError", true);
                request.setAttribute("errorMessage", "Invalid password.");
                ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
            }
        } else {
            request.setAttribute("hasError", true);
            request.setAttribute("errorMessage", "Invalid login.");
            ServletUtils.forward("/views/vwAccount/Login.jsp", request, response);
        }
    }

    private void postLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("auth", false);
        session.setAttribute("authUser", new User());

        String url = request.getHeader("referer");
        if (url == null) url = "/Home";
        ServletUtils.redirect(url, request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();

        switch (path)
        {

            case "/Register":

                ServletUtils.forward("/views/vwAccount/Register.jsp",request,response);
                break;
            case "/Login":

                ServletUtils.forward("/views/vwAccount/Login.jsp",request,response);
                break;
            case "/IsAvailable":
                String username = request.getParameter("user");
                Optional<User> user = UserModel.findByUserName(username);
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("utf-8");
                out.print(!user.isPresent());
                out.flush();
                break;
            default:
                break;
        }
    }
}


