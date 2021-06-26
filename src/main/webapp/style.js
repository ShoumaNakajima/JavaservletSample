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