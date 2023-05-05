<!DOCTYPE html>
<html>
<head>
	<title>Countdown Calculator</title>
</head>
<body>
	<h1>Countdown Calculator</h1>
	<p id="countdown"></p>

	<script>
		// Set the date to count down to
		var countDownDate = new Date("August 10, 2023 00:00:00").getTime();

		// Update the countdown every 1 second
		var countdownInterval = setInterval(function() {
			// Get today's date and time
			var now = new Date().getTime();

			// Calculate the time remaining
			var timeRemaining = countDownDate - now;

			// Calculate days, hours, minutes, and seconds remaining
			var days = Math.floor(timeRemaining / (1000 * 60 * 60 * 24));
			var hours = Math.floor((timeRemaining % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
			var minutes = Math.floor((timeRemaining % (1000 * 60 * 60)) / (1000 * 60));
			var seconds = Math.floor((timeRemaining % (1000 * 60)) / 1000);

			// Update the HTML with the time remaining
			document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
				+ minutes + "m " + seconds + "s ";

			// If the countdown is over, stop updating and display a message
			if (timeRemaining < 0) {
				clearInterval(countdownInterval);
				document.getElementById("countdown").innerHTML = "EXPIRED";
			}
		}, 1000);
	</script>
</body>
</html>
