.PHONY: spec spec-docker all clean

MD_FILE := specification.md
TEX_FILE := specification.tex
PDF_FILE := specification.pdf

all: spec

spec:
	pandoc $(MD_FILE) --to=latex --standalone --citeproc --output $(TEX_FILE)
	pandoc $(TEX_FILE) --to=pdf --standalone --citeproc --output $(PDF_FILE)

docker-spec:
	docker run --rm -v$(CURDIR):/home -w/home pandoc-rust:latest make

clean:
	rm -rf $(TEX_FILE) $(PDF_FILE)

