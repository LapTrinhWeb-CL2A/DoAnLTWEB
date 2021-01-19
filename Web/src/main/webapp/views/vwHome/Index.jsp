
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<jsp:useBean id="documents" scope="request" type="java.util.List<beans.Document>"/>--%>
<style>
    <%@include file="../../Public/cssFile/test.css"%>
    <%@include file="../../Public/cssFile/StyleMenu.css"%>
</style>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>This is a WebPage using Bootstrap 4</title>

    <!-- Import Boostrap css, js, font awesome here -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">

    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>




</head>

<body>
<!-- Navigation -->
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
                <a href="${pageContext.request.contextPath}/Home/About">Ðăng ký</a> |
                <a href="">Ðăng nhập</a> |
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
                                <li><a href="#" class="badge badge-light">Light</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Light</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Light</a></li>
                                <li><div class="gach"></div></li>
                                <li><a href="#" class="badge badge-light">Light</a></li>
                                <li><div class="gach"></div></li>
                                <li>
                                    <div class="dropdown show">
                                        <a class="btn btn-secondary dropdown-toggle text-dark " href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Dropdown link
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
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
<section id="idtopcontent">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="video-container">
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/XybpMjI_x2s"
                            frameborder="0" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div id="slides" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li data-target="#slides" data-slide-to="0" class="active"></li>
                        <li data-target="#slides" data-slide-to="1"></li>
                        <li data-target="#slides" data-slide-to="2"></li>
                        <li data-target="#slides" data-slide-to="3"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../../Public/imgs/Cara/cara1.jpg">
                            <div class="carousel-caption">

                            </div>
                        </div>

                        <div class="carousel-item">
                            <img src="../../Public/imgs/Cara/cara2.jpg">
                        </div>
                        <div class="carousel-item">
                            <img src="../../Public/imgs/Cara/cara3.jpg">
                        </div>
                        <div class="carousel-item">
                            <img src="../../Public/imgs/Cara/cara4.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</section>





