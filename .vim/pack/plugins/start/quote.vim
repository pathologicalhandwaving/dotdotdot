function! EchoQuote(quote)
	echo a:quote
end function

command -nargs=1 Quote call EchoQuote()
