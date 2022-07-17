<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/view/upload/panel" var="url" />
<section id="aa-slider">
	<div class="aa-slider-area">
		<div id="sequence" class="seq">
			<div class="seq-screen">
				<ul class="seq-canvas">
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/pos10.jpg" alt="Men slide img" />
						</div>
						<div class="seq-title">
							<span data-seq>Giảm giá lên đến 34%</span>
							<h2 data-seq>CÁC LOẠI SÁCH DÀNH CHO THIẾU NHI</h2>
							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/pos8.jpg" alt="Wristwatch slide img" />
						</div>
						<div class="seq-title">

							<h2 data-seq>HỌC CÁCH LÀM GIÀU</h2>

							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/pos3.jpg" alt="Women Jeans slide img" />
						</div>
						<div class="seq-title">

							<h2 data-seq>VĂN HỌC HIỆN ĐẠI</h2>

							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
					<!-- single slide item -->
					<li>
						<div class="seq-model">
							<img data-seq src="${url}/pos2.jpg" alt="Shoes slide img" />
						</div>
						<div class="seq-title">
							<h2 data-seq>LỊCH SỬ NHÂN LOẠI</h2>

							<a data-seq
								href="${pageContext.request.contextPath}/view/client/product"
								class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- slider navigation btn -->
			<fieldset class="seq-nav" aria-controls="sequence"
				aria-label="Slider buttons">
				<a type="button" class="seq-prev" aria-label="Previous"><span
					class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
					aria-label="Next"><span class="fa fa-angle-right"></span></a>
			</fieldset>
		</div>
	</div>
</section>