<section id="idachievement">
    <div class="container">
        <div class="card-deck mb-3 text-center">
            <div class="card mb-3 shadow-sm">

            </div>
            <div class="card mb-3 shadow-sm">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Enterprise</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title">$2 <small class="text-muted">/ mo</small></h1>
                    <ul class="list-unstyled mb-5 mt-4">
                        <li>30 users included</li>
                        <li>15 GB of storage</li>
                        <li>Phone and email support</li>
                        <li>Help center access</li>
                    </ul>
                    <button type="button" class="btn btn-lg btn-block btn-primary">Contact us</button>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="idstudy">
    <div class="container">
        <div class="col-study-step wow animated fadeIn animated" data-wow-delay="0,1s">
            <div class="heading blue-l">
                <h3><a href=""><b>LUYỆN THI IELTS LISTENING ONLINE</b></a></h3>
                <ul class="link-seo">
                    <li><a href="#"
                           title="Thang điểm IELTS">Thang điểm IELTS</a> |</li>
                    <li><a href="#"
                           title="Học IELTS ở đâu?">Học IELTS ở đâu?</a> |</li>
                </ul>
            </div>

        </div>
        <div class="bg-blue col span_1_of_4">
            <ul class="menu-step">
                <h2 class="txt-blue">Chọn mục tiêu</h2>
                <li><a href="#" title="Listening 4.0 - 5.0"><i
                        class="fa fa-chevron-circle-right"></i> Listening 4.0 - 5.0</a></li>
                <li><a href="#" title="Listening 5.0 - 6.5"><i
                        class="fa fa-chevron-circle-right"></i> Listening 5.0 - 6.5</a></li>
                <li><a href="#" title="Listening 6.5 - 8.0"><i
                        class="fa fa-chevron-circle-right"></i> Listening 6.5 - 8.0</a></li>
                <li><a href="#" title="Bài luyện thi"><i class="fa fa-chevron-circle-right"></i>
                    Bài luyện thi</a></li>
            </ul>
        </div>
        <div class="col span_3_of_4">
            <ul class="list_hot_post">
                <%--<li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - FLOW CHART/ DIAGRAM COMPLETION">
                            <img title="Sharpen your IELTS Listening Skill - FLOW CHART/ DIAGRAM COMPLETION"
                                 alt="Sharpen your IELTS Listening Skill - FLOW CHART/ DIAGRAM COMPLETION"
                                 src="../../Public/imgs/tailieu/pic1.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - FLOW CHART/ DIAGRAM COMPLETION">Sharpen your

                    </a></h3>
                </li>--%>
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
<%--                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - MATCHING / CLASSIFYING ">
                            <img title="Sharpen your IELTS Listening Skill - MATCHING / CLASSIFYING "
                                 alt="Sharpen your IELTS Listening Skill - MATCHING / CLASSIFYING "
                                 src="../../Public/imgs/tailieu/pic3.jpg">>
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - MATCHING / CLASSIFYING ">Sharpen your
                    </a></h3>
                </li>
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - SENTENCE/ SUMMARY COMPLETION">
                            <img title="Sharpen your IELTS Listening Skill - SENTENCE/ SUMMARY COMPLETION"
                                 alt="Sharpen your IELTS Listening Skill - SENTENCE/ SUMMARY COMPLETION"
                                 src="http://static.ielts-fighter.com/uploads/2020/06/08/picture/b2b9e711acb83b70a2793fe2ddfdd6d0_sharpen-your-ielts-listening-skill-setence-summary-completion.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - SENTENCE/ SUMMARY COMPLETION">Sharpen your
                    </a></h3>
                </li>
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - NOTE COMPLETION">
                            <img title="Sharpen your IELTS Listening Skill - NOTE COMPLETION"
                                 alt="Sharpen your IELTS Listening Skill - NOTE COMPLETION"
                                 src="http://static.ielts-fighter.com/uploads/2020/06/06/picture/58acadbf36c93b469a22938b5aebd24f_sharpen-your-ielts-listening-note-completion.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - NOTE COMPLETION">Sharpen your
                    </a></h3>
                </li>
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - MULTIPLE CHOICE">
                            <img title="Sharpen your IELTS Listening Skill - MULTIPLE CHOICE"
                                 alt="Sharpen your IELTS Listening Skill - MULTIPLE CHOICE"
                                 src="http://static.ielts-fighter.com/uploads/2020/06/03/picture/810da7834da24ee4a80d12cf2fd95250_sharpen-your-ielts-listening-skill-multiple-choice.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - MULTIPLE CHOICE">Sharpen your
                    </a></h3>
                </li>
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling">
                            <img title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling"
                                 alt="Sharpen your IELTS Listening Skill - Maps/Plan Labelling"
                                 src="http://static.ielts-fighter.com/uploads/2020/06/03/picture/7d5283fcde016adf168903730d089b05_sharpen-your-ielts-listening-skill-map-labellings.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling">Sharpen your
                    </a></h3>
                </li>
                <li class="top_post_item col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <div class="frame">
                        <a href="#"
                           title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling">
                            <img title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling"
                                 alt="Sharpen your IELTS Listening Skill - Maps/Plan Labelling"
                                 src="http://static.ielts-fighter.com/uploads/2020/06/03/picture/7d5283fcde016adf168903730d089b05_sharpen-your-ielts-listening-skill-map-labellings.jpg">
                        </a>
                    </div>
                    <h3><a class="title title_bold"
                           href="#"
                           title="Sharpen your IELTS Listening Skill - Maps/Plan Labelling">Sharpen your
                    </a></h3>
                </li>--%>

            </ul>
        </div>

    </div>
