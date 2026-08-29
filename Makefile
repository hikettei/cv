.PHONY: build

build: cv.pdf

cv.pdf: cv.typ
	typst compile $< $@
