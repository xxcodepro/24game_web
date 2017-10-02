<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<html>
<!--   
<script>
function change_action1() {
	document.form1.setAttribute('action', "insert");
}

function change_action2() {
if(confirm("Are you sure to delete it?"))
	{
		document.form1.setAttribute('action', "delete");
		document.form1.submit();
	}	
	else
	{
		return false;
	}
}
</script>
-->
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>24 GAME</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/simple-sidebar.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<script type="text/javascript">
	window.history.forward(1);
</script>
<!-- 鎖右鍵 -->
<body  oncontextmenu="return false">
<body  onunload="if(event.clientY < 0) document.location=document.location.href">
<body   onkeydown="if(event.keyCode==8 || event.keyCode==116 || event.keyCode==123 || event.keyCode==37 || event.keyCode==18 || event.keyCode==85) return false;">
<body class="bg" onload="Showall()">

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
           <a>
              <img src="resources/img/header-01.png"  alt=""/> 
       	  </a>
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    
              </li>
                <li class="sidebar-brand">
                    
                </li>
                	
                <li>
                    <a href="/24game/welcome**">Home</a>
                </li>
                <li>
                    <a href="/24game/welcome**">Restart</a>
                </li>
                 <li>
                    <form name="logoutForm"><a href="javascript:formSubmit()">Sign out</a></form>
                </li>
                <li>
                    <div class="col-lg-12">
                    	<small>2016 &copy; 24GAME Website</small>
                    </div>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
       <form name="form1" action="24game" method="get">
        <div id="page-content-wrapper">
            <div class="container-fluid" style="max-width: 1200px; margin-top: 50px">
                <div class="row">
                   
                    <div class="col-lg-4 mainBG radius " style="max-width: 500px">
                       <a href="#menu-toggle" class="btn btn-success" id="menu-toggle">選單</a>
                       <br>
                        <img src="resources/img/header-02.png" alt="" style="width: 100%"/>
						<h4>Score:
							<span id="showscore"></span>
						</h4>
                        <h4>Time: 
							<span id="showtime"></span>
							seconds
						</h4>
						<!-- <h4>Health:
							<span id="showhealth"> </span>
							points 
						</h4>-->
						<div class="progress">
							<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" "  id="life">
								5
							</div>
						</div>
                           <input name="" type="submit" value="下一題" class="btn btn-block btn-warning" onclick="nextProblem()">
                           <input name="" type="button" value="回復" class="btn btn-block btn-warning" onclick="Back()">
                           <input name="" type="button" value="提示" class="btn btn-block btn-warning" onclick="Prompt()">
						   <br>
						    <c:forEach items="${answer}" var="a">
						   
                          	 <input id="prompt" name="fname" type="hidden" class="bg-primary radius" style="padding: 5px 10px" c:out value="${a.Formula}">
                          	 
                          	<!-- <strong> 提示字樣放置處 </strong> -->
                           </c:forEach>

                     </div>
                     <div class="container col-lg-7 numBG radius " >
						<c:forEach items="${problem}" var="p">
                          <div class=" radius col-lg-12 num_height">
							  <div class="num_btn">
							  		 <input id="D" type="button" class="btn num radius btn-info" c:out value="${p.D}" onclick="doSomething(this.id)">
							   </div>
							   	<div class="num_btn">
							  		<input id="B" type="button" class="btn num radius btn-info" c:out value="${p.B}" onclick="doSomething(this.id)">
							   </div>
							  <div class="num_btn">
							 		 <input id="A" type="button" class="btn num radius btn-info" c:out value="${p.A}" onclick="doSomething(this.id)">
							   </div>
							   <div class="num_btn">
							   		<input id="C" type="button" class="btn num radius btn-info" c:out value="${p.C}" onclick="doSomething(this.id)">
							   </div>
						  </div>
						  </c:forEach>
                           <div class="math_list" >
							<div class="symbolBG radius col-lg-12" >
							   
								<div class="math_btn">   
								<input name="" id="+" type="button" class=" btn symbol " value="+" onclick="doSomething(this.id)"></div>
								<div class="math_btn">   
								<input name="" id="-" type="button" class=" btn symbol" value="-" onclick="doSomething(this.id)"></div>
								<div  class="math_btn">   
								<input name="" id="*" type="button" class=" btn symbol" value="×" onclick="doSomething(this.id)"></div>
								<div class="math_btn">   
								<input name="" id="/" type="button" class=" btn symbol" value="÷" onclick="doSomething(this.id)"></div>
								
							 </div>
                  		 </div>
                    </div>
                 </div>
             </div>
        
        <!-- /#page-content-wrapper -->
		</div>
		<!-- 傳回後端 -->
		<input name="hp" id="hp" type="hidden" value="${hp}">
		<input name="seconds" id="seconds" type="hidden" value="${seconds}">
		<input name="score" id="score" type="hidden" value="${score}">
		<input name="win" id="win" type="hidden" value="" />
		<input name="log" id="log" type="hidden" value="${log}">
		<input name="version" id="version" type="hidden" value="${version}">
		<input name="degree" id="degree" type="hidden" value="${degree}">
		<input name="starttime" id="starttime" type="hidden" value="${starttime}">
		<input name="actiontime" id="actiontime" type="hidden" value="${actiontime}">
		<input name="timer" id="timer" type="hidden" value="${timer}">
		<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
	  </form>
	</div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    	<!---------------------------------------------------------------------------->>
	<sec:authorize access="hasRole('ROLE_USER') and !hasRole('ROLE_ADMIN')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	    
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		<c:if test="${pageContext.request.userPrincipal.name != null}">

		</c:if>
	</sec:authorize>
