<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="imageSrc" value="/resources/fpt-logo.png" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cinema Room List</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
    href="<c:url value='/resources/bootstrap.min1.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/style.css'/>">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="<c:url value='/resources/jquery-3.6.4.min.js' />"></script>
<style>
  .disabled {
    pointer-events: none;
    opacity: 0.5;
  }
  .table-no-select td {
  user-select: none;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
}
</style>
</head>
<body>

    <nav class="navbar-top navbar-default navbar-fixed-top nav-custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span>
                </button>
                <img
                    src="${imageSrc}" alt="Image">
            </div>

            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav" style="margin-left: 270px">
                    <li><a href="${pageContext.request.contextPath}/cinemaroom/search">Cinema Room List</a></li>
                    <li><a href="${pageContext.request.contextPath}/cinemaroom/movie">Movie</a></li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav" style="margin-left: 270px">
                        <li><a href="${pageContext.request.contextPath}/cinemaroom/information"><i class="fas fa-user"></i>&nbsp; Welcome
                                vyTH2</a></li>
                        <li><a href="${pageContext.request.contextPath}/cinemaroom/logout"><i class="fa-solid fa-right-from-bracket"></i>&nbsp;
                                Logout</a></li>
                    </ul>
                </ul>
            </div>
        </div>
    </nav>
    <main style="margin-top: 50px;">
        <div class="container-fluid" style="background: white;">
            <div class="row" style="height: 73px; border-bottom: 1px solid #f7f1f1;">
                <div class="col text-center">
                    <h3>Cinema room list</h3>
                </div>
            </div>
            <div style="margin-top: 10px;"><a href="${pageContext.request.contextPath}/cinemaroom/addnew">
                <button type="button" class="btn btn-primary btn-lg "
                    style="    height: 36px;width: 119px;font-size: 18px;border-radius: 7px">
                    <i class="fas fa-plus-circle"></i> &nbsp;Add new
                </button></a>
            </div>
            <div class="row">
                <form:form
                    action="${pageContext.request.contextPath}/cinemaroom/search"
                    method="GET">
                    <div class="col-2 ml-auto"
                        style="display: flex; justify-content: end; margin-right: 20px; margin-right: 18px;">
                        <label  style="margin-top: 14px;font-weight: 100">Search:&nbsp;&nbsp;</label> <input
                            id="exampleFormControlInput1" maxlength="28"
                            style="height: 36px;width: 227px;border-radius: 5px;margin-top: 5px;border: 1px solid #938b8b;"
                            name="keyWord" value="${keyword}">
                        
                    </div>
                </form:form>

            </div>
            <div class="row">
                <div class="col">
                    <c:if test="${not empty thongbao}">
                        <div id="notification" class="alert alert-success">${thongbao}</div>
                    </c:if>
                </div>
            </div>
            <div>
                <table class="table table-striped table-hover table-no-select">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cinema room ID</th>
                            <th scope="col">Cinema room</th>
                            <th scope="col">Seat quantity</th>
                            <th scope="col">Seat detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cine" items="${cinemaRoom}" varStatus="status">
	                            <tr onclick="window.location.href = '${pageContext.request.contextPath }/seat/${cine.cinemaRoomID}';">
	                                <th scope="row"> <script>
	                                    // Lấy số thứ tự từ biến index trong c:forEach
	                                    var index = ${status.index + 1};
	                                    document.write(index);
	                                </script></th>
	                                <td>${cine.cinemaRoomID}</td>
	                                <td>${cine.cinemaRoomName}</td>
	                                <td>${cine.seatQuantity}</td>
	                                <td><a
	                                    href="${pageContext.request.contextPath }/seat/${cine.cinemaRoomID}" data-bs-toggle="tooltip" title="${cine.cinemaRoomName}"><i
	                                        class="fas fa-info-circle"></i>&nbsp; Seat detail</a></td>
	                            </tr>
                                <%-- <h6>${cine.seats.seatStatus }</h6> --%>
                            
                            
                        </c:forEach>
                    </tbody>
                </table>
                <div class="pagination" style="display: flex;justify-content: end;margin-top: 0px">
                    <div class="col">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <c:if test="${currentPage > 1}">
                                    <li class="page-item"><a class="page-link"
                                        href="search?page=${currentPage - 1}&keyWord=${keyword}">Previous</a></li>
                                </c:if>
                                <c:if test="${currentPage <= 1}">
                                    <li class="page-item disabled" ><a class="page-link" 
                                        href="search?page=${currentPage}&keyWord=${keyword}">Previous</a></li>
                                </c:if>
                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <c:choose>
                                        <c:when test="${currentPage == i}">
                                            <li class="page-item active"><span class="page-link"
                                                class="active">${i}</span></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="page-item"><a class="page-link"
                                                href="search?page=${i}&keyWord=${keyword}">${i}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <c:if test="${currentPage < totalPages}">
                                    <li class="page-item"><a class="page-link"
                                        href="search?page=${currentPage + 1}&keyWord=${keyword}">Next</a></li>
                                </c:if>
                                <c:if test="${currentPage >= totalPages}">
                                    <li class="page-item disabled" ><a class="page-link"
                                        href="search?page=${currentPage}&keyWord=${keyword}">Next</a></li>
                                </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div hidden="true">
            <h6 id="search">${search}</h6>
            </div>
        </div>
            <script type="text/javascript">
            $(document).ready(function() {
                var heading = $('#search').text();
                if(heading!==""){
                    alert(heading);
                } 
                $("form").submit(function(event) {
                      event.preventDefault();
                      
                      var value = $("#exampleFormControlInput1").val().length;         
                      if (value == 0) {
                        this.submit();
                      } else {
                        var keyword = $.trim($("#exampleFormControlInput1").val());
                        
                        if (keyword.length == 0) {
                          alert("Vui lòng nhập từ khóa hợp lệ!");
                          return;
                        } 
                        this.submit();
                      }
                    });
            });
            </script>
    </main>
    <script src="<c:url value='/resources/jquery-3.6.4.min.js' />"></script>
    <script >
    
    const handleRoutes = (event) => {
    	const item = event.target;
    	const parent = item.parentElement.nodeName;
    	console.log(parent);
    	 const cells = parent.querySelectorAll("td");
    	 console.log(cells[1].textContent);
    }
    
    
        $(document).ready(function() {
            $("#Search").on('keyup', function() {
                console.log($("#Search").val());
                if ($("#Search").val() != "") {
                    $("#Search").css("background-color", "#faffbd");
                } else {
                    $("#Search").css("background-color", "white");
                }
            })
            
        })
        
        $(document).ready(function() {
            var totalPages = ${totalPages}; // Lấy giá trị của totalPages từ dữ liệu của bạn

    	    if (totalPages <= 1) {
    	        $('.pagination').hide(); // Ẩn phần tử pagination nếu chỉ có một trang
    	    } else {
    	        $('.pagination').show(); // Hiển thị phần tử pagination nếu có nhiều hơn một trang
    	    }
		});
        function redirectToURL(url) {
        	  window.location.href = url;
        	}
    
    </script>
</body>
</html>