</section>
<section id="idbotrokt">
    <div class="container">

        <h2><a href="/supportskill">BỔ TRỢ KIẾN THỨC</a></h2>
        <ul class="col-botro col-md-4 col-sm-12 col-xs-12">
            <h3><span><a class="hover-black" href="#" title="Tài liệu học IELTS">Tài liệu
                            học IELTS</a></span></h3>
            <li><a href="#"
                   title="IELTS Advantage Speaking – Listening Skills (PDF + AUDIO) ">IELTS Advantage Speaking –
                Listening Skills (PDF + AUDIO) </a></li>
            <li><a href="#"
                   title="Download Listen Carefully PDF + Audio – sách luyện nghe cho người mới bắt đầu">Download
                Listen Carefully PDF + Audio – sách luyện nghe cho người mới bắt đầu</a></li>
            <li><a href="#"
                   title="Download Get Ready for IELTS Listening Pre intermediate A2+ (pdf + audio) ">Download Get
                Ready for IELTS Listening Pre intermediate A2+ (pdf + audio) </a></li>
            <li><a href="#"
                   title="Intensive IELTS Speaking - Sách tự học IELTS Speaking hữu ích">Intensive IELTS Speaking -
                Sách tự học IELTS Speaking hữu ích</a></li>
            <li><a href="#"
                   title="Academic Writing Practice for IELTS by Sam McCarter - Sách tự học Writing nâng cao">Academic
                Writing Practice for IELTS by Sam McCarter - Sách tự học Writing nâng cao</a></li>
        </ul>
        <ul class="col-botro col-md-4 col-sm-12 col-xs-12">
            <h3><span><a class="hover-black" href="/supportskill/index?t=spgrammar" title="Ngữ pháp IELTS">Ngữ pháp
                            IELTS</a></span></h3>
            <li><a href="#"
                   title="Bài tập thực hành ngữ pháp tiếng Anh IELTS cơ bản">Bài tập thực hành ngữ pháp tiếng Anh
                IELTS cơ bản</a></li>
            <li><a href="#"
                   title="7 quy tắc ngữ pháp cần chú ý để đạt điểm IELTS cao hơn">7 quy tắc ngữ pháp cần chú ý để
                đạt điểm IELTS cao hơn</a></li>
            <li><a href="#"
                   title="9 website tự học và rèn luyện bài tập ngữ pháp IELTS cực hay">9 website tự học và rèn
                luyện bài tập ngữ pháp IELTS cực hay</a></li>
            <li><a href="#"
                   title="15 Cấu trúc ngữ pháp giúp bạn ghi điểm trong IELTS ">15 Cấu trúc ngữ pháp giúp bạn ghi
                điểm trong IELTS </a></li>
            <li><a href="#"
                   title="CÁC MỆNH ĐỀ TRONG CÂU - Ngữ pháp IELTS">CÁC MỆNH ĐỀ TRONG CÂU - Ngữ pháp IELTS</a></li>
        </ul>

        <ul class="col-botro col-md-4 col-sm-12 col-xs-12">
            <h3><span><a class="hover-black" href="#" title="Từ vựng IELTS">Từ vựng
                            IELTS</a></span></h3>
            <li><a href="#"
                   title="Tổng hợp Phrasal Verb theo chủ đề thông dụng hay nhất">Tổng hợp Phrasal Verb theo chủ đề
                thông dụng hay nhất</a></li>
            <li><a href="#"
                   title="Collocations và Synonyms quan trọng topic Education">Collocations và Synonyms quan trọng
                topic Education</a></li>
            <li><a href="#"
                   title="Top 8 từ vựng IELTS topic PERSONALITY thú vị">Top 8 từ vựng IELTS topic PERSONALITY thú
                vị</a></li>
            <li><a href="#"
                   title="IELTS Speaking Vocabulary theo 20 chủ đề phổ biến nhất">IELTS Speaking Vocabulary theo 20
                chủ đề phổ biến nhất</a></li>
            <li><a href="#"
                   title="Bộ từ vựng nâng cấp giúp bạn nâng band điểm IELTS Speaking &amp; Writing">Bộ từ vựng nâng
                cấp giúp bạn nâng band điểm IELTS Speaking &amp; Writing</a></li>
        </ul>

    </div>
