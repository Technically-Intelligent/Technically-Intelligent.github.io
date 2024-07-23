SASS_FILES := $(wildcard *.scss)
CSS_FILES := $(SASS_FILES:.scss=.css)

.PHONY: all clean

all: $(CSS_FILES)

%.css: %.scss
	sass $< $@

clean:
	rm -f $(CSS_FILES)

sass:
	sass --watch assets/sass/main.scss assets/css/main.css