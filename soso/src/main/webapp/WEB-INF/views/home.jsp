<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<!-- 메뉴 구분-->
<div class="menu_category">
	<div class="menu_bar">
		<div><a>떡볶이</a></div>
		<div><a>자장면</a></div>
		<div><a>떡볶이</a></div>
		<div><a>자장면</a></div>
		<div><a>떡볶이</a></div>
		<div><a>자장면</a></div>
	</div>
	<div class="arrowSlider">
		<span class="prev" id="aro1_prev1"><i class="fas fa-arrow-left"></i></span>
		<span class="next" id="aro1_next1"><i class="fas fa-arrow-right"></i></span>
	</div>
</div>

<!-- 메뉴 목록 -->
<div class="arrowSlider">
	<span class="prev" id="aro1_prev2"><i class="fas fa-arrow-left"></i></span>
	<span class="next" id="aro1_next2"><i class="fas fa-arrow-right"></i></span>
</div>
<div class="menu_list">
	<div class="ml">
		<div class="menu_img"></div>
		<div class="info">
			<div class="title">
				<p>매운맛1</p>
				<p>1,000</p>
			</div>
			<div class="detail">
				<i class="fas fa-search"></i>
			</div>
		</div>
	</div>
	
	<div class="ml">
		<div class="menu_img"></div>
		<div class="info">
			<div class="title">
				<p>매운맛2</p>
				<p>1,000</p>
			</div>
			<div class="detail">
				<i class="fas fa-search"></i>
			</div>
		</div>
	</div>
	
	<div class="ml">
		<div class="menu_img"></div>
		<div class="info">
			<div class="title">
				<p>매운맛3</p>
				<p>1,000</p>
			</div>
			<div class="detail">
				<i class="fas fa-search"></i>
			</div>
		</div>
	</div>
	
	<div class="ml">
		<div class="menu_img"></div>
		<div class="info">
			<div class="title">
				<p>매운맛4</p>
				<p>1,000</p>
			</div>
			<div class="detail">
				<i class="fas fa-search"></i>
			</div>
		</div>
	</div>
	
	<div class="ml">
		<div class="menu_img"></div>
		<div class="info">
			<div class="title">
				<p>매운맛5</p>
				<p>1,000</p>
			</div>
			<div class="detail">
				<i class="fas fa-search"></i>
			</div>
		</div>
	</div>
</div>
	
	<script>
	 $('.menu_bar').slick({
		autoplay : false,
		dots: false,
		speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
		infinite: true,
		autoplaySpeed: 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
		prevArrow: $('#aro2_prev1'),
		nextArrow: $('#aro2_next1'),
		arrows: true,
		slidesToShow: 5,
		slidesToScroll: 5,
		fade: false
	}); 
	 
	 $('.menu_list').slick({
			autoplay : false,
			dots: false,
			speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,
			infinite: true,
			autoplaySpeed: 3000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,
			prevArrow: $('#aro1_prev2'),
			nextArrow: $('#aro1_next2'),
			slidesToShow: 3,
			slidesToScroll: 3,
			fade: false
		}); 

	</script>
	
