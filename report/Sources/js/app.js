$(document).ready(function() {
	$("#slide-banner").owlCarousel({
		items: 1,
		loop: true,
		nav: true,
		navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});
});

window.onscroll = function() {scrollFuncton()};

function scrollFunction(){
	if(document.body.scrollTop > 200)
	{
		document.getElementById("myBtn").style.display = "block";
	} else {
		document.getElementById("myBtn").style.display = "none";
	}
}

function topFunction(){
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}