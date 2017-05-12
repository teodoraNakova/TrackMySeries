<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head lang="en" lang="en">
<title>Track my series - rate, comment, love and track your
	favorite tv shows.</title>
<meta http-equiv="content-language" content="en" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="Trackmyseries keeps track of your current tv shows. Discover new tv shows, discuss and share them with your friends." />
<meta http-equiv="content-language" content="en" />
<link rel="stylesheet" type="text/css" href="style/styles.css" />
</head>
<body class="users users-view user">
	<div id="head">
		<div class="inner">
			<c:if test="${sessionScope.logged}">
				<h1 class="logo">
					<a href="dashboard.jsp">TrackMySeries!</a>
				</h1>
				<div class="navigation">
					<ul>
						<li class="inactive"><a href="shows.jsp">Shows</a></li>
						<li class="inactive"><a href="profile">Profile</a></li>
					</ul>
				</div>
				<div class="search-wrapper">
					<div class="search">
						<form action="/shows/search" id="searchform" method="get"
							accept-charset="utf-8">
							<div style="display: none;">
								<input type="hidden" name="key"
									value="843d5f985cf110e85bb100768b72c06bc9f9a5fe" />
							</div>
							<input name="showName" type="text" placeHolder="Search shows"
								id="searchField" class="text" />
						</form>
					</div>
				</div>
				<div class="service-wrapper">
					<ul class="service logged-in">
						<li class="menu">
							<div class="extra">
								<ul>
									<li><a href="profile"><h2><%=session.getAttribute("username")%>
												&nbsp;
											</h2></a></li>
									<li class="signout"><a href="logout"><h2>Sign out</h2></a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</c:if>
			<c:if test="${!sessionScope.logged}">
				<h1 class="logo">
					<a href="index.jsp">Track My Series</a>
				</h1>
				<div class="navigation">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li class="inactive"><a href="shows.jsp">Shows</a></li>
					</ul>
				</div>
				<div class="search-wrapper">
					<div class="search">
						<form action="/shows/search" id="searchform" method="get"
							accept-charset="utf-8">
							<input name="showName" type="text" placeHolder="Search shows"
								id="searchField" class="text" />
						</form>
					</div>
				</div>
				<div class="service-wrapper">
					<ul class="service logged-out">
						<li><a href="/TrackMySeries/register.jsp">Sign up</a></li>
						<li class="last"><a href="/TrackMySeries/login.jsp"
							class="modalLogin">Sign in</a></li>
					</ul>
				</div>
			</c:if>
		</div>
	</div>