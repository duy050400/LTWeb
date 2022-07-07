<%-- 
    Document   : index
    Created on : May 5, 2020, 10:57:00 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />
<!-- / header section -->

<!-- Start slider -->
<jsp:include page="./banner-slider/slider.jsp" flush="true" />
<!-- / slider -->

<!-- Start Promo section -->
<section id="aa-promo">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-promo-area">
					<div class="row">
						<!-- promo left -->
						<div class="col-md-5 no-padding">
							<div class="aa-promo-left">
								<div class="aa-promo-banner">
									<img src="${url}/images/section1_tc.jpg" alt="dâu tây Đà Lạt">
									<div class="aa-prom-content">
										<span>Giảm giá 35%</span>
										<h4>Dâu tây Đà Lạt</h4>
									</div>
								</div>
							</div>
						</div>
						<!-- promo right -->
						<div class="col-md-7 no-padding">
							<div class="aa-promo-right">
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/images/section2_tc.jpg" alt="hạt tiêu daklak">
										<div class="aa-prom-content">
											<span>Sản Phẩm độc quyền</span>
											<h4>Hạt tiêu DakLak</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/images/section3_tc.jpg" alt="img">
										<div class="aa-prom-content">
											<span>Sản phẩm nhập khẩu</span>
											<h4>Cherry Mỹ</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/images/section4_tc.jpg" alt="img">
										<div class="aa-prom-content">
											<span>Giảm giá 25%</span>
											<h4>Tinh Dầu Sả</h4>
										</div>
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/images/section5_tc.jpg" alt="img">
										<div class="aa-prom-content">
											<span>Sản phẩm độc quyền</span>
											<h4>Mật ong rừng Tây Bắc</h4>
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
</section>
<!-- / Promo section -->
<!-- Products section -->
<section id="aa-product">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-product-area">
						<div class="aa-product-inner">
							<!-- start prduct navigation -->
							<ul class="nav nav-tabs aa-products-tab">
								<li class="active"><a href="#raucu" data-toggle="tab">Rau
										Củ Quả</a></li>
								<li><a href="#hat" data-toggle="tab">Các Loại Hạt</a></li>
								<li><a href="#traicay" data-toggle="tab">Trái Cây </a></li>
								<li><a href="#matong" data-toggle="tab">Mật Ong & Tinh
										Dầu</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->
								<div class="tab-pane fade in active" id="raucu">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_raucu}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/upload/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>

														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / men product category -->
								<!-- start women product category -->
								<div class="tab-pane fade" id="hat">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_hat}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/upload/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / women product category -->
								<!-- start sports product category -->
								<div class="tab-pane fade" id="traicay">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_traicay}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/upload/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / sports product category -->
								<!-- start electronic product category -->
								<div class="tab-pane fade" id="matong">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_matong}" var="product" end="7">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/upload/${product.image_link}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
														class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price">${product1.price}
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / electronic product category -->
							</div>
							<div class="more-product">
								<a class="aa-browse-btn"
									href="${pageContext.request.contextPath}/view/client/product">Xem
									Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span>
								</a>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Products section -->
<!-- Latest Blog -->
<section id="aa-latest-blog">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-latest-blog-area">
					<h2>TIN TỨC</h2>
					<div class="row">
						<!-- single latest blog -->
						<c:forEach items="${boardnewlist}" var="boardnew" end="2">
							<div class="col-md-4 col-sm-4">
								<div class="aa-latest-blog-single">
									<figure class="aa-blog-img">
										<a
											href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}"><img
											src="${pageContext.request.contextPath}/view/client/assets/images/news/${boardnew.image_link}"
											alt="Tin tức ${boardnew.title}"></a>
										<figcaption class="aa-blog-img-caption">
											<span href="#"><i class="fa fa-clock-o"></i>${boardnew.created}</span>
										</figcaption>
									</figure>
									<div class="aa-blog-info">
										<h3 class="aa-blog-title">
											<a
												href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}">${boardnew.title}</a>
										</h3>
										<p class="desc-boardnews">${boardnew.content}</p>
										<a
											href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}"
											class="aa-read-mor-btn">Xem thêm<span
											class="fa fa-long-arrow-right"></span></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Latest Blog -->

<!-- Client Brand -->

<!-- / Client Brand -->
<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->

