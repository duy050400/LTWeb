<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- start header top  -->
<div class="aa-header-top">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-header-top-area">
					<!-- start header top left -->
					<div class="aa-header-top-left">
						<div class="cellphone hidden-xs">
							<p>
								<span class="fas fa-home"></span>Website bán hàng
							</p>
						</div>
					</div>
					<!-- / header top left -->
					<div class="aa-header-top-right">
						<ul class="aa-head-top-nav-right">
							
							<c:if test="${sessionScope.account.isAdmin == 1 || sessionScope.account.isAdmin == 2}">
								<li class="hidden-xs">
									<a href="${pageContext.request.contextPath}/view/admin/index.jsp">Trang ADMIN</a>
								</li>
							</c:if>
							
							<c:if test="${sessionScope.account != null}">
								<li><a href="${pageContext.request.contextPath}/view/client/profile"><strong>Chào</strong>
										${sessionScope.account.name }</a></li>
								<li class="hidden-xs"><a
									href="${pageContext.request.contextPath}/view/client/logout">Đăng
										xuất</a></li>
										<li class="hidden-xs"><a  href="${pageContext.request.contextPath}/view/client/my-order">My Order</a></li>
							</c:if>
							

							<c:if test="${sessionScope.account == null}">
								<li class="hidden-xs"><a
									href="${pageContext.request.contextPath}/view/client/register">Đăng
										ký</a></li>
								<li><a
									href="${pageContext.request.contextPath}/view/client/login">Đăng
										nhập</a></li>
							</c:if>

							<!--  data-toggle="modal" data-target="#login-modal" -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- / header top  -->
