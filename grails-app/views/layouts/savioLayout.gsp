<!DOCTYPE html>
<html lang="en">
   <head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta name="layout" content="savioLayout"/>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="St. Dominic Savio Church">
<meta name="keywords" content="Church, Salesian, Don Bosco, Dominic Savio, Los Angeles, Bosco, Non Profit ">
<meta name="author" content="Armando Prieto">
<title>Savio Youth Ministry</title>

 <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" />
<!-- Church Template CSS -->
 <link rel="stylesheet" href="${resource(dir: 'css', file: 'church.css')}" />
 <link rel="stylesheet" href="${resource(dir: 'css', file: 'fancybox.css')}" />

  <link rel="stylesheet" href="${resource(dir: 'css', file: 'ekko-lightbox.css')}" />
  <!--============== Social network buttons =================--> 
	 <style>
	 .social-buttons{
	 margin-top:10px;
	 margin-bottom:10px;
	 
	 }
	 			#twitter-widget-0 { 
			      width: 75px !important; 
			    }
			    #twitter-widget-1 { 
			      width: 75px !important; 
			    }
	 </style>
	 
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
<![endif]-->

<!-- Favicons -->
<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" />

<!-- Custom Google Font : Montserrat and Droid Serif -->

<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>
   
     	  <!-- Jquery -->
    <g:javascript library="jquery" plugin="jquery"/>
          <!-- Bootstrap -->
   
  
   
      <g:layoutHead />
   </head>
   <body>
     <g:layoutBody/>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
    
<!-- Bootstrap core JavaScript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'owl.carousel.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'ketchup.all.js')}"></script>
<script src="${resource(dir: 'js', file: 'fancybox.js')}"></script>

<!--============== EVENT CAROUSEL =================--> 

<script src="${resource(dir: 'js', file: 'ekko-lightbox.js')}"></script>

<script>
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
	navText: [
      "<span class='nav-arrow left'></i>",
      "<span class='nav-arrow right'></i>"
      ],
    responsive:{
        0:{
            items:1
        },
		550:{
            items:2
        },
        768:{
            items:3
        },
        992:{
            items:4
        }
    }
});

$('.owl-carousel2').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
	navText: false,
    responsive:{
        0:{
            items:1
        }
    }
});

$('.owl-carousel3').owlCarousel({
	 loop:true,
	 margin:10,
	    nav:true,
		navText: [
	      "<span class='nav-arrow left'></i>",
	      "<span class='nav-arrow right'></i>"
	      ],
	    responsive:{
	        0:{
	            items:1
	        },
			550:{
	            items:2
	        },
	        768:{
	            items:3
	        },
	        992:{
	            items:8
	        }
	    }
});
</script> 

<!--============== IMAGE GALLERY =================--> 

<script>
$(document).ready(function() {
 $('.fancybox').fancybox();		

 /*Menu smooth slide in case of fragment*/
 if ("${fragment?fragment:'null'}" !='null') {
	
	
	var target = "#${fragment}";
	 var $target = $(target);
    
    	 $('html, body').stop().animate({
 	        'scrollTop': $target.offset().top -90
 	    }, 'fast', 'swing');
 }

 /*Menu smooth slide*/
 $('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top -90
	    }, 'slow', 'swing');
	});

 	
});			
</script> 

<!--============== SUBSCRIBE FORM =================--> 

<script>

$(function(){
 var shrinkHeader = 300;
  $(window).scroll(function() {
    var scroll = getCurrentScroll();
      if ( scroll >= shrinkHeader ) {
           $('.navbar').addClass('shrink');
        }
        else {
            $('.navbar').removeClass('shrink');
        }
  });
function getCurrentScroll() {
    return window.pageYOffset || document.documentElement.scrollTop;
    }
});
	
</script> 

<!--============== SUBSCRIBE FORM =================--> 

<script>
$(document).ready(function() {
	$('#subscribeForm').ketchup().submit(function() {
		if ($(this).ketchup('isValid')) {
			var action = $(this).attr('action');
			$.ajax({
				url: action,
				type: 'POST',
				data: {
					email: $('#address').val()
				},
				success: function(data){
					$('#result').html(data);
				},
				error: function() {
					$('#result').html('Sorry, an error occurred.');
				}
			});
		}
		return false;
	});

});
</script>
<!--============== Boostrap Light Box =================--> 
<script>      
$(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) { event.preventDefault(); $(this).ekkoLightbox(); });       
</script> 




   </body>
</html>