</body>
<script>
	<!-- start -->

	var score = document.getElementById("score").value;
	var s = document.getElementById("seconds").value;
	var hp = document.getElementById("hp").value;
	var log = document.getElementById("log").value;
	var starttime = document.getElementById("starttime").value;
	var actiontime = document.getElementById("actiontime").value;
	var version = document.getElementById("version").value;
	var timer = document.getElementById("timer").value;
	// show hp
	var elem = document.getElementById("life");	
	var width = hp * 20;
	elem.style.width = width + '%'; 
	
	function Showtime()
	{
		if(s > 0)
		{
			document.getElementById("showtime").innerHTML = s;
			setTimeout(Showtime,1000);   // 1秒
			s -= 1; 
		}
		else if(s == 0) 
		{
			document.getElementById("seconds").value = 0;
			document.form1.submit();
		}
	}
	function Showall()
	{
		starttime = Nowtime();
		Timer();
		document.getElementById("starttime").value = starttime;		
		document.getElementById("showscore").innerHTML = score;
		document.getElementById("life").innerHTML = hp;
		//	document.getElementById("showhealth").innerHTML = hp;
		Showtime();
	}
	
	function nextProblem() 	//	下一題
	{
		if(hp > 0) 
		{
			blood();
			document.getElementById("life").innerHTML = hp;
			hp--;
		}
		WinAndLose(win, score, s, hp);
		if(hp <= 0) alert("您的生命值已經歸零");
		document.form1.submit();
	}
	
	var promp = true;	
	function Prompt()	//	提示
	{
		if(version != "version1" && promp == true)
		{
			if(hp > 0) hp--;
			document.getElementById("prompt").type = "text";
			promp = false;
		}

	}
	
	function Nowtime()
	{
		var today = new Date();
		var year = today.getFullYear(); 
		var month = today.getMonth() + 1;
		var day = today.getDate();
		var hour = today.getHours();
		var minutes = today.getMinutes();
		var seconds = today.getSeconds();
		var nowtime = year + '-' + month + '-' + day + " " + hour + ":" + minutes + ":" + seconds;
		return nowtime;
	}
	
	var timestop = true;
	function Timer()
	{
		if(timer >= 0 && timestop == true)
		{
			setTimeout(Timer,1000);   // 1秒
			timer += 1; 
		}
	}
	
	function blood() 
	{
		 width -= 20;
		 elem.style.width = width + '%'; 
	}
	
	function WinAndLose(win, score, s, hp)	//	將勝負及資料回傳後端
	{
		document.getElementById("win").value = win;
		document.getElementById("score").value = score;
		document.getElementById("seconds").value = s;
		document.getElementById("hp").value = hp;
		document.getElementById("log").value = log;
		document.getElementById("timer").value = timer;
	}
	
	function GCD(a, b)	//	最大公因數
	{
		while(a % b != 0)
		{
			var t = b;
			b = a % b;
			a = t;
		}
		return b;
	}
	
	function display(ans)	//	顯示
	{
		var x = ans.numerator;
		var y = ans.denominator;
		if(y == 1)
		{
			document.getElementById(bt).value = "";
			document.getElementById(bt2).value = "";
			document.getElementById(bt2).value = x;
		}
		else
		{
			document.getElementById(bt).value = "";
			document.getElementById(bt2).value = "";
			document.getElementById(bt2).value = x + '/' + y;
		}
	}
	
	var back_frequency = 0;
	var user_button = new Array(3);
	var user_button2 = new Array(3);
	var user_operation = new Array(3);
	var user_value = new Array(2);
	var user_value2 = new Array(2);
	var recordtemp;
	var userlog="";
	var x = false, y = false;
	
	function recordAll(button, operation, button2)
	{
		if(back_frequency == 1)
		{
			user_button[0] = button;
			user_operation[0] = operation;
			user_button2[0] = button2;
		}
		else
		{
			if(check4 == false)
			{
				user_button[1] = button;
				user_operation[1] = operation;
				user_button2[1] = button2;
				check4 = true;
			}
			else
			{
				user_button[2] = button;
				user_operation[2] = operation;
				user_button2[2] = button2;
			}
		}
	}
	
	function recordValue(v1, v2)
	{
		if(back_frequency == 1) 
		{	
			user_value[0] = v1;
			user_value[1] = v2;
		}
		if(back_frequency == 2)
		{
			user_value2[0] = v1;
			user_value2[1] = v2;
		}
	}
	
	function Log()
	{
		//	step1
		actiontime = Nowtime();
		userlog += "Y" + actiontime + "Z";
		if(back_frequency == 1 || x == true) 
		{
			userlog += "L:" + user_button[0] + user_operation[0] + user_button2[0];
			recordtemp = user_button2[0];
			x = false;
		}
		//	step2
		else if (back_frequency == 2 && y == false)	
		{
			if(recordtemp == user_button2[1]) 
			{
				userlog +="M:" + user_button[1] + user_operation[1];	//	後被按
				recordtemp = user_button2[1];
			}
			else
			{
				if(recordtemp == user_button[1])	// 先被按
				{
					userlog += "M:" + user_operation[1] + user_button2[1];
					recordtemp = user_button2[1];
				}
				else	// 都不是
				{
					userlog += "M:" + user_button[1] + user_operation[1] + user_button2[1];
					recordtemp = user_button2[1];
				}
			}
			y = true;
		}
		//	step3
		else
		{
			if(recordtemp == user_button2[2]) userlog += "N:" + user_button[2] + user_operation[2];	//	後被按
			else userlog += "N:" + user_operation[2] + user_button2[2]; 	//	先被按
		}
		log = userlog;
	}
	
	function Back()	// 上一步
	{
		if(back_frequency == 1 && bt!="" && symbol!="" && bt2!="")
		{
			document.getElementById(user_button[0]).value = "";
			document.getElementById(user_button2[0]).value = "";
			document.getElementById(user_button[0]).value = user_value[0];
			document.getElementById(user_button2[0]).value = user_value[1];
			userlog += "#";
			x = true;
			check3 = true;
			back_frequency = 0;
		}
		if(back_frequency == 2 && bt!="" && symbol!="" && bt2!="")
		{
			document.getElementById(user_button[1]).value = "";
			document.getElementById(user_button2[1]).value = "";
			document.getElementById(user_button[1]).value = user_value2[0];
			document.getElementById(user_button2[1]).value = user_value2[1];
			userlog += "#";
			recordtemp = user_button2[1];
			check4 = false;
			y = false;
			back_frequency = 1;
		}
		
	}
	
	var Calculate = function(numerator, denominator)	//	建構式  設定分子分母
	{		
		if(denominator==1)
		{
			this.numerator = numerator;
			this.denominator = 1;
		}
		else
		{
			var gcd = GCD(numerator, denominator);
			this.numerator = numerator / gcd;
			this.denominator = denominator / gcd;
		}
	}
	
	//	+-*/
	Calculate.prototype.add = function(ob2)	//	傳入第二個物件
	{
		var An = (this.numerator * ob2.denominator) + (ob2.numerator * this.denominator);	//	新的分子
		var Ad = this.denominator * ob2.denominator;	//	 新的分母
		var Answer = new Calculate(An, Ad);		//	設定新的分子分母
		display(Answer);
	}
	
	Calculate.prototype.sub = function(ob2)
	{
		var An = (this.numerator * ob2.denominator) - (ob2.numerator * this.denominator);
		var Ad = this.denominator * ob2.denominator;
		var Answer = new Calculate(An, Ad);
		display(Answer);
	}
	
	Calculate.prototype.mul = function(ob2)
	{
		var An = this.numerator * ob2.numerator;
		var Ad = this.denominator * ob2.denominator;
		var Answer = new Calculate(An, Ad);
		display(Answer);
	}
	
	Calculate.prototype.div = function(ob2)
	{
		var An = this.numerator * ob2.denominator;
		var Ad = this.denominator * ob2.numerator;
		var Answer = new Calculate(An, Ad);
		display(Answer);
	}
	
	function calc(ob1, ob2, sym)	//	傳入物件1 物件2 及運算符號
	{
		var ans;
		if(sym == "+") ob1.add(ob2);
		if(sym == "-") ob1.sub(ob2);
		if(sym == "*") ob1.mul(ob2);
		if(sym == "/") 
		{
			if(document.getElementById(bt2).value == 0) alert("邏輯錯誤")
			else ob1.div(ob2);
		}
	}
	
	function free()
	{
		check2 = false;
		step = 1;
	}

	function pass()	//	通關
	{
		timestop = false;
		s += 20;
		win = true;
		document.getElementById("showscore").innerHTML = score;
		document.getElementById("showtime").innerHTML = s;
		check3 = true;
		check4 = false;
		back_frequency = 0;
		timer = 0;
		WinAndLose(win, score, s, hp);
		document.form1.submit();	//	刷新頁面
	}
	function fail()	// 失敗
	{
		if(hp > 0) 
		{
			hp--;
			blood();
			document.getElementById("life").innerHTML = hp;
		}
		win = false;
		//	document.getElementById("showhealth").innerHTML = hp;
		check3 = true;
		check4 = false;
		back_frequency = 0;
		WinAndLose(win, score, s, hp);
		if(hp <= 0) alert("您的生命值已經歸零");
		document.form1.submit();
	}
	
	var bt = "", bt2 = "", symbol = "";
	var check = true, check2 = false;	//	check	第一個數字被點選	check2 	運算符號被點選
	var check3 = true, check4 = false;	//	check3	第一次計算		check4	紀錄是否為第二步
	var step = 1, count = 24, win = "";
	
	function doSomething(clicked_id)
	{
		if(clicked_id != "")	//檢查 button 內不為空值才能計算
		{
			if(check3 == true)	back_frequency = 1;
			else back_frequency = 2;
			if(step == 1)
			{
				bt = clicked_id;
				if(bt != "+" && bt != "-" && bt != "*" && bt != "/")
				{
					if(document.getElementById(bt).value!="") step++;
					else step = 1;
				}
			}
			if(step == 2)
			{
				if(clicked_id == "+" || clicked_id == "-" || clicked_id == "*" || clicked_id == "/")
				{
					symbol = clicked_id;
					check2 = true;
					step++;
				}
			}
			if(check == true && check2 == true)	//	數值1 跟運算符號 被點選才執行
			{
				if(step == 3)
				{
					bt2 = clicked_id;
					if(bt2 != "+" && bt2 != "-" && bt2 != "*" && bt2 != "/")
					{
						if(document.getElementById(bt2).value != "" && bt2 != bt) 
						{
							var num1 = (document.getElementById(bt).value).toString();	//	將數值1 數值2轉為字串
							var num2 = (document.getElementById(bt2).value).toString();
							recordValue(num1, num2);	//	記錄 運算的數值
							if(num1.indexOf('/')> -1)
							{
								var splited = num1.split('/');	//	若為分數則切割字串
								var ob1 = new Calculate(parseInt(splited[0]), parseInt(splited[1])); //	轉回值 傳進物件
							}
							else var ob1 = new Calculate(parseInt(num1), 1);	//	整數
							if(num2.indexOf('/')> -1)
							{
								var splited = num2.split('/');
								var ob2 = new Calculate(parseInt(splited[0]), parseInt(splited[1]));
							}
							else var ob2 = new Calculate(parseInt(num2), 1);
							recordAll(bt, symbol, bt2);
							calc(ob1, ob2, symbol);
							Log();
							if(back_frequency == 1)	check3 = false;
							free();
						}
					}
				}
			}
		}
		
		//	判斷對錯
		if(document.getElementById(bt2).value == count && document.getElementById("B").value == "" && document.getElementById("C").value == "" && document.getElementById("D").value == "" ) pass();
		if(document.getElementById(bt2).value == count && document.getElementById("A").value == "" && document.getElementById("C").value == "" && document.getElementById("D").value == "" ) pass();
		if(document.getElementById(bt2).value == count && document.getElementById("A").value == "" && document.getElementById("B").value == "" && document.getElementById("D").value == "" ) pass();
		if(document.getElementById(bt2).value == count && document.getElementById("A").value == "" && document.getElementById("B").value == "" && document.getElementById("C").value == "" ) pass();
					
		if(document.getElementById(bt2).value != count && document.getElementById("B").value == "" && document.getElementById("C").value == "" && document.getElementById("D").value == "" ) fail();
		if(document.getElementById(bt2).value != count && document.getElementById("A").value == "" && document.getElementById("C").value == "" && document.getElementById("D").value == "" ) fail();
		if(document.getElementById(bt2).value != count && document.getElementById("A").value == "" && document.getElementById("B").value == "" && document.getElementById("D").value == "" ) fail();
		if(document.getElementById(bt2).value != count && document.getElementById("A").value == "" && document.getElementById("B").value == "" && document.getElementById("C").value == "" ) fail();
	}
</script>

</html>