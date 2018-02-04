const $greeting = document.getElementById('greeting')

const d = new Date()
const h = d.getHours()

// morning = 5 - 12
// afternoon = 12 - 19
if(h > 5 && h <= 12) {
	$greeting.textContent = 'good morning'
	document.title = 'good morning'
}
else if(h > 12 && h <= 19) {
	$greeting.textContent = 'good afternoon'
	document.title = 'good afternoon'
}
else {
	$greeting.textContent = 'good evening'
	document.title = 'good evening'
}
