TEX = pandoc
src = template.tex private.yml
FLAGS = --pdf-engine=xelatex

dhilipsiva-invoice.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm dhilipsiva-invoice.pdf
