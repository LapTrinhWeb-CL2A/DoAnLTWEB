
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>jQuery Pagination plugin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="../paging/jquery.twbsPagination.js" type="text/javascript"></script>
    <style>
        <%@include file="../../Public/cssFile/StyleMenu.css"%>
        <%@include file="../../Public/cssFile/test.css"%>
        <%@include file="../../Public/cssFile/StyleKhoaHoc.css"%>
    </style>

</head>
<body>




<div>
    <!-- class"fade-in" -->
    <a href="#" class="close top" data-dismiss="alert">x</a>
    <div class="bg-top-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12">
                    <div class="top-banner">
                        <a target="_blank" title="Khai truong co sở thu 15+16 - tung bung quà tang "
                           href="#">
                            <img src="http://static.ielts-fighter.com/uploads/2020/10/02/26f7a8cc454a2acf7cc2606e58ebf023_untitled-2.gif"
                                 class="img-responsive" title="Khai truong co s? th? 15+16 - tung b?ng quà t?ng "
                                 alt="Khai truong co s? th? 15+16 - tung b?ng quà t?ng " width="100%">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<header>
    <div class="header-top">
        <div class="container">

            <div class="hotline">
                <i class="fa fa-phone fa-lg"></i>
                &nbsp;Hotline:
                <strong>0903 411 666</strong>
                &nbsp;&nbsp;|&nbsp;&nbsp;
                <i class="fa fa-envelope fa-lg"></i>
                &nbsp;Email:
                <a href="mailto:support@ielts-fighter.com"> chienbinh@ielts-fighter.com </a>  <!-- email chinh sua o day -->
            </div>
            <div class="col-register">
                <a href="${pageContext.request.contextPath}/Account/Register">Ðăng ký</a> |
                <a href="${pageContext.request.contextPath}/Account/Login">Ðăng nhập</a> |
                <a href="">Tìm kiếm</a>
            </div>



        </div>
    </div>
</header>
<div class="bghead">
    <div class="container">
        <div class="row">

            <div  class="col-md-4 col-sm-6 col-xs-6">
                <div class="logo-IELTS">
                    <img src="../../Public/imgs/logo/logo1.png" alt="Trang chủ">
                </div>
            </div>
            <div  class="col-md-8 col-sm-6 col-xs-6">
                <div class="row">
                    <nav class="navbar navbar-expand-lg navbar-light "class="a">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li><a href="${pageContext.request.contextPath}/Home/" class="badge badge-light">Trang chủ</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Khóa học</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Tài liệu</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Giới thiệu</a></li>
                                <li><div class="gach"></div></li>
                                <li>
                                    <div class="dropdown show">
                                        <a class="btn btn-secondary dropdown-toggle text-dark " href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Trang
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item" href="#">Bài viết</a>
                                            <a class="dropdown-item" href="#">Về chúng tôi</a>
                                            <a class="dropdown-item" href="#">Câu hỏi thường gặp</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>
</div>


<div>&nbsp;</div>

<div class="container">
    <h3 class ="tieude">Các Khóa học nổi bật của chúng tôi</h3>
</div>
<div class="container">
    <h5 class="noidung">Hãy lựa chọn cho mình một khóa học cần học sau đó click vào xem chi tiết</h5>
</div>



<div class="container">

    <%--  <form class="cd-form" method="post" id="signin_form" novalidate="novalidate">
              <input type="hidden" value="" name="r">
              <p class="fieldset">
                  <i class="fa fa-envelope"></i>
                  <input  class="full-width has-padding has-border valid" id="username" name="username" type="text" placeholder="Tên đăng nhập" aria-required="true" aria-invalid="false">
              </p>

              <p class="fieldset">
                  <input  class="full-width" type="submit" class="dangnhap" value="Đăng nhập">
              </p>

          </form>--%>

</div>





<div class="container">
    <div class="container-fluid padding">
        <div class="row padding">
<c:forEach var="c" items="${course}">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="../../Public/imgs/course/${c.proImage}">
                    <div class="card-body">
                        <h4 class="card-title">${c.proName}</h4>
                        <p class="card-text">${tinyDes}
                        </p>
                        <a href="${pageContext.request.contextPath}/Course/Xem?id=${c.proID}" class="btn btn-outline-secondary">Xem chi tiết</a>
                    </div>
                    <div class="flex-container" class=a>
                        <div class="flex-container1">
                            <div  class="comment"  class="left">
                                <i class="fa fa-user" aria-hidden="true"></i><span class="s1">29</span>
                            </div>
                            <div class="comment" class="alo">
                                <i class="fa fa-comment" aria-hidden="true"></i><span class="s1">53</span>
                            </div>

                        </div>
                        <div class="comment" class="right">
                            <div class="">
                                <span class="price">${c.price}₫</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</c:forEach>

        </div>
    </div>
</div>



<form class="form-inline my-2 my-lg-0" method="post">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" formaction="${pageContext.request.contextPath}/Home/About">
        <i class="fa fa-search" aria-hidden="true"></i>
        Search
    </button>
</form>

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
            <li class="page-item ${indexPage==i?"active":""}" ><a class="page-link" class href="${pageContext.request.contextPath}/Course/Index?id=${i}">${i}</a></li>
            <%--href="${pageContext.request.contextPath}/Admin/Category/Edit?id=${c.catID}"--%>
        </c:forEach>
        <li class="page-item">
            <a class="page-link" href="#">Next</a>
        </li>
    </ul>
</nav>









