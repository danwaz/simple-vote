$(function(){

	//Handle Form Submission
	$('#js-form').on({
		submit : function(e) {
			e.preventDefault();
			var formData = $(this).serialize();
			
			//simple error handling
			if(formData.match('=(?=&)')){
				$('.status').html('Error - Incomplete Form');
				return false;
			}

			//update table with voting entry
			$.ajax({
				url : '/updateTable.php',
				type : 'POST',
				data : formData,
				success : function(data, textStatus, jqXHR) {
					$('.status').html(data);
				},
				error : function(data, textStatus, jqXHR) {
					$('.status').html(data);
				}
			});
		}
	});

	//Load results from database
	$('#js-show-results').on({
		click : function(e) {
			$.ajax({
				url : '/showResults.php',
				type : 'GET',
				dataType : 'json',
				success : function (data){
					buildTable(data);
				}
			});
		}
	});

	//Choice random winner from database
	$('#js-select-winner').on({
		click : function(e) {
			$.ajax({
				url : '/selectWinner.php',
				type : 'GET',
				dataType : 'json',
				success : function (data){
					$('.status').html('Winner: ' + data.email);
				}
			});
		}
	});

	//Download results file
	$('#js-download-results').on({
		click : function(e) {
			$.ajax({
				url : '/downloadResults.php',
				type : 'GET',
				success : function (){
					$('.status').html('File Downloaded');
					$('body').append('<iframe src="/results.csv" style="display:none;"></iframe>');
				}
			});
		}
	});

	//Constructs a table from passed in json data
	var buildTable = function (data) {
		var $container = $('#results-table');
		$container.empty();

		var key;
		var headingText = '<tr>';
		for(key in data[0]){
			headingText += '<th>' + key + '</th>';
		}
		headingText += '</tr>';
		$container.append(headingText);

		var i;
		var row;
		for(i=0; i < data.length; i++){
			row = '<tr>';
			for(key in data[i]){
				row += '<td>' + data[i][key] + '</td>';
			}
			row += '</td>';
			$container.append(row);
		}
	}

});