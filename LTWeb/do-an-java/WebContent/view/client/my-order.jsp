<%@page import="nongsan.webmvc.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

User u = new User();
u = (User) session.getAttribute("account");
if (u.getIsAdmin() == 0) {
	response.sendRedirect(request.getContextPath() + "/client/index");
}
%>
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />

<!-- / header section -->

<!-- Start slider -->
<jsp:include page="./banner-slider/slider.jsp" flush="true" />
<div style="width: 95%; margin-left: 2.5%;">
	<div class="content-wrapper">
		<div class="container-fluid">
			<!--End Row-->
			<br> <br>
			<div class="row">

				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h2 class="card-title">Danh sách đơn hàng </h2>
							
								<h3 style="color: green">${mess}</h3>
							


							<br> <br>
							<div class="table-responsive">
								<table class="table table-striped">
									<thead>
										<tr>
											<th scope="col">Mã ĐH</th>
											<th scope="col">Họ Tên</th>
											<th scope="col">Email</th>
											<th scope="col">SĐT</th>
											<th scope="col">Địa chỉ</th>
											<th scope="col">Ghi chú</th>
											<th scope="col">Tổng tiền</th>
											<th scope="col">Phương thức TT</th>
											<th scope="col">Trạng thái</th>
											<th scope="col">Ngày tạo</th>
											<th scope="col">Hành động</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orders}" var="orders">
											<tr>
												<td scope="row">${orders.id}</td>
												<td>${orders.user_name}</td>
												<td>${orders.user_mail}</td>
												<td>${orders.user_phone}</td>
												<td>${orders.address}</td>
												<td>${orders.message}</td>
												<td>${orders.amount}VNĐ</td>
												<td><c:choose>
														<c:when test="${orders.payment == 0}">
															<c:out value="COD" />
														</c:when>
														<c:otherwise>
															<c:out value="Thẻ nội địa ATM" />
														</c:otherwise>
													</c:choose></td>
												<td><c:choose>
														<c:when test="${orders.status == NULL}">
															<c:out value="CHƯA XÁC NHẬN" />
														</c:when>
														<c:otherwise>
															<c:out value="ĐÃ XÁC NHẬN" />
														</c:otherwise>
													</c:choose></td>
												<td>${orders.created}</td>


												<td><c:if test="${orders.status == NULL}">
														<button type="button" class="btn btn-success"
															data-toggle="modal" data-target="#myModal${orders.id}">Xác
															Nhận</button>

														<div class="modal fade" id="myModal${orders.id}"
															role="dialog">
															<div class="modal-dialog">

																<!-- Modal content-->
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal">&times;</button>
																		<h4 class="modal-title">
																			Xác nhận hóa đơn <strong>${orders.id}</strong>
																		</h4>
																	</div>
																	<div class="modal-body">
																		<p>Hãy Copy đoạn mã hash sau và tiến hành ký số
																			bằng tool đã được cung cấp</p>
																		<a style="color: blue;" href="https://drive.google.com/file/d/1SzvNQiNls5UxMoNYvVkbgCJS1OBac_NE/view?usp=sharing" target="_blank">Download
																			tool</a> <br>
																		<br> <input
																			style="width: 100%; display: inline-block"
																			readonly="readonly" type="text"
																			value="${orders.hash}" id="myInput"
																			class="form-control">
																		

																		<br> <br>
																		<form
																			action="${pageContext.request.contextPath}/view/client/my-order?id=${orders.id}"
																			method="post">
																			<div class="form-group">
																				<label for="input-1">Code ký số</label> <input
																					type="text" class="form-control" id="input-2"
																					placeholder="Code" name="code">
																			</div>
																			<div class="form-group">
																				<button style="width: 100%" type="submit"
																					class="btn btn-success">
																					<i class="icon-lock"></i> Xác Nhận
																				</button>
																			</div>
																		</form>

																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-default"
																			data-dismiss="modal">Close</button>
																	</div>
																</div>

															</div>
														</div>
													</c:if></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br> <br>


</div>



<jsp:include page="./footer/footer.jsp" flush="true" />