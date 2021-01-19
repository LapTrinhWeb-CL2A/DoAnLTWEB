
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<style>
    <%@include file="../../Public/cssFile/StyleDangKi.css"%>

</style>
<t:main>
<jsp:attribute name="js">
   <%-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>--%>
    <script>
        $('#frmRegister').on('submit', function (e) {
            e.preventDefault();

            const username = $('#txtUsername').val();
            const signup_password = $('#signup_password').val();
            const signup_repassword = $('#signup_repassword').val();
            if (username.length === 0) {
                alert('Invalid username.');
                return;
            }
            if (signup_password !== signup_repassword) {
                alert('dit me th to con');
                return;
            }

            $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
                if (data === true) {
                    $('#frmRegister').off('submit').submit();
                } else {
                    alert('Not available.');
                }
            });
        });
        /*
                $('#txtDOB').datetimepicker({
                    format: 'd/m/Y',
                    timepicker: false,
                    mask: true,
                });*/

        $('#txtUsername').select();
    </script>
  </jsp:attribute>
    <jsp:body>
        <div class="maunen">
            <div class="inner">
                <div class="box-login">
                    <div class="head">
                        <h2 class="heading-title">Đăng ký</h2>
                    </div>
                    <div class="container"> <p class="acc"><em>Đăng nhập với tên người dùng hay Email</em></p></div>

                    <div tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-content">
                            <div class="modal-body">
                                <form class="cd-form" id="frmRegister" method="post" novalidate="novalidate">
                                    <p class="fieldset">
                                        <i class="fa fa-user"></i>
                                        <input class="full-width has-padding has-border" id="txtUsername" name="username" type="text" placeholder="Tên đăng nhập">
                                    </p>

                                    <p class="fieldset">
                                        <i class="fa fa-user"></i>
                                        <input class="full-width has-padding has-border" id="signup-name" name="name" type="text" placeholder="Họ tên">
                                    </p>

                                    <p class="fieldset">
                                        <i class="fa fa-envelope"></i>
                                        <input class="full-width has-padding has-border" id="signup-email" name="email" type="email" placeholder="Email đăng ký">
                                    </p>

                                    <p class="fieldset">
                                        <i class="fa fa-key"></i>
                                        <input class="full-width has-padding has-border" id="signup_password" name="password" type="password" placeholder="Mật khẩu">
                                    </p>

                                    <p class="fieldset">
                                        <i class="fa fa-key"></i>
                                        <input class="full-width has-padding has-border" id="signup_repassword" name="repassword" type="password" placeholder="Nhập lại mật khẩu">
                                    </p>


                                    <p class="fieldset">
                                        <input type="checkbox" id="accept-terms" name="accept">
                                        <label for="accept-terms">Tôi đồng ý với các <a href="#" style="color: blue;">Điều khoản</a> trên website</label><br>
                                        <label id="accept-error" class="error" for="accept-error"></label>
                                    </p>

                                    <p class="fieldset">
                                        <input class="btn-edit" type="submit" value="Đăng ký">
                                        <input class="btn-edit" type="reset" value="Làm lại">
                                    </p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </jsp:body>
</t:main>
