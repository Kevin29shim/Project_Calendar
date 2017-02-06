<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 만들어야 하는 파일 3가지 DiaryList.jsp DiaryInsert.jsp DiaryUpdate.jsp 삭제는 버튼하나로만 구현되도록 개발 -->
<!-- DiaryList.jsp 파일 - 달력의 면을 클릭했을 경우 이동되는 페이지(새창 X) 네비게이션기능 이용 -->
<!-- 추가해야 할 기능 : form tag로 전송하고 서블릿으로 디비 입력 -->
<!-- 5개의 이미지파일 준비(일정 선택용) -->
<!-- 제목, 내용, 날짜, 유형, 공개범위 입력받고 디비에 저장. -->
<!-- 공개범위 설정 RadioButton으로 사용합시다.-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Diary Insert</title>
<!-- CSS START --><style type="text/css">
table, tr, td{
	border: none;
}
.img{
	width : 50px;
	height : 50px;
	cursor: pointer;
 	outline: none;
 	border: none;
}
.img:hover {background-color: #dd1b1b}

</style>                                             <!--------------------------- CSS END -------------------------->
<script src="../JS/jquery-3.js"><!-- JQuery Library Import -->
</script> 
<%
	int type=0;
%>
<script type="text/javascript">
var type=0;
function img_click(obj){ //이미지클릭시에 숫자를 다음 페이지에 전송시켜줌
	var myElements = document.querySelectorAll(".img");
	for (var i = 0; i < myElements.length; i++) {
	    myElements[i].style.border = "none";//obj.style.border="none";ERROR 전부다 NONE으로 바꿔줘야함
	}//이미지 테두리를 없애줌
	while(obj.name){//obj.name이 true일 경우
		if(obj.name=="img1"){
			<% type = 1; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img2"){
			<% type = 2; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img3"){
			<% type = 3; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img4"){
			<% type = 4; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img5"){
			<% type = 5; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img6"){
			<% type = 6; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img7"){
			<% type = 7; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img8"){
			<% type = 8; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img9"){
			<% type = 9; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img10"){
			<% type = 10; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img11"){
			<% type = 11; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img12"){
			<% type = 12; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img13"){
			<% type = 13; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}else if(obj.name=="img14"){
			<% type = 14; %>
			obj.style.border = "3px solid #dd1b1b";
			break;
		}
	}
	//바뀐 타입 변수값을 서블릿으로 보내줘야 한다.
	//return type;
}//Function END
</script>
</head>
<body>
		<div align="center" style="font-family:koverwatch">
			<H2> Example : Diary Insert</H2>
			<form action="<%=request.getContextPath() %>/dairy.do" method="post" name="frm">
					<table id="DiaryList_Table"><!-- 테이블경계는 css로 -->
						<tr>
							<th>Title</th><td colspan="6"><input type="text" id="Diary_Title" name="Diary_Title"></td>
						</tr>
						<tr>
						<!-- 1 --><td><img name="img1" class="img" src="../Images_Diary/Appointment.png" onclick="img_click(this)">
						<input type="hidden" name="Type" id="Type" value="<%=type %>" />
						</td>
						<!-- 2 --><td><img name="img2" class="img" src="../Images_Diary/Army.png" onclick="img_click(this)">
						</td>
						<!-- 3 --><td><img name="img3"  class="img" src="../Images_Diary/Cake.png" onclick="img_click(this)">
						</td>
						<!-- 4 --><td><img name="img4"  class="img" src="../Images_Diary/Heart.png" onclick="img_click(this)">
						</td>
						<!-- 5 --><td><img name="img5"  class="img" src="../Images_Diary/Hospital.png" onclick="img_click(this)">
						</td>
						<!-- 6 --><td><img name="img6"  class="img" src="../Images_Diary/Star.png" onclick="img_click(this)">
						</td>
						<!-- 7 --><td><img name="img7"  class="img" src="../Images_Diary/Sun.png" onclick="img_click(this)">
						</td>
						</tr>
						<tr>
						<!-- 8 --><td><img name="img8"  class="img" src="../Images_Diary/Angry.png" onclick="img_click(this)">
						</td>
						<!-- 8 --><td><img name="img9"  class="img" src="../Images_Diary/Aplus.png" onclick="img_click(this)">
						</td>
						<!-- 10 --><td><img name="img10"  class="img" src="../Images_Diary/Beer.png" onclick="img_click(this)">
						</td>
						<!-- 11 --><td><img name="img11"  class="img" src="../Images_Diary/Camera.png" onclick="img_click(this)">
						</td>
						<!-- 12 --><td><img name="img12" class="img" src="../Images_Diary/Haircut.png" onclick="img_click(this)">
						</td>
						<!-- 13 --><td><img name="img13"  class="img" src="../Images_Diary/Movie.png" onclick="img_click(this)">
						</td>
						<!-- 14 --><td><img name="img14"  class="img" src="../Images_Diary/trip.png" onclick="img_click(this)">
						</td>
						</tr>
						<tr>
							<th>Contents</th><td colspan="6"><textarea name="Diary_Cont" id="Diary_Cont" rows="10" cols="50"></textarea></td>
						</tr>
						<tr>
							<th> Open Range </th>
							<td colspan="6">
								<font size="4"><input name="Range" type="radio" value="1"> 나만보기 </font> 
								<font size="4"><input name="Range" type="radio" value="2"> 친구들에게 공개 </font>
								<font size="4"><input name="Range" type="radio" value="3"> 전체 공개 </font>
							</td>
						</tr>
						<tr>
							<td colspan="7" align = "center"><input id="Save_Button"  type="submit" value="SAVE"></td>
						</tr>
					</table>
					</form>
		</div>
</body>


