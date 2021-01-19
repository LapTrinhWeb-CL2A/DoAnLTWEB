
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
    <%@include file="../../Public/cssFile/StyleLogin.css"%>

</style>
<t:main>




    <jsp:body>
        <div class="maunen">
            <div class="inner">
                <div class="box-login">
                    <div class="head">
                        <h2 class="heading-title">Đăng nhập</h2>
                    </div>
                    <div class="container"> <p class="acc"><em>Đăng nhập với tên người dùng hay Email</em></p></div>
                    <div tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div  class="abc">
                                        <c:if test="${hasError}">
                                            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                                <strong>Login failed!</strong> ${errorMessage}
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                        </c:if>
                                    </div>
                                    <form class="cd-form" method="post" id="signin_form" novalidate="novalidate">
                                        <input type="hidden" value="" name="r">
                                        <p class="fieldset">
                                            <i class="fa fa-envelope"></i>
                                            <input  class="full-width has-padding has-border valid" id="username" name="username" type="text" placeholder="Tên đăng nhập" aria-required="true" aria-invalid="false">
                                        </p>
                                        <p class="fieldset">
                                            <i class="fa fa-key"></i>
                                            <input class="full-width has-padding has-border error" id="password" name="password" type="password" placeholder="Mật khẩu" aria-required="true" aria-invalid="true"><label id="password-error" class="error" for="password"></label>
                                        </p>

                                        <p class="fieldset">
                                            <input type="checkbox" id="remember-me" checked="">
                                            <label for="remember-me">Nhớ mật khẩu</label>
                                        </p>

                                        <p class="fieldset">
                                            <input  class="full-width" type="submit" class="dangnhap" value="Đăng nhập">
                                        </p>
                                        <p><a href="/user/forgotpass/">Quên mật khẩu?</a></p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </jsp:body>
</t:main>
