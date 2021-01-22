
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<t:main>
    <jsp:body>
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
            </li>
        </c:forEach>

        <div>alo</div>

            <nav aria-label="...">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                        <%--<li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                    <c:forEach begin="1" end="${pageNumber}" var="i">
                        <li class="page-item"><a class="page-link" type="submit" href= "${pageContext.request.contextPath}/Test?id=${i}">${i}</a></li>
                        <%--href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}"--%>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>

        <%--<nav aria-label="...">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                </li>
                &lt;%&ndash;<li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active" aria-current="page">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>&ndash;%&gt;
                <c:forEach begin="1" end="${pageNumber}" var="i">
                    <li class="page-item"><a class="page-link" method="post" href="${pageContext.request.contextPath}/Home/About?index=${i}">${i}</a></li>
                    &lt;%&ndash;href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}"&ndash;%&gt;
                </c:forEach>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>--%>
    </jsp:body>
</t:main>
