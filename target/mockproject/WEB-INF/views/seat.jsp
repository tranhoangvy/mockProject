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
<title>Seat details</title>
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
.seat {
    width: 50px;
    height: 36px;
    margin: 8px 5px;
    padding: 0px;
    border-radius: 5px;
    background-color: #dddddd;
    cursor: pointer;
    height: 36px;
    padding: 0px 0 0 4px;
    border-radius: 5px;
    background-color: #dddddd;
    padding: 0px;
    border-radius: 5px;
    background-color: #dddddd;
    padding: 0px;
    border-radius: 5px;
    background-color: #dddddd;
}

.seatcon {
    width: 40px;
    border-radius: 2px;
    background-color: #f5f2f2;
    height: 30px;
        margin-left: 4px;
}

.row1 {
    display: flex;
    margin-bottom: 5cm;
}

.greancon {
    background-color: #b2df77;
}

.greancha {
    background-color: #7dc71d;
}

.bluecon {
    background-color: #8bc5f7;
}

.blue {
    background-color: #3b9bec;
}

.center {
    display: flex;
    justify-content: center;
}
</style>
</head>
<body     style=" background: white;">
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
    <div class="container-fluid" style="margin-top: 50px">
        <div class="row" style="height: 73px; border-bottom: 1px solid #f7f1f1;">
            <div class="col text-center">
                <h3>Seat details: ${cinemaroom.cinemaRoomName}</h3>
            </div>
        </div>
    </div>
    <div style="margin-top: 40px">
        <table style="margin: 0 auto">
            <c:forEach var="seat" items="${data}" varStatus="statusi">
                <tr style="">
                    <c:forEach var="value" items="${seat.seatRowIndex}"
                        varStatus="statusj">
                        <td style="text-align: center;"><c:if test="${value!=null}">
                                <c:choose>

                                    <c:when test="${value.seatStatus == 0}">
                                        <div class="seat"
                                            <c:if test="${value.seatColumn == 'D' || value.seatColumn == 'G' || value.seatColumn == 'J'}">style="margin-left: 90px"</c:if>>
                                            <button
                                                onclick="handleClick(${value.seatID},${value.cinemaRoom.cinemaRoomID})"
                                                class="btn seatcon" style="border: none;">${value.seatRow}${value.seatColumn}</button>
                                        </div>
                                    </c:when>

                                    <c:otherwise>
                                        <div class="seat blue"
                                            <c:if test="${value.seatColumn == 'D' || value.seatColumn == 'G' || value.seatColumn == 'J'}">style="margin-left: 90px"</c:if>>
                                            <button
                                                onclick="handleClick(${value.seatID},${value.cinemaRoom.cinemaRoomID})"
                                                class="btn seatcon bluecon blu" style="border: none;">${value.seatRow}${value.seatColumn}</button>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </c:if></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

    </div>

    <!-- <button onclick="handleSave()" class="btn seatcon"
        style="border: none;">Save</button> -->
    <div class="container-fluid ">
        <div class="center">
            <div class="center"
                style="width: 800px; border-bottom: 2px solid gray;">
                <div>
                    <h4>Screen</h4>
                </div>
            </div>
        </div>
        <div class="center" style="margin-top: 20px;">
            <div class="center" style="margin-right: 20px;">
                <div
                    style="width: 10px; height: 10px; background-color: #7dc71d; margin: 12px 5px 0px 0px;"></div>
                <h5>Seat is selecting</h5>
            </div>
            <div class="center" style="margin-right: 20px;">
                <div
                    style="width: 10px; height: 10px; background-color: #dddddd; margin: 12px 5px 0px 0px;"></div>
                <h5>Seat Normal</h5>
            </div>
            <div class="center">
                <div
                    style="width: 10px; height: 10px; background-color: #3b9bec; margin: 12px 5px 0px 0px;"></div>
                <h5>Seat Vip</h5>
            </div>
        </div>
        <div class="center" style="margin-top: 25px;">
            <a><button type="button" onclick="handleSave()" id="btn_save"
                    class="btn btn-primary rounded-25">
                    <i class="fa fa-check" aria-hidden="true"></i> Save
                </button></a> <a><button type="button" onclick="backlistdetail()"
                    id="btn_back" class="btn btn-primary" style="margin-left: 10px;">
                    <i class="fa-solid fa-x"></i> Back
                </button></a>
        </div>
    </div>
</body>
<script>
    var ids = [];
    var cinemaRoonId  = null;
    function handleClick(id, cinemaId) {
        if(cinemaRoonId==null){
            cinemaRoonId = cinemaId
        }
        let check = ids.includes(id);
        ids = ids.filter(e => e != id);
        !check && ids.push(id);
    }
    $(".seatcon").click(function () {
        if (!$(this).hasClass("greancon")) {
            $(this).addClass("greancon");
            $(this).closest(".seat").addClass("greancha");
        } else {
            $(this).removeClass("greancon");
            $(this).closest(".seat").removeClass("greancha");
        }
        if ($(this).hasClass("blu")) {
            if($(this).hasClass("bluecon")){
                $(this).removeClass("bluecon");
                $(this).closest(".seat").removeClass("blue");
                $(this).addClass("greancon");
                $(this).closest(".seat").addClass("greancha");
            }else{
                $(this).addClass("bluecon");
                $(this).closest(".seat").addClass("blue");
            }
        }
    });
    
    function handleSave() {
        if(ids.length === 0){
            alert("You have not made any changes.");
            console.log("Mảng ids rỗng.");
        }else{
        let data = { cinemaRoomId: cinemaRoonId, seatIds: ids };
        console.log(data)
        fetch("http://localhost:8081/mockproject/seat", {
            body: JSON.stringify(data),
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
        })
            .then((response) => {
                 location.href = '${pageContext.request.contextPath}/cinemaroom/search';
                 alert("save thành công.");
                return response.json();
            });
        }
    }
    function backlistdetail() {
        if (ids.length === 0) {
            $("#btn_back").closest("a").attr("href", "${pageContext.request.contextPath}/cinemaroom/search");
        } else {
            var a = confirm("Do you want to cancel the selection?");
            if (a === true) {
                $("#btn_back").closest("a").attr("href", "${pageContext.request.contextPath}/cinemaroom/search");
            }
        }
    }
    function updateA() {
    	  let a1 = ids.length;
    	  console.log(a1);

    	  if (a1 !== 0) {
    	    window.addEventListener('beforeunload', function(event) {
    	      // Hủy bỏ hành động mặc định của sự kiện
    	      event.preventDefault();
    	      // Gán thông báo cho sự kiện
    	      event.returnValue = 'Bạn có chắc chắn muốn thoát khỏi trang này?';
    	    });
    	  }

    	  setTimeout(function() {
    	    updateA(); // Gọi lại hàm updateA sau 1 giây
    	  }, 1000);
    	}

    	updateA();
    	   
</script>
</html>