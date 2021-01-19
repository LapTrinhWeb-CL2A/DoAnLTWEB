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
import java.util.Optional;

@WebServlet(name = "DocumentServlet",urlPatterns = "/Document/*")
public class DocumentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path= request.getPathInfo();

        switch (path)
        {
            case "/Add":
                addDocument(request,response);

                break;
            case "/Delete":
                deleteCategory(request, response);
                break;
            case "/Update":
                updateCategory(request, response);
                break;
            default:
                break;
        }

    }

    private void addDocument(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("CatName");
        Document  d = new Document(-1, name,"chap tt");
        DocumentModel.add(d);
        ServletUtils.forward("/views/vwDocument/Add.jsp", request, response);
    }
    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
                ServletUtils.forward("/views/vwDocument/Index.jsp",request,response);
                break;
            case "/Add":
                List<Document> List1= DocumentModel.getAll();

                request.setAttribute("documents",List1);
                ServletUtils.forward("/views/vwDocument/Add.jsp",request,response);
                break;
            case "/Edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Document> c = DocumentModel.findById(id);
                if (c.isPresent()) {
                    request.setAttribute("category", c.get());
                    ServletUtils.forward("/views/vwDocument/Edit.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Document", request, response);
                }
                break;
            case"/nav":
                ServletUtils.forward("/views/partials/nav.jsp", request, response);
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
