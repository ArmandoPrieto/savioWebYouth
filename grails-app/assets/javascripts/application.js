// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap-image-gallery
//= bootstrap-image-gallery
//= jquery.fileupload 
//= jquery.fileupload-ip 
//= jquery.fileupload-ui
//= jquery.iframe-transport 
//= load-image
//= tmpl
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

$(document).ready(function () {
//	$('img').hide();
  	  $('img').load(function() {
  	        $(this).fadeIn('slow');
  	    });
	
	$('.navbar-collapse > ul > li').click(function(){
	
		if ($(this).has('ul').length<1) {
		    // It has at least one
			
			$('.navbar-collapse').removeClass('in');
		}
		
		
	});
	$('.navbar-collapse > ul > li > ul> li').click(function(){
			$('.navbar-collapse').removeClass('in');
	});
	
});
