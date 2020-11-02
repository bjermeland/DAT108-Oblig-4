const checkpassword = () => {
	let passord = document.getElementById('passord')
	let passord2 = document.getElementById('passord2')
	let validation = document.getElementById('validate-passwords')

	if (!isPasswordsEqual(passord, passord2)) {
		validation.classList.add('display')
		validation.classList.remove('hide')
	} else {
		validation.classList.add('hide')
		validation.classList.remove('display')
	}

}

const isPasswordsEqual = () => {
	let passord = document.getElementById('passord')
	let passord2 = document.getElementById('passord2')
	return (
		passord !== '' &&
		passord2 !== '' &&
		passord.value === passord2.value
	)
}