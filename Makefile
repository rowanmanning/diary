
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

# Generate thumbnails from new images
thumbs:
	@echo "Generating thumbs"
	@sh _scripts/thumbs.sh

# Generate thumbnails from all images
thumbs-all:
	@echo "Generating thumbs"
	@sh _scripts/thumbs.sh -f

.PHONY: thumbs
