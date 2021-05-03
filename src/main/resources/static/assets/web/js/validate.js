var showError = document.getElementsByClassName("show-error")
let incorrectInput = '';
var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
var btnlogin = document.querySelector("#login");
    let email = document.querySelector("#email");
    let password = document.querySelector("#password");
    let phone = document.querySelector("#phone");
function loadPage() {
    for (let i = 0; i <= showError.length; i++) {
        showError[i].style.display = "none"
    }
}

$(email).change(function() {
	var emailstring = $(email).val();
 	if(!/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(emailstring)) {
		incorrectInput = "Email không hợp lệ";
	    showError[0].style.display = "block"
        showError[0].innerHTML = incorrectInput
		return false;
		
	}
	 else {
		return true;
	}

});
	$(phone).change(function() {
	var phonestring = $(phone).val();
 	if(! /^\d{10}$/.test(phonestring)) {
		incorrectInput = "Số điện thoại không hợp lệ";
	    showError[4].style.display = "block"
        showError[4].innerHTML = incorrectInput
		return false;
		
	}
	 else {
		return true;
	}
});