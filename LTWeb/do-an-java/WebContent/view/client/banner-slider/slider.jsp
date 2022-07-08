<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/upload/panel" var="url"/>
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
               <span data-seq>Giảm giá lên đến 50%</span>                
                <h2 data-seq>Các Loại sách dành cho thiếu nhi</h2>                
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/pos8.jpg" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Giảm giá lên đến 20%</span>                
                <h2 data-seq>Rau Củ Quả Xanh Sạch</h2>                
                <p data-seq>Rau củ quả được trồng đảm bảo không thuốc hóa học , đảm bảo chất lương xanh sạch và an toàn.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/pos3.jpg" alt="Women Jeans slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Giảm giá lên đến 33%</span>                
                <h2 data-seq>Trái Cây Ngon Ngọt</h2>                
                <p data-seq>Trái cây tại cửa hàng đa dạng về loại hàng, luôn đảm bảo tính an toàn và chất lượng lên hàng đầu.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/pos2.jpg" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Giảm giá lên đến 25%</span>                
                <h2 data-seq>Mật Ong Và Tinh Dầu</h2>                
                <p data-seq>Là 2 sản phẩm mới bên cửa hàng của chúng tôi,sản phẩm đã được kiểm định
                và cấp phép về an toàn.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">Xem Sản Phẩm</a>
              </div>
            </li>                   
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>
