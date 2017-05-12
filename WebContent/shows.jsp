<!DOCTYPE html>
<html>
<head lang="en">
<title>Track my series - rate, comment, love and track your
	favorite tv shows.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="Trackmyseries keeps track of your current tv shows. Discover new tv shows, discuss and share them with your friends." />
<link rel="stylesheet" type="text/css" href="style/styles.css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
	<c:import url="header.jsp"/>
		<div id="container">
			<div class="hp-inner">
				<div class="top clearfix">
					<div class="left">
						<div class="msg">
							<h2>Follow your favorite shows</h2>
							<p>
								Track My Series <strong>keeps track</strong> of your current tv
								shows. <strong>Discover</strong> new tv shows.
							</p>
						</div>
						<div class="shows">
							<div class="item clearfix">
								<a href="game_of_thrones.jsp" title="Game of Thrones"
									class="tooltipme"><img src="img/got.png" width="130" height="100"
									alt="Game of Thrones" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/2783/Breaking_Bad" title="Breaking Bad"
									class="tooltipme"><img src="img/breaking_bad.png" width="130"
									height="100" alt="Breaking Bad" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/16164/Sherlock" title="Sherlock"
									class="tooltipme"><img src="img/sherlock.png" width="130"
									height="100" alt="Sherlock" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/5197/Doctor_Who" title="Doctor Who"
									class="tooltipme"><img src="img/dr_who.png" width="130"
									height="100" alt="Doctor Who" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/4980/Suits" title="Suits" class="tooltipme"><img
									src="img/suits.png" width="130" height="100" alt="Suits" /></a>
							</div>
							<a href="/shows/6765/Friends" title="Friends" class="tooltipme"><img
								src="img/friends.png" width="130" height="100" alt="Friends" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>