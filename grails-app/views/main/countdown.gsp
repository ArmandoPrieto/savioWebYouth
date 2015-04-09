<!DOCTYPE html>

<html>

<head>
 <meta name="layout" content="noLayout"/>
	<meta charset="utf-8" />

	<title>Savio YM Web SIte</title>

	<!-- CSS -->
	<link rel="stylesheet" href="${resource(dir: 'css/counter', file: 'reset.css')}">
	<link rel="stylesheet" href="${resource(dir: 'fonts/counter', file: 'stylesheet.css')}">
	<link rel="stylesheet" href="${resource(dir: 'css/counter', file: 'style.css')}">
	
	
	<!--[if lt IE 9]>
		<link rel="stylesheet" href="css/ie.css">
	<![endif]-->

	<!-- IE fix for HTML5 tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- jQuery and Modernizr-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script src="${resource(dir: 'js/counter', file: 'modernizr.custom.js')}"></script>

	<!-- Countdown timer and other animations -->
	<script src="${resource(dir: 'js/counter', file: 'jquery.countdown.js')}"></script>
	<script src="${resource(dir: 'js/counter', file: 'script.js')}"></script>

</head>

<body>

	<header>
		<h1>We are working hard to finish this website</h1>
		<p>Our developer, <a href="https://twitter.com/armandoprieto">@armandoprieto</a>, is doing his best to finish this website before the counter.</p>
	</header>

	<div id="main">
		<%--
		<div id="links">
			<div class="home"><a href="">http://1stwebdesigner.com/</a></div>
			<div class="support"><a href="">http://support.1wd.com/</a></div>
			<div class="browser"><a href="">Google Chrome OS. 10.X.23</a></div>
			<div class="books"><a href="">http://1wd.co/e-books/</a></div>
			<div class="download"><a href="">http://1wd.com/download/</a></div>
			<div class="ups"><a href="">UPS Signed Worldwide</a></div>
		</div>
 --%>
		<div id="counter"></div>

		<%--<form action="" method="get">
			<input type="text" class="email" placeholder="Input your e-mail address here..." required />
			<input type="submit" class="submit" value="Let me Notified" />
		</form>

		<div class="social-media-arrow"></div>
--%>
		<footer>
			<%--
			<ul>
				
				<li><a class="twitter" href=""></a></li>
				<li><a class="facebook" href=""></a></li>
				
			</ul>
			--%>
		</footer>
	</div>
 		
</body>

</html>
