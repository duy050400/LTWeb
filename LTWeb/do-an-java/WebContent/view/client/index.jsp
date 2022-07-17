
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/upload/panel" var="url" />
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
									<img src="${url}/section1.jpg" alt="dâu tây Đà Lạt">
									
								</div>
							</div>
						</div>
						<!-- promo right -->
						<div class="col-md-7 no-padding">
							<div class="aa-promo-right">
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/section2.jpg" alt="hạt tiêu daklak">
										
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/section3.jpg" alt="img">
										
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/section4.jpeg" alt="img">
										
									</div>
								</div>
								<div class="aa-single-promo-right">
									<div class="aa-promo-banner">
										<img src="${url}/section5.jpg" alt="img">
										
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
								<li class="active"><a href="#vanhoc" data-toggle="tab">Văn Học</a></li>
								<li><a href="#thieunhi" data-toggle="tab">Thiếu Nhi</a></li>
								<li><a href="#lichsu" data-toggle="tab">Lịch Sử </a></li>
								<li><a href="#kinhte" data-toggle="tab">Kinh Tế</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->
								<div class="tab-pane fade in active" id="vanhoc">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_vanhoc}" var="product" end="7">
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
								<div class="tab-pane fade" id="thieunhi">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_thieunhi}" var="product" end="7">
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
								<div class="tab-pane fade" id="lichsu">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_lichsu}" var="product" end="7">
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
								<div class="tab-pane fade" id="kinhte">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_kinhte}" var="product" end="7">
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

