<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
 
<!-- <script>
$(function(){
   //목록
   $('#empList').DataTable(
	{ajax: {url : 'ajaxEmpList', dataSrc: '' },
		columns: [
				{data: "storeId"},
				{data: "storePwd"},
				{data: "storeNum"},
				{data: "storeAddr"},
				{data: "storeName"},
				{data: "accountNum"},
		]});
   });
</script>

 -->
<div class="row">
   <div class="col">
      <div>목록</div>
      <div>
      	<table id="empList">
      		<thead>
      			<tr>
      				<th>storeId</th>
      				<th>storePwd</th>
      				<th>storeNum</th>
      				<th>storeAddr</th>
      				<th>storeName</th>
      				<th>accountNum</th>
      			</tr>
      		</thead>
      		<c:forEach items="${adminList}" var="admin" >
      		<tr>
      			<td>${admin.storeId }</td>
 				<td>${admin.storePwd }</td>
 				<td>${admin.storeNum }</td>
 				<td>${admin.storeAddr }</td>
 				<td>${admin.storeName }</td>
 				<td>${admin.accountNum }</td>
      		</tr>
      		</c:forEach>
      	</table>
      </div>
   </div>
   <div class="col">
      <form>
      <div>
         <button class="btn btn-success">등록</button>
         <button class="btn btn-success">수정</button>
      </div>
       
      </form>
   </div>
</div>