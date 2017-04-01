
<!DOCTYPE html>
<html>
<head lang="en">
<title>Track my series - rate, comment, love and track your
	favorite tv shows.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="Trackmyseries keeps track of your current tv shows. Discover new tv shows, discuss and share them with your friends." />
<link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>

<jsp:include page="notLoggedTamplate.jsp"></jsp:include>
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
									class="tooltipme"><img src="got.png" width="80" height="60"
									alt="Game of Thrones" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/2783/Breaking_Bad" title="Breaking Bad"
									class="tooltipme"><img src="breaking_bad.png" width="80"
									height="60" alt="Breaking Bad" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/16164/Sherlock" title="Sherlock"
									class="tooltipme"><img src="sherlock.png" width="80"
									height="60" alt="Sherlock" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/5197/Doctor_Who" title="Doctor Who"
									class="tooltipme"><img src="dr_who.png" width="80"
									height="60" alt="Doctor Who" /></a>
							</div>
							<div class="item clearfix">
								<a href="/shows/4980/Suits" title="Suits" class="tooltipme"><img
									src="suits.png" width="80" height="60" alt="Suits" /></a>
							</div>
							<a href="/shows/6765/Friends" title="Friends" class="tooltipme"><img
								src="friends.png" width="80" height="60" alt="Friends" /></a>
						</div>
					</div>

					<div class="right signup hp-signup">
						<div id="homepageSignup">
							<h3>Sign up with your email and never loose track of your
								shows!</h3>
							<form action="register" autocomplete="off" method="post"
								accept-charset="utf-8">
								<div class="input text required">
									<input name="username" type="text" required="required"
										class="minLength:3 maxLength:15"
										tabindex="1" maxlength="255" placeholder="Username" />
								</div>
								<div class="input text required">
									<input name="email" type="text" required="required"
										class="minLength:7" tabindex="2" placeholder="Email" />
								</div>
								<div class="input password">
									<label>Digit/upper case letter/8 characters</label> <input
										type="password" name="password" required="required"
										class="minLength:8" tabindex="3" placeholder="Password" />
								</div>
								<div class="input password">
									<input type="password" name="confirm password" required="required"
										class="minLength:5" tabindex="3" placeholder="Confirm password" />
								</div>
								<div class="input text">
									<label>Country:</label> <select
										name="country">
										<option value="Bulgaria">Bulgaria</option>
										<option value="Romania">Romania</option>
										<option value="Greece">Greece</option>
										<option value="Other">Not Listed</option>
									</select>
								</div>

								<div class="input text required">
									<input type="number" name="age" required="required"
										class="minLength:1" tabindex="5" placeholder="Age" />
								</div>
								<div class="input signup">
									<input class="f-button" tabindex="8" type="submit"
										value="Create account" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>