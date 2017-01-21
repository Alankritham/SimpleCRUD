
$(document).ready(function(){
	
	
	$('.save-box').hide();
		
	$('.edit-box').click(function(){
		$('.edit-box').hide();
		$('.save-box').show();

		$("td").prop('contentEditable',true);
		
		$(".save-box").click(function(){
			$("td").prop('contentEditable',false);	
			var id = $(this).parent().parent().attr('id');
			var username = $(this).parent().parent().find('.name').text();
			var password = $(this).parent().parent().find('.password').text();
			document.forms[0].action="edit.jsp?id="+id+"&username="+username+"&password="+password;
			document.forms[0].method="post";
			document.forms[0].submit();		
		});	
	});
	$('.save-box').click(function(){
		$('.save-box').hide();
		$('.edit-box').show();
	});
	
	// Add a column when add button is clicked
	
	$('#addB').click(function(){
		var table = document.getElementById("table");
		var row = table.insertRow();
		
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);
	
		cell1.innerHTML = "<input class='name' id='nameC' type='text' placeholder='username'/>";
		cell2.innerHTML = "<input class='password' id='passC' type='text' placeholder='password'/>";
		cell3.innerHTML = '<input style="background:antiquewhite; border:1px solid antiquewhite" type="button" value="save" onclick="javascript:saveA();">';
	});
});
function saveA(){
	var username = $('#nameC').val();
	var password = $('#passC').val();
	document.forms[0].action="register.jsp?username="+username+"&password="+password;
	document.forms[0].method="post";
	document.forms[0].submit();	
}


