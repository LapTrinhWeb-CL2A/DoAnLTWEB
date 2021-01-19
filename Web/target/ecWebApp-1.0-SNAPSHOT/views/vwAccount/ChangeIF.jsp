<%--

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<style>
    <%@include file="../../Public/cssFile/StyleDangKi.css"%>

</style>
<t:main>
    <jsp:body>

        <main id="layout-main" class="group">
            <div id="layout-content" class="group">
                <div id="content" class="group">
                    <div class="zone zone-content">
                        <div class="container">
                            <div class="user--profile">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="user--profile-left">
                                            <ul class="user--profile--list-function">
                                                <li class="active"><a href="/user/information">Thông tin &amp; liên hệ </a>
                                                </li>
                                                <li><a href="/user/information/changeusername">Đổi tên người dùng </a></li>
                                                <li><a href="/user/information/changepassword">Đổi mật khẩu</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-9 user--profile-right-container">
                                        <div class="user--profile-right editing">
                                            <div class="user--profile-group">
                                                <h2 class="user--profile-title-group">Thông tin</h2>
                                                <form class="" method="post" id="frm-info" novalidate="novalidate">
                                                    <div class="row">
                                                        <div class="col-md-2 col-xs-12">
                                                            <div class="row">
                                                                <div id="ImgPreview" class="no-img"></div>
                                                            </div>
                                                            <div class="row avatar-selector">
                                                                <div class="form-group UploadAvatar">
                                                                    <label for="Avatar" id="messageValidateImage"
                                                                           style="display: block; ">Ảnh đại diện của bạn</label>
                                                                    <input name="ImgFile" id="Avatar" class="file"
                                                                           type="file"
                                                                           accept="image/png,image/x-png,image/gif,image/jpeg,image/jpg">
                                                                    <div class="input-group">
                                                                <span class="input-group-btn">
                                                                    <button class="browse btn btn-primary input-sm"
                                                                            type="button" id="Upload-Ava"
                                                                            style="display: block;">Chọn ảnh</button>
                                                                </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-9 col-xs-12">
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="FamilyName" class="required"
                                                                               aria-required="true">Họ và tên</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-name" class="span-display"
                                                                      style="display: none;"></span>
                                                                        <input name="FamilyName" type="text"
                                                                               class="form-control is-required has-error"
                                                                               id="FamilyName" autocomplete="family-name"
                                                                               style="display: block;"
                                                                               aria-required="true"><label
                                                                            id="FamilyName-error" class="error"
                                                                            for="FamilyName" style="display: none;"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label >Ngày sinh</label>
                                                                    </div>
                                                                </div>
                                                                <!-- readonly=""
                                                                            id="BirthYear"-->
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <input name="BirthYear" type="text"
                                                                               class="form-control hasDatepicker"
                                                                               placeholder="yyyy-mm-dd"
                                                                               style="display: block;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label class="required"
                                                                               aria-required="true">Số điện thoại</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-phone" class="span-display"
                                                                      style="display: none;"></span>
                                                                        <input name="PhoneNumber" type="text"
                                                                               class="form-control is-required has-error"
                                                                               id="PhoneNumber" placeholder="Số điện thoại"
                                                                               autocomplete="tel-national"
                                                                               style="display: block;"
                                                                               aria-required="true"><label
                                                                            id="PhoneNumber-error" class="error"
                                                                            for="PhoneNumber"
                                                                            style="display: none;"></label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="EmailAddress" class="required"
                                                                               aria-required="true">Địa chỉ Email</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <input name="EmailAddress" type="email"
                                                                               class="form-control" id="EmailAddress"
                                                                               placeholder="Địa chỉ Email" autocomplete="email"
                                                                               style="display: block;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label for="CityName">Địa chỉ</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-cityName" class="span-display"
                                                                      style="display: none;"></span>
                                                                        <textarea name="CityName" type="text"
                                                                                  class="form-control" id="CityName"
                                                                                  placeholder="Tỉnh/Thành phố bạn đang sống"
                                                                                  style="display: block;"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Facebook</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-facebook" class="span-display"
                                                                      style="display: none;" title=""></span>
                                                                        <input type="text" name="Facebook"
                                                                               class="form-control" id="facebook"
                                                                               placeholder="Đường dẫn tới trang cá nhân của bạn"
                                                                               style="display: block;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>LinkedIn</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-linkedIn" class="span-display"
                                                                      style="display: none;" title=""></span>
                                                                        <input type="text" name="LinkedIn"
                                                                               class="form-control" id="linkedIn"
                                                                               placeholder="Đường dẫn tới trang cá nhân của bạn"
                                                                               style="display: block;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Twitter</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                <span id="span-twitter" class="span-display"
                                                                      style="display: none;" title=""></span>
                                                                        <input type="text" name="Twitter"
                                                                               class="form-control" id="twitter"
                                                                               placeholder="Đường dẫn tới trang cá nhân của bạn"
                                                                               style="display: block;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Mô tả bản thân</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <p id="span-summary" style="display: none;"></p>
                                                                        <textarea rows="5" name="Summary" type="text"
                                                                                  class="form-control" id="summary"
                                                                                  style="display: block;"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-4 col-xs-12">
                                                                    <div class="form-group">
                                                                        <label>Thành tích</label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-9 col-sm-8 col-xs-12">
                                                                    <div class="form-group">
                                                                        <ul id="span-achievement" style="display: none;">
                                                                        </ul>

                                                                        <textarea rows="5" name="Achievement" type="text"
                                                                                  class="form-control" id="achievement"
                                                                                  style="display: block;"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="form-group pull-right">
                                                                    <button
                                                                            class="btn btn-sm pull-right btn-save save-info-button disabled"
                                                                            type="button" id="btnSaveInfo"
                                                                            style="height: 35px; width: 104px; border-radius: 3px; line-height: inherit; display: block;">Lưu</button>
                                                                    <button class="btn btn-sm pull-right btn-cancel "
                                                                            type="button" id="btnCancelInfo"
                                                                            style="height: 35px; width: 104px; border-radius: 3px; margin-right: 18px; line-height: inherit; display: block;">Huỷ</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </jsp:body>
</t:main>
--%>
