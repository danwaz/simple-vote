<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Simple Voting -- PHP/Mysql</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="page-wrapper">
		<h1>Simple Voting -- PHP/Mysql</h1>
		<form id="js-form" action="/updateTable.php" method="POST">
			<p>
				<label for="email">Email</label>
				<input type="email" id="email" name="email" placeholder="email">
			</p>

			<p>
				<label for="video">Video</label>
				<select id="video" name="video">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</p>

			<p>		
				<label for="ref">Ref</label>
				<select id="ref" name="ref">
					<option>a</option>
					<option>b</option>
				</select>
			</p>

			<p>
				<label for="submit"></label>
				<input type="submit" id="submit" value="submit">
			</p>
			<span class="status"></span>
		</form>

		<div class="btn-container">
			<div class="btn" id="js-show-results">Show Results</div>
			<div class="btn" id="js-select-winner">Select Winner</div>
			<div class="btn"id="js-download-results">Download Results</div>
		</div>

		<table id="results-table">
		</table>
	</div>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
	<script src="/js/script.js"></script>
</body>
</html>