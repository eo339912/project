<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ��� ������</title>
</head>
<body>
<!-- �߰�����
���̵� (DB)�ߺ�üũ
���Խ�
����� ��ȣ ������ ��Խ�  -->

<script type="text/javascript">
function passwordChack() {
    var pwd = document.twin.storePwd.value;
    var confirmPW = document.twin.storePwd2.value;
    if (pwd.length < 8 || pwd.length > 16) {
        window.alert('��й�ȣ�� 8���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
        document.getElementById('pwd').value=document.getElementById('pwdCheck').value='';
        document.getElementById('same').innerHTML='';
    }
    if(document.getElementById('pwd').value!='' && document.getElementById('pwdCheck').value!='') {
        if(document.getElementById('pwd').value==document.getElementById('pwdCheck').value) {
            document.getElementById('same').innerHTML='��й�ȣ�� ��ġ�մϴ�.';
            document.getElementById('same').style.color='green';
        }
        else {
            document.getElementById('same').innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
            document.getElementById('same').style.color='red';
        }
    }
}
</script>

	<form action = "insertAdmin">
	<input type="text" name = "storeId" placeholder="����� �ƾƵ�"><br>
	<input type="password" name = "storePwd" placeholder="��й�ȣ" onchange="passwordChack()" id ="pwd" ><br>
	<input type="password" name = "storePwd2" placeholder="��й�ȣ" onchange="passwordChack()" id="pwdCheck"/>&nbsp;&nbsp;<span id="same"></span></td><br>
	<input type="text" name = "storeName" placeholder="��ȣ��"><br>
	<input type="text" name = "storeNum" placeholder="����ڹ�ȣ"><br>
	<input type="text" name = "storeAddr" placeholder="����� �ּ�"><br>
	<input type="text" name = "accountNum" placeholder="���¹�ȣ"><br>
	
	<button>���</button>	
</form>


<!-- pwd ���� 
	<tr class="register" height="30">
    <td width="5%" align="center">*</td>
    <td width="15%">��й�ȣ</td>
    <td><input type="password" name="wUserPW" id="pw" onchange="isSame()" /></td>
</tr>
<tr height="7">
    <td colspan="3"><hr /></td>
</tr>
<tr class="register" height="30">
    <td width="5%" align="center">*</td>
    <td width="15%">��й�ȣ Ȯ��</td>
    <td><input type="password" name="wUserPWConfirm" id="pwCheck" onchange="isSame()" />&nbsp;&nbsp;<span id="same"></span></td>
</tr> -->

</body>
</html>