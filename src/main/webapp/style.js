function ClickSignupButton() {
	var element_in = document.getElementById('signin');
	var element_up = document.getElementById('signup');

	element_in.classList.remove('is-show');
	element_up.classList.add('is-show');
}

function ClickSigninButton() {
	var element_in = document.getElementById('signin');
	var element_up = document.getElementById('signup');

	element_up.classList.remove('is-show');
	element_in.classList.add('is-show');
}

function PasswordCheck_1() {
    var password = document.getElementById('signin_password');
    
    if(password.length < 8) {
        alert('パスワードは8文字以上を入力してください。');
    }
}

function PasswordCheck_2() {
    var password = document.getElementById('signup_password');
    
    if(password.length < 8) {
        alert('パスワードは8文字以上を入力してください。');
    }
}