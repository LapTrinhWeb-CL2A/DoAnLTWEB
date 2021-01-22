package controllers;


import beans.Course;
import beans.Document;
import models.CategoryModel;
import models.CourseModel;
import models.DocumentModel;
import org.sql2o.Query;
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
        String path= request.getPathInfo();

        switch (path)
        {
            case "/About":

               /* String name=request.getParameter("index");
                if(name==null)
                {
                    name="1";
                }
                int i = Integer.parseInt(name)*2;
                String s = String.valueOf(i);
                List<Document> List1= DocumentModel.getAll2(s);
                request.setAttribute("documents",List1);*/
                List<Document> List= DocumentModel.getAll();
                request.setAttribute("documents",List);
                ServletUtils.forward("/views/vwHome/About.jsp",request,response);
                break;

            default:
                break;
        }
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
                /*int index=1;*/

                /*String s = String.valueOf(index);*/
                /*List<Document> List1= DocumentModel.getAll2(s);*/

                List<Course> List2= CourseModel.getAll();
                /*int pageNumber=List2.size()/3;*/
                /*request.setAttribute("pageNumber",pageNumber);*/
                /*request.setAttribute("course",List2);
                ServletUtils.forward("/views/vwHome/About.jsp",request,response);
                break;*/
                /*List<Document> List2= DocumentModel.getAll();
                int pageNumber=List2.size()/3;
                request.setAttribute("pageNumber",pageNumber);
                ServletUtils.forward("/views/vwHome/About.jsp",request,response);*/

            default:
                break;
        }
    }
}
