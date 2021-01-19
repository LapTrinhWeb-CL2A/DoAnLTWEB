package controllers;

import beans.Category;
import beans.Document;
import models.CategoryModel;
import models.DocumentModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet",urlPatterns = "/Home/*")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();
        if(path==null||path.equals("/"))
        {
            path="/Index";
        }
        switch (path)
        {

            case "/Index":
                List<Document> List= DocumentModel.getAll();
                request.setAttribute("documents",List);
                ServletUtils.forward("/views/vwHome/Index.jsp",request,response);
                break;
            case "/About":
                List<Document> List1= DocumentModel.getAll();
                request.setAttribute("documents",List1);
                ServletUtils.forward("/views/vwHome/About.jsp",request,response);
                break;
            default:
                break;
        }
    }
}
