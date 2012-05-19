# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
	$("#download_types_form input[type=submit], #product_lines_form input[type=submit]").css("display", "none")
	$("#download_type").change ->
		if(this.selectedIndex != 0)
			$("#download_types_form").submit()
	$("#product_line").change ->
		if(this.selectedIndex != 0)
			$("#product_lines_form").submit()
