/* datepicker select  */
$(function() {
	$( "#datepicker" ).datepicker({
		dateFormat: "yy-mm-dd"
	});
});


$(document).ready(function(){
	$("#sdate").datepicker({
		dateFormat: "yy-mm-dd",
		onSelect: function(selected) {
			$("#edate").datepicker("option","minDate", selected)
		}
	});
	$("#edate").datepicker({ 
		dateFormat: "yy-mm-dd",
		onSelect: function(selected) {
			$("#sdate").datepicker("option","maxDate", selected)
		}
	});  
});
/* datepicker end */


function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g")
		$(link).parent().before(content.replace(regexp, new_id));
}


/* For dynamic select  */
jQuery(function() {
	var provinces;
	/*	$('#issue_customer_province').parent().hide(); */
	provinces = $('#issue_customer_province').html();
	return $('#issue_customer_area').change(function() {
		var area, escaped_area, options;
		area = $('#issue_customer_area :selected').text();
		escaped_area = area.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
		options = $(provinces).filter("optgroup[label='" + escaped_area + "']").html(); 
		if (options) {
			$('#issue_customer_province').html(options).prepend("<option value='' selected='selected'>- Select -</option>");
			return $('#issue_customer_province').parent().show();
		} else {
			$('#issue_customer_province').empty();
			return $('#issue_customer_province').parent().hide() && $('#issue_customer_city').parent().hide();
		}
	});
});


jQuery(function() {
	var cities;
	/*	$('#issue_customer_city').parent().hide(); */ 
	cities = $('#issue_customer_city').html();
	return $('#issue_customer_province').change(function() {
		var province, escaped_province, options;
		province = $('#issue_customer_province :selected').text();
		escaped_province = province.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
		options = $(cities).filter("optgroup[label='" + escaped_province + "']").html(); 
		if (options) {
			$('#issue_customer_city').html(options).prepend("<option value='' selected='selected'>- Select -</option>");
			return $('#issue_customer_city').parent().show();
		} else {
			$('#issue_customer_city').empty();
			return $('#issue_customer_city').parent().hide();
		}
	});
}); 

/* for webpage printing */
function doPrint(id) { 
	bdhtml=window.document.body.innerHTML; 
	sprnstr="<!--sprint-"+id+"-->"; 

	eprnstr="<!--eprint-"+id+"-->"; 
	prnhtml=bdhtml.substr(bdhtml.indexOf(sprnstr)+17); 
	prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr)); 
	window.document.body.innerHTML=prnhtml; 
	window.print(); 
}
