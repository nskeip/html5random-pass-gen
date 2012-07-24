all:
	lessc less/style.less > style.css
	coffee -c ./js/script.coffee