</section>
<section id="idformbt">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h4 class="ielts-form">Đăng ký nhận tư vấn</h4>

                <div class="row">
                    <!-- form đăng nhập -->
                    <input type="hidden" name="current_url" id="current_url" value="#">
                    <p class="col-lg-6 col-md-12 field"><input type="text" class="tex_counsel" name="fullname"
                                                               id="counsel_fullname" value="" size="40" placeholder="Họ tên:"></p>

                    <p class="col-lg-6 col-md-12 field"><input type="text" class="tex_counsel" name="phone"
                                                               id="counsel_phone" value="" size="40" placeholder="Số điện thoại:"></p>
                    <p class="col-lg-6 col-md-12 field">
                        <select name="address" id="counsel_address" style="width: 100%;padding: 13px 10px">
                            <option disabled="">Cơ sở Hà Nội</option>
                            <option value="254 Hoàng Văn Thái, P. Khương Trung, Q. Thanh Xuân [131]">254 Hoàng Văn
                                Thái, P. Khương Trung, Q. Thanh Xuân</option>
                            <option value="44 Trần Quốc Hoàn, Q. Cầu Giấy [80]">44 Trần Quốc Hoàn, Q. Cầu Giấy
                            </option>
                            <option value="456 Xã Đàn, Đống Đa [137]">456 Xã Đàn, Đống Đa</option>
                            <option value="388 Nguyễn Văn Cừ, Long Biên [82]">388 Nguyễn Văn Cừ, Long Biên</option>
                            <option value="22 Nguyễn Hoàng (gần bx Mỹ Đình) [79]">22 Nguyễn Hoàng (gần bx Mỹ Đình)
                            </option>
                            <option value="737 Quang Trung, Hà Đông [134]">737 Quang Trung, Hà Đông</option>
                            <option value="18 LK6C Nguyễn Văn Lộc, Hà Đông [72]">18 LK6C Nguyễn Văn Lộc, Hà Đông
                            </option>\
                            <option disabled="">Cơ sở Hồ Chí Minh</option>
                            <option value="350 đường 3/2 - Phường 12, Quận 10 [54]">350 đường 3/2 - Phường 12, Quận
                                10</option>
                            <option value="Số 94, Đường Cộng Hòa, Quận Tân Bình [55]">Số 94, Đường Cộng Hòa, Quận
                                Tân Bình</option>
                            <option value="Số 85 Điện Biên Phủ, Quận Bình Thạnh [56]">Số 85 Điện Biên Phủ, Quận Bình
                                Thạnh</option>
                            <option value="L39.6, khu Cityland, 18 Phan Văn Trị, Gò Vấp [57]">L39.6, khu Cityland,
                                18 Phan Văn Trị, Gò Vấp</option>
                            <option value="A11 Bà Hom, Phường 13, Quận 6, HCM [58]">A11 Bà Hom, Phường 13, Quận 6,
                                HCM</option>
                            <option value="66B Hoàng Diệu 2 Thủ Đức, HCM [53]">66B Hoàng Diệu 2 Thủ Đức, HCM
                            </option>
                            <option value="926B Tạ Quang Bửu, Quận 8 [135]">926B Tạ Quang Bửu, Quận 8, HCM</option>
                            <option value="386 Nguyễn Thị Minh Khai, HCM [136]">386 Nguyễn Thị Minh Khai, Phường 5,
                                Quận 3, HCM</option>
                            <option value="76 Trường Chinh, P.Tân Hưng Thuận, Q.12 [139]">76 Trường Chinh, P.Tân
                                Hưng Thuận, Q.12</option>
                            <option disabled="">Cơ sở Đà Nẵng</option>
                            <option value="233 Nguyễn Văn Linh, Thanh Khê [103]">233 Nguyễn Văn Linh, Thanh Khê
                            </option>
                            <option value="254 Tôn Đức Thắng, P. Hòa Minh, Q. Liên Chiểu [122]">254 Tôn Đức Thắng,
                                P. Hòa Minh, Q. Liên Chiểu</option>
                            <option disabled="">Cơ sở Hải Phòng</option>
                            <option value="428 Lạch Tray, Ngô Quyền, Hải Phòng [123]">428 Lạch Tray, Ngô Quyền, Hải
                                Phòng</option>

                        </select>
                    </p>

                    <p class="col-lg-6 col-md-12 field"><input type="email" class="tex_counsel" name="email"
                                                               id="counsel_email" value="" size="40" placeholder="Email:"></p>
                    <p class="col-lg-12 field"><input type="text" class="tex_counsel" name="counsel_content"
                                                      id="counsel_content" value="" size="40" placeholder="Bạn cần tư vấn gì:"></p>
                    <p class="col-lg-12 submit-wrap ">
                        <input type="button" value="Gửi" class="btnform btn-primary" id="send_counsel">
                        <input type="hidden" value="https://ielts-fighter.com/" name="link_source">
                        <input type="reset" value="Xóa" class="btnform btn-primary">
                    </p>

                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                <h4 class="ielts-fanpage">Fanpage</h4>

                <div class="col-fanpage">

                    <div class="fb-page fb_iframe_widget" data-href="https://www.facebook.com/ielts.fighter"
                         data-small-header="false" data-adapt-container-width="true" data-hide-cover="false"
                         data-show-facepile="true" data-show-posts="false" fb-xfbml-state="rendered"
                         fb-iframe-plugin-query="adapt_container_width=true&amp;app_id=&amp;container_width=233&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fielts.fighter&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;show_posts=false&amp;small_header=false">
                            <span style="vertical-align: bottom; width: 233px; height: 130px;"><iframe
                                    name="f334467bffb2a28" width="1000px" height="1000px"
                                    data-testid="fb:page Facebook Social Plugin" title="fb:page Facebook Social Plugin"
                                    frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no"
                                    allow="encrypted-media"
                                    src="https://www.facebook.com/v8.0/plugins/page.php?adapt_container_width=true&amp;app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df1009654bef58c%26domain%3Dielts-fighter.com%26origin%3Dhttps%253A%252F%252Fielts-fighter.com%252Ffe2f5b962bb51c%26relation%3Dparent.parent&amp;container_width=233&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fielts.fighter&amp;locale=en_US&amp;sdk=joey&amp;show_facepile=true&amp;show_posts=false&amp;small_header=false"
                                    style="border: none; visibility: visible; width: 233px; height: 130px;"
                                    class=""></iframe></span></div>
                </div>

            </div>
        </div>
    </div>
</section>
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

<div class="pnright">

    <div class="mitem yellow">
        <a title="LỊCH KHAI GIẢNG" href="https://ielts-fighter.com/tin-tuc/LICH-KHAI-GIANG_c1487845094.html">
            <div><i class="fa fa-bookmark"></i></div>
            <div>LỊCH KHAI GIẢNG</div>
        </a>
    </div>

    <div class="mitem red">
        <a title="ĐK THI THỬ IELTS MIỄN PHÍ" href="https://ielts-fighter.com/thi-thu-ielts-mien-phi-nhan-qua-nhu-y">
            <div><i class="fa fa-location-arrow"></i></div>
            <div>ĐK THI THỬ IELTS MIỄN PHÍ</div>
        </a>
    </div>

</div>
</body>

</html>