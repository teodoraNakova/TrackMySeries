<!DOCTYPE html>
<%@page import="model.Comment"%>
<%@page import="java.util.LinkedList"%>
<%@page import="model.dao.ShowDAO"%>
<%@page import="model.Show"%>
<html>
<head>
<title>Track My Series - Game of Thrones</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="Track My Series keeps track of your current tv shows. Discover new tv shows, discuss and share them with your friends." />
<meta http-equiv="content-language" content="en" />
<link rel="stylesheet" type="text/css" href="style/styles.css">
<link rel="stylesheet" type="text/css" href="style/rating.css">
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>

	<c:import url="header.jsp"/>	

	<div id="container">
		<div class="hp-inner">
			<div class="msg">
				<h2>Game of thrones</h2>
				<class="activedirect"> <a
					href="/shows/6952/Game_of_Thrones/episodes">Episodes</a>
			</div>

			<form action="follow" method="post">
				<input type="hidden" value="Game of thrones" name="show"> <input
					type="submit" value="Follow">
			</form>
			<div class="img">
				<img src="img/game_of_thrones.jpg" width="220" height="140"
					class="photo" alt="Game of Thrones" />
			</div>
			<div class="has-img">
				<div class="container">
					<div class="pad">
						<ul class="info-list clearfix">
							<li>Status - On hiatus</li>
							<li>Premiered - Dec 10, 2010</li>
							<li>Genre - Drama, Family, Fantasy, Adventure</li>
							<li>Country - United States</li>
							<li>Network - HBO</li>
							<li>Runtime - 60 minutes</li>
						</ul>
					</div>
				</div>
				<div class="summary-content">
					<div id="summary" class="boxed"
						style="background-color: NavajoWhite;">
						<p>Seven noble families fight for control of the mythical land
							of Westeros. Political and sexual intrigue abound. The primary
							families are the Stark, Lannister, and Baratheon families. Robert
							Baratheon, King of Westeros, asks his old friend Eddard Stark to
							serve as his chief advisor. Eddard, suspecting that his
							predecessor had been murdered, accepts so that he can investigate
							further. It turns out more than one family is plotting to take
							the throne. The Queen's family, the Lannisters, may be hatching
							an incestuous plot to take control. Across the sea, the last
							surviving members of the previously deposed ruling family, the
							Targaryens, are also plotting a return to power. The conflict
							between these families and others, including the Greyjoys, the
							Tullys, the Arryns, and the Tyrells, leads to war. Meanwhile, in
							the north, an ancient evil awakens. Amidst war and the political
							confusion, a brotherhood of misfits, The Night's Watch, is all
							that stands between the realms of men and the horrors beyond.</p>
					</div>
				</div>
			</div>
			<div class="comments">
				<div class="comments">
					<h3>Leave a comment</h3>
					<form action="add comment to show" method="post" name="comment"
						accept-charset="utf-8">
						<div class="commentform">
							<div class="form-wrapper clearfix">
								<div class="image">
									<img
										src="http://www.gravatar.com/avatar/da2143696c8d645c078fd045eee1ba15.jpg?s=80&amp;d=http%3A%2F%2Ffollowmy.tv%2Fimg%2Fanonymous.gif"
										width="80" height="80" alt="tedcho" />
								</div>
								<div class="form">
									<div class="input textarea required">
										<textarea name="comment" maxlength="2000" cols="30" rows="6"
											required="required" id="CommentText"></textarea>
									</div>
									<div class="comment-right">
										<div class="character-counter">
											<span id="commentCharCount">0</span>/2000
										</div>
										<div class="submit">
											<input type="hidden" value="Game of thrones" name="show">
											<input type="submit" value="Submit" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
					<h3>Comments</h3>
					<div id="comments">
						<%
							Show show = ShowDAO.getInstance().getAllShows()
																			.get("Game of thrones");
																	LinkedList<Comment> comments = show.getComments();
																	for (Comment c : comments) {
						%>
						<div id="summary" class="boxed"
							style="background-color: NavajoWhite;">
							<%
								out.print(c);
							%>
							<br> <br>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="style/rating.js"></script>
	<script>
		/**
		 * Demo in action!
		 */
		(function() {
			// SHOP ELEMENT
			var shop = document.querySelector('#shop');
			// DUMMY DATA
			var data = [
					{
						title : "Dope Hat",
						description : "Dope hat dolor sit amet, consectetur adipisicing elit. Commodi consectetur similique ullam natus ut debitis praesentium.",
						rating : 3
					},
					{
						title : "Hot Top",
						description : "Hot top dolor sit amet, consectetur adipisicing elit. Commodi consectetur similique ullam natus ut debitis praesentium.",
						rating : 2
					},
					{
						title : "Fresh Kicks",
						description : "Fresh kicks dolor sit amet, consectetur adipisicing elit. Commodi consectetur similique ullam natus ut debitis praesentium.",
						rating : null
					} ];
			// INITIALIZE
			(function init() {
				for (var i = 0; i < data.length; i++) {
					addRatingWidget(buildShopItem(data[i]), data[i]);
				}
			})();
			// BUILD SHOP ITEM
			function buildShopItem(data) {
				var shopItem = document.createElement('div');
				var html = '<div class="c-shop-item__img"></div>'
						+ '<div class="c-shop-item__details">'
						+ '<h3 class="c-shop-item__title">' + data.title
						+ '</h3>' + '<p class="c-shop-item__description">'
						+ data.description + '</p>'
						+ '<ul class="c-rating"></ul>' + '</div>';
				shopItem.classList.add('c-shop-item');
				shopItem.innerHTML = html;
				shop.appendChild(shopItem);
				return shopItem;
			}
			// ADD RATING WIDGET
			function addRatingWidget(shopItem, data) {
				var ratingElement = shopItem.querySelector('.c-rating');
				var currentRating = data.rating;
				var maxRating = 5;
				var callback = function(rating) {
					alert(rating);
				};
				var r = rating(ratingElement, currentRating, maxRating,
						callback);
			}
		})();
	</script>
</body>
</html>
