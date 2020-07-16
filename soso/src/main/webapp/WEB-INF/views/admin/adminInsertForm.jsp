<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사업자 등록 페이지</title>
</head>
<body>
<!-- 추가사항
아이디 (DB)중복체크
정규식
사업자 번호 데이터 장규식  -->

<script type="text/javascript">
function passwordChack() {
    var pwd = document.twin.storePwd.value;
    var confirmPW = document.twin.storePwd2.value;
    if (pwd.length < 8 || pwd.length > 16) {
        window.alert('비밀번호는 8글자 이상, 16글자 이하만 이용 가능합니다.');
        document.getElementById('pwd').value=document.getElementById('pwdCheck').value='';
        document.getElementById('same').innerHTML='';
    }
    if(document.getElementById('pwd').value!='' && document.getElementById('pwdCheck').value!='') {
        if(document.getElementById('pwd').value==document.getElementById('pwdCheck').value) {
            document.getElementById('same').innerHTML='비밀번호가 일치합니다.';
            document.getElementById('same').style.color='green';
        }
        else {
            document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('same').style.color='red';
        }
    }
}
</script>

	<form action = "insertAdmin">
	<input type="text" name = "storeId" placeholder="사업자 아아디"><br>
	<input type="password" name = "storePwd" placeholder="비밀번호" onchange="passwordChack()" id ="pwd" ><br>
	<input type="password" name = "storePwd2" placeholder="비밀번호" onchange="passwordChack()" id="pwdCheck"/>&nbsp;&nbsp;<span id="same"></span></td><br>
	<input type="text" name = "storeName" placeholder="상호명"><br>
	<input type="text" name = "storeNum" placeholder="사업자번호"><br>
	<input type="text" name = "storeAddr" placeholder="사업장 주소"><br>
	<input type="text" name = "accountNum" placeholder="계좌번호"><br>
	
	<button>등록</button>	
</form>


<!-- pwd 예제 
	<tr class="register" height="30">
    <td width="5%" align="center">*</td>
    <td width="15%">비밀번호</td>
    <td><input type="password" name="wUserPW" id="pw" onchange="isSame()" /></td>
</tr>
<tr height="7">
    <td colspan="3"><hr /></td>
</tr>
<tr class="register" height="30">
    <td width="5%" align="center">*</td>
    <td width="15%">비밀번호 확인</td>
    <td><input type="password" name="wUserPWConfirm" id="pwCheck" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
</tr> -->

</body>
</html>