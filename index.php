<?php
require_once('lib/conn.php');
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Kepegawaian BBPPK - Lembang Jawa Barat</title>
     <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">  
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />		
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<?php include "head.php";?>
		<script type="text/javascript">
			$(document).ready(function() {
				if (!($.browser.safari || $.browser.mozilla)) {
					$("form").hide();
					$("<div class='error' />").html("<h2>Browser Not Supported</h2>The Treemo Labs Dashboard utilizes cutting-edge browser technologies.<br /><br />We currently only support <ul><li>Firefox (version &gt; 3.5 recommended)</li><li>Safari (version &gt; 3 recommended)</li></ul>").appendTo('#login-content');
				}
			});
		</script>		
		<style type="text/css">
			* {
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
			
			body {
				margin: 0;
				pading: 0;
				color: #fff;
				background: url('img/bg-login.png') repeat #1b1b1b;
				font-size: 14px;
				text-shadow: #050505 0 -1px 0;
				font-weight: bold;
			}
			
			li {
				list-style: none;
			}
			#jam{
				position : fixed;
				width : 200px;
				height : 110px;
				right:9px;
				bottom:35px;
				font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
				-moz-box-shadow: 1px 1px 3px #4d4f50;
				-webkit-box-shadow: 1px 1px 5px #4d4f50;
				box-shadow: 1px 1px 3px #4d4f50;
				padding-top : 4px;
				padding-left : 3px;
				padding-right : 3px;
				text-align:left;
				background: url('img/bg-login-top.png') repeat #fff;
				color:black;
				text-align:center;
			}
			#dummy {
				position: absolute;
				top: 0;
				left: 0;
				border-bottom: solid 3px #777973;
				height: 250px;
				width: 100%;
				background: url('img/bg-login-top.png') repeat #fff;
				z-index: 1;
			}
			
			#dummy2 {
				position: absolute;
				top: 0;
				left: 0;
				border-bottom: solid 2px #545551;
				height: 252px;
				width: 100%;
				background: transparent;
				z-index: 2;
			}
			
			#login-wrapper {
				margin: 0 0 0 -160px;
				width: 320px;
				text-align: center;
				z-index: 99;
				position: absolute;
				top: 0;
				left: 50%;
			}
			
			#login-top {
				height: 120px;
				padding-top: 140px;
				text-align: center;

			}
			
			label {
				width: 70px;
				float: left;
				padding: 8px;
				line-height: 14px;
				margin-top: -4px;
			}
			
			input.text-input {
				width: 200px;
				float: right;
				-moz-border-radius: 4px;
                -webkit-border-radius: 4px;
				border-radius: 4px;
				background: #fff;
				border: solid 1px transparent;
				color: #555;
				padding: 8px;
				font-size: 13px;
			}
			
			input.button {
				float: right;
				padding: 6px 10px;
				color: #fff;
				font-size: 14px;
				background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#459300));
				text-shadow: #050505 0 -1px 0;
				background-color: #459300;
				-moz-border-radius: 4px;
                -webkit-border-radius: 4px;
				border-radius: 4px;
				border: solid 1px transparent;
				font-weight: bold;
				cursor: pointer;
				letter-spacing: 1px;
				margin-right:5px;
			}
			
			input.button:hover {
				background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#a4d04a), color-stop(80%, #76b226));
				text-shadow: #050505 0 -1px 2px;
				background-color: #a4d04a;
				color: #fff;
			}
			
			div.error {
				padding: 8px;
				background: rgba(52, 4, 0, 0.4);
				-moz-border-radius: 8px;
                -webkit-border-radius: 8px;
				border-radius: 8px;
				border: solid 1px transparent;
				margin: 6px 0;
			}
		</style>		
	
</head>
<body id="login">
   <div id="login-wrapper" class="png_bg">
			<div id="login-top">
				<img src="img/logo.png" alt="BBPPK LEMBANG SISTEM INFORMASI KEPEGAWAIAN" width="100%" height="*"/>			
			</div>
						<div id="login-content">
					 <form action="login.php" method="post"><p class="error"><?php if(!empty($_SESSION['error'])) echo $_SESSION['error']; ?></p>			
					<p>  <input type="hidden" name="op" value="inputtrans" />
						<label>Username</label>
						<input type="text" name="username" class="text-input" size="25" maxlength="35" autofocus required />
					</p>
					<br style="clear: both;" />
					<p>
						<label>Password</label>
						<input type="password" name="password" class="text-input" size="25" maxlength="35" required />
					</p>
					<br style="clear: both;" />
					<p>
						<input type="submit" class="button" name="kirim" value="Login" /> <input type="reset" class="button" name="hapus" value="Reset" />
					</p>
					
				</form>
			</div>
		</div>
		<div id="dummy"></div>
		<div id="dummy2"></div>
        <div id="jam"><blink>Untuk melihat demo program hubungi wajatmaka@gmail.com</blink><br><br>By wajatmaka</div>
                   
</body>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('tbody tr:odd').css('background-color','#b6d7e7');
    });
</script>
</html>
