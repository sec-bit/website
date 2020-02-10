RESOURCE_DIR = resources
TARGET_DIR = public
TEMPL = template

SOURCEs = $(wildcard *.md)
HTMLs = $(patsubst %.md,public/%.html,$(SOURCEs))

FLAGS  := \
			--template $(TEMPL)/default.html \
			--standalone \
			--from markdown \
			--to html5 \
			--katex \
			--include-before-body=$(TEMPL)/header.html \
			--include-after-body=$(TEMPL)/footer.html \
			--css resources/style.css

all: mkdir copy_resources $(HTMLs)

mkdir:
	mkdir -p $(TARGET_DIR)

copy_resources:
	cp -r $(RESOURCE_DIR) $(TARGET_DIR)

public/%.html: %.md
	pandoc $(FLAGS) -s $< -o $@

clean: 
	rm -rf $(TARGET_DIR)