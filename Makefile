NAME = draft-steph-lyra-00

html: $(NAME).html
text: $(NAME).txt

$(NAME).html: SPEC.md
	mmark $< | xml2rfc --v3 --html --no-external-js /dev/stdin -o $@

$(NAME).txt: SPEC.md
	mmark $< | xml2rfc --v3 --text /dev/stdin -o $@
