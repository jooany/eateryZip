<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/b_mypage/b_reservation_list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<script src="https://kit.fontawesome.com/eda0c6c5f7.js" crossorigin="anonymous"></script>
<style>

	@import url('https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap');
   /* 공통 */
   *{
    font-family: 'Gothic A1', sans-serif;
    margin-top:0;
    }
	body{
		background-color: #efefef
	}
	a{
		text-decoration: none;
	}
	.inner{
		width:1100px;
		height: 690px;
		margin:0 auto;
		display:flex;
		justify-content: space-between;
		margin-top: 40px;
	}
/*-------------------------------------------------------------------------*/

/*------------------------------side nav start------------------------------*/

	#left_content {
		background-color: #fff;
		min-width: 200px;
		list-style:none;
		border: 1px solid rgba(0,0,0,.1);
		height: fit-content;
	}
	
	#left_content a {
		color: black;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
	}
	
	#left_content a:hover {
		background-color: rgba(253,83,0);
		color : white;
	}

/*------------------------------side nav end------------------------------*/
/*------------------------------right_content start------------------------------*/
/*------------------------------ right_content end ------------------------------*/
/*------------------------------right_content start------------------------------*/

	#right_content{
		width: 700px;
		height: fit-content;
		background-color: white;
		margin-right: 80px;
		padding: 10px 50px;
	}
	
	table{
		border-bottom:1px solid rgba(0,0,0,.1);
		margin:0 auto;
		text-align: center;
	}
/*-----------------------table 숫자 생성------------------------------*/
	tbody>tr {
	  counter-increment: a;
	}
	tbody>tr>td:first-child:before {
	  content: counter(a) " ";
	}
/*-----------------------table 숫자 생성------------------------------*/

/*------------------------------ right_content end ------------------------------*/

/*--------------------------------- reservation list detail --------------------------*/

	.reservation_btn{
		background-color: #efefef;
		color: black;
		border: 1px solid #efefef;
		box-shadow: 0px 2px 2px 0px rgba(0,0,0,0.3);
	}
	.reservation_btn:hover{
		background-color: #ccc;
		color: white;
		font-weight: bold;
	}

/*--------------------------------- reservation list detail --------------------------*/


/*------------------------------paging start------------------------------*/
	.page-ui a{
		text-decoration: none;
		color: #000;
	}
	
	.page-ui a:hover{
		background-color: rgba(253,83,0);
		color: white;
	}
	
	.page-ui a.active{
		color: white;
		font-weight: bold;
		background-color: rgba(253,83,0);
	}
	.page-ui ul{
		list-style-type: none;
		padding: 0;
	}
	
	.page-ui ul > li{
		float: left;
		padding: 5px;
	}

/*------------------------------paging end------------------------------*/
</style>
</head>
<body>	
<jsp:include page="/navbar/header/navbar.jsp"></jsp:include>
	<div id="container" class="inner">
		<div id="left_content">
			<p class="position"><a href="${pageContext.request.contextPath}/users/b_mypage/b_mypage.do">마이페이지</a></p>
			<p class="position"><a href="${pageContext.request.contextPath}/store/store_insertform.do">가게정보등록</a></p>
			<p class="position"><a href="${pageContext.request.contextPath}/users/b_mypage/menu_insertform.do">메뉴등록</a></p>
			<p class="position"><a href="${pageContext.request.contextPath}/users/b_mypage/b_mypage_updateform.do">개인정보수정</a></p>
			<p class="position"><a href="${pageContext.request.contextPath}/users/b_mypage/b_takeout_list.do">포장주문내역</a></p>
			<p class="position"><a href="${pageContext.request.contextPath}/users/b_mypage/b_reservation_list.do">예약내역</a></p>
		</div>
		<div id="right_content">
			<h3>예약내역</h3>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">No.</th>
						<th scope="col">예약일</th>
						<th scope="col">예약시간</th>
						<th scope="col">예약자이름</th>
						<th scope="col">예약인원</th>
						<th scope="col">자세히보기</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list }">
						<tr>
							<td></td>
							<td>${tmp.reservation_date }</td>
							<td>${tmp.reservation_time }</td>
							<td>${tmp.reservation_name }</td>
							<td>${tmp.reservation_people }</td>
							<td>
								<button type="button" class="reservation_btn" data-reservation="${tmp.reservation_num}" data-id="${tmp.b_id}">예약내역보기</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="page-ui clearfix">
				<ul class="pagination justify-content-center">
					<c:if test="${startPageNum ne 1 }">
						<li class="page-link">
							<a href="b_takeout_list.do?pageNum=${startPageNum-1 }">Prev</a>
						</li>
					</c:if>
					<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
						<li class="page-item">
							<c:choose>
								<c:when test="${pageNum eq i }">
									<a  class="page-link active" href="b_takeout_list.do?pageNum=${i }">${i }</a>
								</c:when>
								<c:otherwise>
									<a class="page-link" href="b_takeout_list.do?pageNum=${i }">${i }</a>
								</c:otherwise>
							</c:choose>
						</li>
					</c:forEach>
					<c:if test="${endPageNum lt totalPageCount }">
						<li class="page-link">
							<a href="b_takeout_list.do?pageNum=${endPageNum+1 }">Next</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
<jsp:include page="/navbar/footer/footer.jsp"></jsp:include>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(".reservation_btn").click(function(){
		let reservationNum=$(".reservation_btn").attr("data-reservation");
		let bId=$(".reservation_btn").attr("data-id");
	window.open("${pageContext.request.contextPath}/eatery/reservation_info.do?reservation_num="+reservationNum+"&b_id="+bId, "예약내역보기", "width=520px,height=751px");
	});
	
</script>
</body>
</html>