<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
#un {
	text-decoration: underline;
}
</style>

<div class="slick_box menu_category">
	<div class="menu_bar">
		<div>
			<a>떡볶이</a>
		</div>
		<div>
			<a>자장면</a>
		</div>
		<div>
			<a>떡볶이</a>
		</div>
		<div>
			<a>자장면</a>
		</div>
		<div>
			<a>떡볶이</a>
		</div>
		<div>
			<a>자장면</a>
		</div>
	</div>

	<span class="prev" id="aro_prev1"><i class="fas fa-caret-left"
		aria-hidden="true"></i></span> <span class="next" id="aro_next1"><i
		class="fa fa-caret-right" aria-hidden="true"></i></span>
</div>
<div>
	<h3 id="un">메뉴관리</h3>
</div>
<br>
<br>
<br>
<br>
<br>
<div>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">#</th>
				<th scope="col">종류</th>
				<th scope="col">메뉴이름</th>
				<th scope="col">가격</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>
<br>
<br>
<br>
<div align="right">
	<button type="button" class="btn btn-danger"
		onClick="location.href='menuInsert'">등록</button>
</div>

<script>
	$('.menu_bar').slick({
		autoplay : false,
		dots : false,
		speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
		infinite : false,
		autoplaySpeed : 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
		prevArrow : $('#aro_prev1'),
		nextArrow : $('#aro_next1'),
		arrows : true,
		slidesToShow : 5,
		slidesToScroll : 5,
		fade : false
	});
</script>