<footer>
    <section id="footer-top">
        <div class="container">
            <div class="row">
                <div class="bg-footer">
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <ul class="quick-links">
                            <li>
                                <h3><span>Hà Nội</span></h3>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 1:</div>
                                <p>254 Hoàng Văn Thái, P. Khương Trung</p>
                                <p>Q. Thanh Xuân, HN</p>

                            </li>
                            <li>
                                <div></div>
                                <p>02462 956 422</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 2:</div>
                                <p>44 Trần Quốc Hoàn, Q. Cầu Giấy, Hà Nội</p>
                                <p>02466 862 804</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 3:</div>
                                <p>456 Xã Đàn, Đống Đa, Hà Nội</p>
                                <p>02466868815</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 4:</div>
                                <p>388 Nguyễn Văn Cừ, Long Biên</p>
                                <p>02466619628</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 5:</div>
                                <p>18 LK6C Nguyễn Văn Lộc - Hà Đông, HN </p>
                                <p>02466619625</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 6:</div>
                                <p>22 Nguyễn Hoàng (gần bx Mỹ Đình), HN</p>
                                <p>02466593161</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 7:</div>
                                <p>737 Quang Trung, Hà Đông, HN</p>
                                <p>024 229 10811</p>
                            </li>

                            <li>
                                <div><i class="fa fa-map-marker"></i>Hotline</div>
                                0903 411 666
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Email</div>
                                <a href="mailto:chienbinh@ielts-fighter.com">chienbinh@ielts-fighter.com</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <ul class="quick-links">
                            <li>
                                <h3><span>tp.hcm</span></h3>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 8:</div>
                                <p>350 đường 3/2 - Phường 12, Quận 10, TP Hồ Chí Minh (NN Hoa Nguyễn)</p>
                                <p>SĐT: 02866575781</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 9:</div>
                                <p>Số 94, Đường Cộng Hòa, Quận Tân Bình, TP Hồ Chí Minh</p>
                                <p>SĐT: 02866538585, Hotline:0903 411 666</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 10:</div>
                                <p>Số 85 Điện Biên Phủ, Quận Bình Thạnh, HCM</p>
                                <p>SĐT: 028 6660 4006</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 11:</div>
                                <p>L39.6, khu Cityland, 18 Phan Văn Trị, Gò Vấp, HCM</p>
                                <p>SĐT: 028 22295577</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 12:</div>
                                <p>A11 Bà Hom, Phường 13, Quận 6, HCM</p>
                                <p>SĐT: 028 2244 2323</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 13:</div>
                                <p>66B Hoàng Diệu 2 Thủ Đức, HCM</p>
                                <p>SĐT: 02822 423 344</p>
                            </li>

                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 14:</div>
                                <p>129 Nguyễn Thị Thập, quận 7, TPHCM </p>
                                <p>SĐT: 028 22492233</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 15:</div>
                                <p>926B Tạ Quang Bửu, Phường 5, Quận 8</p>
                                <p>SĐT: 028 22430022</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 16:</div>
                                <p>386 Nguyễn Thị Minh Khai, Phường 5, Quận 3, TPHCM </p>
                                <p>SĐT: 028 22430011</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 17:</div>
                                <p>76 Trường Chinh, P.Tân Hưng Thuận, Quận 12, TPHCM</p>
                                <p>02822421144</p>
                            </li>

                            <li>
                                <h3><span style="position: relative;">Đà Nẵng</span></h3>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 18:</div>
                                <p>233 Nguyễn Văn Linh, Thanh Khê, Đà Nẵng</p>
                                <p>SĐT: 0236 357 2009</p>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 19:</div>
                                <p>254 Tôn Đức Thắng, P. Hòa Minh, Q. Liên Chiểu, Đà Nẵng </p>
                                <p>SĐT: 0236 629 57 57</p>
                            </li>
                            <li>
                                <h3><span style="position: relative;">Hải Phòng</span></h3>
                            </li>
                            <li>
                                <div><i class="fa fa-map-marker"></i>Cơ sở 20:</div>
                                <p>428 Lạch Tray, Ngô Quyền, Hải Phòng </p>
                                <p>SĐT: 0225 629 1888</p>
                            </li>

                        </ul>
                    </div>

                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="share">
                            <h2>Share online</h2>
                            <ul class="social">
                                <li><a rel="nofollow" class="tooltip-top" title="" href=""
                                       data-original-title="Share Facebook"><i class="fa fa-facebook" ></i></a></li>
                                <li ><a rel="nofollow" class="tooltip-top" title="" href=""
                                        data-original-title="Share Google +"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li ><a rel="nofollow" class="tooltip-top" title="" href=""
                                        data-original-title="Share Twitter" id=a1><i class="fa fa-twitter"></i></a></li>
                                <li><a rel="nofollow" class="tooltip-top" title="" href=""
                                       data-original-title="Share Instagram"><i class="fa fa-instagram"></i></a>
                                </li>
                            </ul>
                        </div>

                        <div class="c-bg-email">
                            <div class="box_email">
                                <h2>Đăng ký nhận bản tin</h2>

                                <form id="register_news" class="not_submited" novalidate="novalidate">
                                    <input type="text" id="register_email" class="input-email" name="register_email"
                                           value="" placeholder="--- Nhập địa chỉ Email ---">
                                    <input type="button" id="btn-register-news" class="btn-email" value="SIGN UP">
                                </form>
                            </div>
                            <!--End-search-->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="content">Trực thuộc công ty cổ phần giáo dục và đào tạo Imap Việt Nam
                </p>
            </div>
        </div>
    </section>
</footer>





</body>
</html>
