
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
    <%@include file="../../Public/cssFile/test.css"%>
</style>
<jsp:useBean id="documents" scope="request" type="java.util.List<beans.Document>"/>
<t:main>
    <jsp:body>
      <div class="container">
          <h4>

              <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Document/Add" role="button">
                  <i class="fa fa-plus" aria-hidden="true"></i>
                  Add Category
              </a>
          </h4>

      </div>
        <div class="container">
            <ul class="list_hot_post">
            <c:forEach var="c" items="${documents}">
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - SHORT ANSWER">
                            <img title="Sharpen your IELTS Listening Skill - SHORT ANSWER"
                                 alt="Sharpen your IELTS Listening Skill - SHORT ANSWER"
                                 src="../../Public/imgs/tailieu/${c.catName}">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - SHORT ANSWER">${c.catDemo} </a></h3>
                    <td class="text-right">
                        <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Document/Edit?id=${c.catID}" role="button">
                            <i class="fa fa-pencil" aria-hidden="true"></i>
                        </a>
                    </td>
                </li>
            </c:forEach>
            </ul>
        </div>


    </jsp:body>
</t:main>
