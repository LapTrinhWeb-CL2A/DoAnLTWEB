package controllers;

import beans.Category;
import beans.Course;
import beans.Document;

import models.CategoryModel;
import models.CourseModel;
import models.DocumentModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "CourseServlet",urlPatterns = "/Course/*")
public class CourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();

        switch (path)
        {
            case "/Up":
                upCourse(request,response);
                break;
            /*case "/Delete":
                deleteCategory(request, response);
                break;
            case "/Update":
                updateCategory(request, response);
                break;
            default:
                break;*/
        }

    }

    private void upCourse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name;
        name = request.getParameter("search");
        List<Document> List= DocumentModel.getAll();
        request.setAttribute("documents",List);
        ServletUtils.forward("/views/", request, response);
    }
    /*private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        DocumentModel.delete(id);
        ServletUtils.redirect("/Document", request, response);
    }

    private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("CatID"));
        String name = request.getParameter("CatName");
        Category c = new Category(id, name);
        DocumentModel.update(c);
        ServletUtils.redirect("/Document", request, response);
    }*/

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();
        if(path==null||path.equals("/"))
        {
            path="/Index";
        }
        switch (path)
        {

            case "/Index":
                int id = Integer.parseInt(request.getParameter("id"));

                int a=(id-1)*5;
                int indexPage=id;
                String s = null;
                s=String.valueOf(a);

                if(s==null)
                {
                    s="1";
                }

                List<Course> List= CourseModel.getAll4(s);
                List<Course> ListPage= CourseModel.getAll();
                int pageNumber=ListPage.size()/5;
                if(ListPage.size()%5!=0)
                {
                    pageNumber++;
                }
                request.setAttribute("course",List);
                request.setAttribute("pageNumber",pageNumber);
                request.setAttribute("indexPage",indexPage);
                ServletUtils.forward("/views/Course/Index.jsp",request,response);
                break;


            case"/Xem":
                String xem=request.getParameter("id");
                List<Course> List2= CourseModel.getAll2(xem);
                request.setAttribute("detail",List2);
                ServletUtils.forward("/views/Course/Xemchitiet.jsp", request, response);
                break;
            case"phantrang":

                break;
        }
    }
}
