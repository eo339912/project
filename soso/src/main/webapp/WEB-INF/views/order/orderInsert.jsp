<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="resources/admin/scss/hw.css" rel="stylesheet" type="text/css">

   <!-- 컨텐츠영역 -->

   <div class="box-title">
       <p>계산서</p>
   </div>
    
  
    <div class="div-big">
		<table  class="tb-line">
			<col style="width:25%" >		
			<thead>
			<tr>
			     <th scope="col">주문메뉴</th>
			     <th scope="col">수량</th>
			     <th scope="col">가격</th>
			     <th scope="col">적립금</th>
			</tr>			
			</thead>
			<tr>
			      <td>떡볶이</td>
			      <td>1개</td>
			      <td>10,000</td>
			      <td>100</td>
			</tr>			
			<tfoot>
			<tr>
			<td colspan="4">총 추문금액: "#총주문값"</td>
			</tr>
			</tfoot>						
		</table>
</div>


<!-- 메뉴담기 -->
<!-- <div class="row">

<div class="orderInsert col-lg-6 col-sm-12" >
   <table border="1" style="width:100%;">
   <tbody><tr>
   <th>주문메뉴</th><th>수량</th><th>가격</th>
   </tr>
   <tr>
      <td></td>
      <td></td>
      <td></td>
   </tr>
   </tbody></table>
   
   <p>총 주문 금액:________</p>
   
</div>  -->


<!-- 배달 체크시 펼치기-->
<div class="div-basic">
	<li><input type="checkbox"> 배달시 체크해주세요!</li>
</div>

<div class="div-big">
 <table class="tb-line">
 <tr class="">
	<th scope="row" width="10%">주소 </th>
         <td>
			<p>배달 주문시, 자동 회원가입 됩니다.</p><br>
             <input id="" name="" fw-filter="isFill" fw-label="주문자 우편번호1"  placeholder="" size="6" maxlength="6" readonly="1" value="" type="text"> <a><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_zipcode.gif" alt="우편번호" /></a><br>
             <input id="" name="" fw-filter="isFill" fw-label="주문자 주소1"  placeholder="" size="40" readonly="1" value="" type="text"> <span class="txtInfo">기본주소</span><br>
             <input id="" name="" fw-label="주문자 주소2"  size="40" value="" type="text"> <span class="txtInfo">나머지주소</span><span class="grid displaynone">(선택입력가능)</span>
         </td>
</tr>                         
<tr class="">
	<th scope="row" width="10%">휴대전화 <span class=""><img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/ico_required.gif" alt="필수"></span>
	</th>
    <td>
     <select id="" name="" fw-label="주문자 핸드폰번호" > 
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>
		<option value="017">017</option>
		<option value="018">018</option>
		<option value="019">019</option>
	</select>-<input id="" name="" maxlength="4" fw-label="주문자 핸드폰번호" size="4" value="" type="text">-<input id="" name="" maxlength="4" fw-label="주문자 핸드폰번호"  size="4" value="" type="text"></td>
 </tr>
</table>
</div>
   

<!-- 할인 및 포인트 -->
<div class="box-title">
	<p>할인 및 포인트</p>
</div>

<div class="div-big">
 <table class="tb-line">

 <tr class="">
	<th scope="row" width="15%" >쿠폰할인</th>
		<th>할인금액
		</th>
         <td >
             <div class="div-input"><span class="">"$할인금액"</span></div><span>원</span><td colspan="2"><button>쿠폰사용</button></td>
         </td>
</tr>                         
<tr>
	<th scope="row" width="15%" rowspan="2" >적립포인트사용 
	</th>

    <th scope="row" width="10%">적립포인트 잔액
     </th>
	    <td>
	    	<div class="div-input"><span class="">"$총적립금"</span></div><span>원</span>
		</td>
</tr>
<tr>
    <th scope="row" width="10%">사용포인트
    </th>
    	<td >
	    	<input class=""><span>원</span><td><button>전액사용</button></td><td></td>
		</td>			
</tr>

</table>
</div>

<!-- 결제금액 -->
<div class="div-pay">

	<div class="div-payleft">
	 <h3>결제수단</h3>
	<table>
	   <tr>
	      <td>주문금액</td><td></td>
	   </tr>
	   <tr>
	      <td>할인금액</td><td></td>
	   </tr>
	   <tr>
	      <td>적립금</td><td></td>
	   </tr>
	   <tr>
	      <td colspan="2">총금액</td>
	   </tr>
	</table>
	
		<br>
		<button>취소하기</button>
		<button>결제하기</button>
	</div>


	<div class="div-payright">
		<h4>결제하기</h4>
	</div>
    
</div>
    
    
    