<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<c:if test="${!ajaxRequest}">
<html>
<head>
	<link rel="shortcut icon" href="img/pokemon.ico">
	<title>Signup for your pokedex</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" href="css/form/style.css">
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	<script  src="js/form/index.js"></script>

</head>
<body>
</c:if>

<video autoplay loop poster="img/back1.jpg" id="bgvid">

	<source src="img/video/back5.mp4" type="video/mp4">

</video>
<%--<div class="container">--%>
		<%--<form id="sign-form" class="sign-form">--%>
			<%--<ol class="questions">--%>
				<%--<li>--%>
					<%--<span><label>Hi, What is your First Name?</label></span>--%>
					<%--<input class="active" id="fname" name="fname" type="text" placeholder="Enter your first name" autofocus/>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label>Hi, What is your Last Name?</label></span>--%>
					<%--<input id="lname" name="lname" type="text" placeholder="Enter your last name" />--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label for="email">Enter you email</label></span>--%>
					<%--<input id="email" name="email" type="text" placeholder="Email" />--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label for="address">Hi, What is your Address?</label></span>--%>
					<%--<input id="address" name="address" type="text" placeholder="Address" />--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label for="password">Choose a password</label></span>--%>
					<%--<input id="viewpswd" name="password" type="text" placeholder="this your password"/>--%>
					<%--<input id="password" name="password" type="password" placeholder="make sure you don't forget" autofocus/>--%>
					<%--<span id="show-pwd" class="view"></span>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label for="phone">Enter your phone number in format (###) ###-####</label></span>--%>
					<%--<select name="countryCode" class="country"  >--%>
						<%--<option data-countryCode="GB" value="91">(+91) INDIA </option>--%>
						<%--<option data-countryCode="GB" value="44">(+44) UK </option>--%>
						<%--<option data-countryCode="US" value="1">(+1) USA </option>--%>
						<%--<optgroup label="Other countries">--%>
							<%--<option data-countryCode="DZ" value="213"> (+213)Algeria</option>--%>
							<%--<option data-countryCode="AD" value="376"> (+376) Andorra</option>--%>
							<%--<option data-countryCode="AO" value="244">(+244) Angola </option>--%>
							<%--<option data-countryCode="AI" value="1264"> (+1264) Anguilla</option>--%>
							<%--<option data-countryCode="AG" value="1268">(+1268) Antigua &amp; Barbuda </option>--%>
							<%--<option data-countryCode="AR" value="54">(+54) Argentina </option>--%>
							<%--<option data-countryCode="AM" value="374"> (+374) Armenia</option>--%>
							<%--<option data-countryCode="AW" value="297">(+297) Aruba </option>--%>
							<%--<option data-countryCode="AU" value="61"> (+61) Australia</option>--%>
							<%--<option data-countryCode="AT" value="43">(+43) Austria </option>--%>
							<%--<option data-countryCode="AZ" value="994"> (+994) Azerbaijan</option>--%>
							<%--<option data-countryCode="BS" value="1242">(+1242)Bahamas </option>--%>
						<%--</optgroup>--%>
					<%--</select>--%>
					<%--<input id="phone" name="phone" type="text" autofocus/>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label for="birthdate">Hi, What is your Birth Date?</label></span>--%>
					<%--<input id="birthdate" name="birthdate" type="text" placeholder="Enter your Birth Date 1970-01-01" autofocus/>--%>
				<%--</li>--%>
				<%--<li>--%>
					<%--<span><label>Are you a boy, or a girl?</label></span>--%>
					<%--<label><input id="boy" name="gender" type="radio" value="true" />Boy</label>--%>
					<%--<label><input id="girl" name="gender" type="radio" value="false" />Girl</label>--%>
				<%--</li>--%>
				<%--<li><p style="margin-top: 45px;font-size: 32pt;float:right">--%>
					<%--<a href="#" style="color:white;text-decoration:none" id="signup">sign up</a></p>--%>
				<%--</li>--%>
			<%--</ol>--%>
			<%--<div id="next-page" alt="Kiwi standing on oval"></div>--%>
			<%--<div class="error-message"></div>--%>
		<%--</form>--%>
		<%--<h1 id="wf" style="opacity:0;width: 600px; margin-top:1.1em;display:none; margin-bottom:1em">Thank you</h1>--%>
<%--</div>--%>




<%--<c:if test="${!ajaxRequest}">--%>
<%--<html>--%>
<%--<head>--%>
	<%--<title>Signup for your pokedex</title>--%>
	<%--<link href="css/form.css" rel="stylesheet"  type="text/css" />--%>
	<%--<script type="text/javascript" src="js/jquery.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--</c:if>--%>
<div class="container">
	<div id="formsContent">
		<form:form id="sign-form" class="sign-form" method="post" modelAttribute="formBean">
			<div class="header">
		  		<h2>Signup</h2>
		  		<c:if test="${not empty message}">
					<div id="message" class="success"><c:out value="${message}"/></div>
		  		</c:if>
		  		<s:bind path="*">
		  			<c:if test="${status.error}">
				  		<div id="message" class="error">Form has errors</div>
		  			</c:if>
		  		</s:bind>
			</div>
				<ol class="questions">
					<li>
						<span><form:label path="fname">
							Hi, What is your First Name? <form:errors path="fname" cssClass="error" />
						</form:label></span>
						<form:input class="active" path="fname" name="fname" type="text" placeholder="Enter your first name" />
					</li>
					<li>
						<span><form:label path="lname">
							So, What is your Last Name? <form:errors path="lname" cssClass="error" />
						</form:label></span>
						<form:input path="lname" name="lname" type="text" placeholder="Enter your lastname"/>
					</li>
					<li>
						<span><form:label path="fav_generation">
							So, What is your Favorite Generation(1-6)? <form:errors path="fav_generation" cssClass="error" />
						</form:label></span>
						<form:input path="fav_generation" name="fav_generation" type="text" placeholder="Enter your fav_generation"/>
					</li>
					<li>
						<span><form:label path="password">
							Choose a password <form:errors path="password" cssClass="error" />
							</form:label></span>
						<input id="viewpswd" type="text" placeholder="this your password" />
						<form:password path="password" name="password" placeholder="make sure you don't forget" />
						<span id="show-pwd" class="view"></span>
					</li>
					<li>
						<span><form:label path="birthDate">
							Get it, what is your Birth Date?<form:errors path="birthDate" cssClass="error" />
						</form:label></span>
						<form:input path="birthDate" name="birthDate" type="text" placeholder="Enter your Birth Date 1970-01-01"/>
					</li>
					<li>
						<span><form:label path="phone">
							Enter your phone number in format (###) ###-####<form:errors path="phone" cssClass="error" />
						</form:label></span>
						<select name="countryCode" class="country"  >
							<option id="o1" data-countryCode="GB" value="91">(+91) INDIA </option>
							<option id="o2" data-countryCode="GB" value="44">(+44) UK </option>
							<option id="o3" data-countryCode="US" value="1">(+1) USA </option>
							<optgroup label="Other countries">
								<option data-countryCode="DZ" value="213"> (+213)Algeria</option>
								<option data-countryCode="AD" value="376"> (+376) Andorra</option>
								<option data-countryCode="AO" value="244">(+244) Angola </option>
								<option data-countryCode="AI" value="1264"> (+1264) Anguilla</option>
								<option data-countryCode="AG" value="1268">(+1268) Antigua &amp; Barbuda </option>
								<option data-countryCode="AR" value="54">(+54) Argentina </option>
								<option data-countryCode="AM" value="374"> (+374) Armenia</option>
								<option data-countryCode="AW" value="297">(+297) Aruba </option>
								<option data-countryCode="AU" value="61"> (+61) Australia</option>
								<option data-countryCode="AT" value="43">(+43) Austria </option>
								<option data-countryCode="AZ" value="994"> (+994) Azerbaijan</option>
								<option data-countryCode="BS" value="1242">(+1242)Bahamas </option>
							</optgroup>
						</select>
						<form:input path="phone" name="phone" />
					</li>
					<li>
							<span><form:label path="addr">
							Then, what is your Address? <form:errors path="addr" cssClass="error" />
							</form:label></span>
							<form:input path="addr" name="addr" placeholder="Address" />
					</li>
					<li>
						<span><form:label path="email">
							Then, please enter you email <form:errors path="email" cssClass="error" />
						</form:label></span>
						<form:input path="email" name="email" placeholder="Email" />
					</li>
					<li>
						<span><label>Are you a boy, or a girl?</label></span>
						<label id="boy"><form:radiobutton path="gender" value="true" />Boy</label>
						<label id="girl"><form:radiobutton path="gender" value="false" />Girl</label>
					</li>
					<li>
						<button name="submit" style="color: transparent" type="submit"><img src="img/Pokemon.png" width="100px"/></button>
					</li>
				</ol>
			<div id="next-page" alt="Kiwi standing on oval"></div>
			<div class="error-message"></div>
		</form:form>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#form").submit(function() {
					$.post($(this).attr("action"), $(this).serialize(), function(html) {
						$("#formsContent").replaceWith(html);
						$('html, body').animate({ scrollTop: $("#message").offset().top }, 500);
					});
					return false;
				});
			});
		</script>
	</div>
</div>
<c:if test="${!ajaxRequest}">
</body>
</html>
</c:if>