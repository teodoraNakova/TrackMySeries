<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="model.Show"%>
<%@page import="model.User"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.dao.UserDAO"%>
<%@page import="java.util.TreeMap"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="users users-dashboard user">
<c:import url="header.jsp"/>
	<div id="container">
		<div class="hp-inner">
			<div class="top clearfix">
				<h1>
					Welcome,
					<%=session.getAttribute("username")%>! Browse your show list
					bellow:
				</h1>
				<%
					TreeMap<String, Show> following = UserDAO.getInstance()
							.getFollowingShows(
									UserDAO.getInstance().getAllUsers()
											.get(session.getAttribute("username")));
				for(Entry<String, Show> e : following.entrySet()) {
					out.append(e.getKey());
					Show show = e.getValue();
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>
