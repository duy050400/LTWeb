<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="./header/mainHeader.jsp" flush="true" />

<!-- / header section -->

<!-- Start slider -->
<jsp:include page="./banner-slider/slider.jsp" flush="true" />
<section>
	<br>
	<br>
	<div style="width: 70%; margin-left: 15%;">
		<h2>
			<strong>My Profile</strong>
			
		</h2>
		<br>
		<br>
		<form action="${pageContext.request.contextPath}/view/client/profile"
			method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="input-1">Họ tên</label> <input type="text"
					class="form-control" id="input-2" placeholder="Họ tên"
					value="${user.name}" name="user-name">
			</div>
			<div class="form-group">
				<label for="input-2">Email</label> <input type="text"
					class="form-control" id="input-3" placeholder="Địa chỉ Email"
					value="${user.email}" name="user-email">
			</div>
			<div class="form-group">
				<label for="input-3">Số điện thoại</label> <input type="text"
					class="form-control" id="input-4" placeholder="Số điện thoại"
					value="${user.phone}" name="user-phone">
			</div>
			
			<div class="form-group">
				<label for="input-4">Mật khẩu</label> <input type="password"
					class="form-control" id="myinput" placeholder="Mật khẩu"
					value="${user.password}" name="user-password"> <input
					type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
				<script>
					function myFunction1() {
						var x = document.getElementById("myinput");
						if (x.type === "password") {
							x.type = "text";
						} else {
							x.type = "password";
						}
					}
				</script>
			</div>
			<div class="form-group">
				
				<label for="input-1">Public Key</label> 
				<p>${user.publickey}</p>
				<input type="file"
					name="publickey" >
			</div>
			<br><br>
			<div class="form-group">
				<button type="submit" class="btn btn-success">Cập nhật</button>
			</div>
		</form>
	</div>
	<br>
	<br>


</section>

<jsp:include page="./footer/footer.jsp" flush="true" />