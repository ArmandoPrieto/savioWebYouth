﻿<%@ page import="common.BannerType" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta, title, CSS, favicons, etc. -->
 <meta name="layout" content="savioLayout"/>

</head>
<body>

<h1>Hola</h1>
 <canvas id="myCanvas" width="2000" height="2000" style="border:1px solid #000000;">
</canvas> 


<script>
var mousePressed = false;
var lastX, lastY;
var ctx;

function InitThis() {
    ctx = document.getElementById('myCanvas').getContext("2d");

    $('#myCanvas').mousedown(function (e) {
        mousePressed = true;
        Draw(e.pageX - $(this).offset().left, e.pageY - $(this).offset().top, false);
    });

    $('#myCanvas').mousemove(function (e) {
        if (mousePressed) {
            Draw(e.pageX - $(this).offset().left, e.pageY - $(this).offset().top, true);
        }
    });

    $('#myCanvas').mouseup(function (e) {
        mousePressed = false;
    });
	    $('#myCanvas').mouseleave(function (e) {
        mousePressed = false;
    });
}

function Draw(x, y, isDown) {
    if (isDown) {
        ctx.beginPath();
        ctx.strokeStyle = $('#selColor').val();
        ctx.lineWidth = $('#selWidth').val();
        ctx.lineJoin = "round";
        ctx.moveTo(lastX, lastY);
        ctx.lineTo(x, y);
        ctx.closePath();
        ctx.stroke();
    }
    lastX = x; lastY = y;
}
	
function clearArea() {
    // Use the identity matrix while clearing the canvas
    ctx.setTransform(1, 0, 0, 1, 0, 0);
    ctx.clearRect(0, 0, ctx.canvas.width, ctx.canvas.height);
}

window.requestAnimFrame = (function(callback) {
    return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
    function(callback) {
      window.setTimeout(callback, 1000 / 60);
    };
  })();
function getRadianAngle(degreeValue) {
    return degreeValue * Math.PI / 180;
} 


/*
var c = document.getElementById("myCanvas");
var ctx = c.getContext("2d");

var x = 150;
var y = 150;
var w = 100;
var h = 100;*/
function star(ctx, x,y,w,h){
	ctx.beginPath(); 

	ctx.setTransform(1, 0, 0, 1, 0, 0);


	ctx.rect(x,y,w,h);
	ctx.translate(x,y);
	var i=0;
	while(i<360){

		ctx.rotate(getRadianAngle(10));
		ctx.rect(0,0,w,h);
		ctx.translate(0,0);

		i++;
	}
	ctx.closePath();
	ctx.stroke();
	
}


function writeMessage(canvas, message) {
	
  var context = canvas.getContext('2d');
  context.clearRect(0, 0, canvas.width, 100);
  context.font = '18pt Calibri';
  context.fillStyle = 'black';
  context.fillText(message, 10, 25);
}
function rect(canvas, x, y){
	
	var context = canvas.getContext('2d');
	//  context.rect(x, y, 100, 100);
	star(context,x,y,100,100);
	//context.stroke();
}
function getMousePos(canvas, evt) {
  var rect = canvas.getBoundingClientRect();
  return {
    x: evt.clientX - rect.left,
    y: evt.clientY - rect.top
  };
}
var canvas = document.getElementById('myCanvas');
var context = canvas.getContext('2d');
/*
canvas.addEventListener('mousemove', function(evt) {
  var mousePos = getMousePos(canvas, evt);
  var message = 'Mouse position: ' + mousePos.x + ',' + mousePos.y;
  writeMessage(canvas, message);
}, false);*/

/*canvas.addEventListener('mousedown', function(evt) {
	var mousePos = getMousePos(canvas, evt);
	rect(canvas,mousePos.x ,mousePos.y);
	canvas.save();
	}, false);
*/
InitThis();
</script>

</body>
</html>
