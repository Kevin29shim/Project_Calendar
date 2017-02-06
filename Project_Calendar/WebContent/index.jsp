<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Acorn Calendar Main</title>
<style>

#Nav_Header{
   height: 40px;
   background-color: #dd1b1b;
   color: white;
   padding: 15px;   
}

#Nav_Footer_div{
   margin-top: 500px;
   height: 40px;
   background-color: #dd1b1b;
   color: white;
   padding: 15px;   
}

#Header_Logo{
   float:left;
}

#Header_Title{
   float:left;
   margin-left: 20px;
}

#Header_Logout{
   float:right;
}

#Calendar{
   float:left;
}

#SideBar{
   float:right;
}
table{ 
	background-color: #f0efef;
	border-style: solid;
	border-width:3px;
	
}
th{
	on
	border:solid 1px #f0efef;
	text-align:left;
	width : 100px;
	height: 20px;
}
td{
	border:solid 1px #f0efef;
	text-align:right;
	width : 100px;
	height: 40px;
}
.day{
	border-bottom:solid 1px gray;
	text-align: center;
}

#example {
	border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 14px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
#example span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
#example span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
#example onmouse{
  padding-right: 25px;
}
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}


</style>
<script type="text/javascript">
	function TdMouseOver(){
		
	}
	function Date_Click(){ //td 부분 클릭시 수행되는 함수
		 var popup = document.getElementById("myPopup");
		    	popup.classList.toggle("show");
	}


</script>
</head>
<body>
<!-- header -->
<header id="Nav_Header">
   <div id="Nav_Header_div">
      <span id="Header_Logo">
         <p>LOGO(IMAGE)</p>
      </span>
      <span id="Header_Title">
         <p>Diary Name</p>
      </span>
      <span id="Header_Logout">
         <button type="button" id="Login_button"> LOGIN/LOGOUT </button>
      </span>
   </div>
</header>
<!-- body -->
<div>
<article id="Calendar">
<h2>2</h2>
	<div>
<table id="Calendar_Table" border="1">
	<tr>
	<th class="day">Sunday</th>  <th class="day">Monday</th>  <th class="day">Tuesday</th>  <th class="day">Wednseday</th>  <th class="day">Thursday</th>  <th class="day">Friday</th> <th class="day">Saturday</th>
	</tr>
	<tr>
		<th>29</th>  <th>30</th>  <th>31</th> <th><a href="#">1</a></th><th><a href="#">2</a></th><th><a href="#">3</a></th><th><a href="#">4</a></th>
	</tr>
	<tr>
		<td class="popup" id="example" onclick="Date_Click()" onmouseover="TdMouseOver()"> 실험용 TD
  		<span class="popuptext" id="myPopup">Example Pop UP!!</span>
</td>
		<td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
	<tr>
	<th><a href="#">5</a></th><th><a href="#">6</a></th><th><a href="#">7</a></th><th><a href="#">8</a></th><th><a href="#">9</a></th><th><a href="#">10</a></th><th><a href="#">11</a></th>
	</tr>
		<tr>
		<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
	<tr>
		<th><a href="#">12</a></th><th><a href="#">13</a></th><th><a href="#">14</a></th><th><a href="#">15</a></th><th><a href="#">16</a></th><th><a href="#">17</a></th><th><a href="#">18</a></th>
	</tr>
		</tr>
		<tr>
		<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
	<tr>
		<th><a href="#">19</a></th><th><a href="#">20</a></th><th><a href="#">21</a></th><th><a href="#">22</a></th><th><a href="#">23</a></th><th><a href="#">24</a></th><th><a href="#">25</a></th>
	</tr>
	<tr>
		<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
	<tr>
		<th><a href="#">26</a></th><th><a href="#">27</a></th><th><a href="#">28</a></th><th>1</th><th>2</th>
		<th>3</th><th>4</th>
	</tr>
		<tr>
		<td></td><td></td><td></td><td></td><td></td><td></td><td></td>
	</tr>
</table>
</div>
</article>
<aside id="SideBar">
dfdsf
</aside>
</div>
<!-- nav_right -->
<!-- footer -->
<footer id="Nav_Footer">
   <div id="Nav_Footer_div">
      <p> footer area </p>
   </div>
</footer>
</body>
</html>