<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
<script>

    //목록
    $(function(){
      $('#table_id').DataTable();
    });
    </script>    

<html>
<head><title></title>
</head>
<body>

	<h3>리오더 전송목록</h3>
	
	<c:forEach items ="${mailList }" var="reorder">
		${reorder.reorderNum } ${reorder.contents } ${reorder.reorderDate }  <br>
	</c:forEach>
</body>
</html>
 
 
 
 <!--    
   /*$.ajax({
      url:"ajaxEmpList",
      dataType:"json",
      success: function(objs){
         for(i=0; i<objs.length; i++){
            $("#empList").append(objs[i].employeeId+" : "
                              + objs[i].firstName+" : "
                              + objs[i].lastName +"<br>");
         }   
      }
   }); */
 -->
<!-- </script>
<div class="row">
   <div class="col">
      <div>목록</div>
      <div id="mailList">
      <table id="table_id" class="display">
          <thead>
              <tr>
                  <th>reorderNum</th>
                  <th>contents</th>
                  <th>reorderDate</th>
              </tr>
          </thead>
      </table>
      </div>
   </div>
   <div class="col">
       <form>
         <div>
            <button class="btn btn-success">등록</button>
            <button class="btn btn-success">수정</button>
         </div>
         <input type="text" name="contents">
         <input type="text" name="reorderDate">
      </form> 
   </div>
</div> -->
