$(document).ready(function() {
	$("#slide-banner").owlCarousel({
		items: 1,
		loop: true,
		nav: true,
		navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
	});
});

var f = document.forms["fRegister"];
var username = f.username;
var address = f.address;
var email = f.email;
var phone = f.phone;
var note = f.note;

function register(){
	if(username.value == ""){
		alert("Tên không được bỏ trống!");
		return false;
	}
	if(address.value == ""){
		alert("Điền địa chỉ đầy đủ!");
		return false;
	}
	if(email.value == ""){
		alert("Nhập địa chỉ email");
		return false;
	}
	if(phone.value == ""){
		alert("Không bỏ trống số điện thoại!");
	 	return false;
	}
	if(note.value == ""){
		alert("Điền vào ghi chú!");
		return false;
	}

	alert("Thành Công!");
	return true;
}