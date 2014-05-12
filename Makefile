
# Default target
all: build

# Build the site
build:
	@echo "Building site"
	@jekyll build --drafts

# Serve the site
serve:
	@echo "Serving site"
	@jekyll serve --watch --drafts --host localhost
