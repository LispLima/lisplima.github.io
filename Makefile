# Installation:
#
#     $ bundle install --path vendor/bundle
#     $ bundle exec jekyll serve

TAR    ?= tar
CURL   ?= curl
JEKYLL ?= jekyll

THEME_REV = gh-pages
THEME_TGZ = https://github.com/chibicode/solo/archive/$(THEME_REV).tar.gz
THEME_TGZ_OPTS = --strip-components 1  \
	--exclude='LICENSE'            \
	--exclude='README.md'          \
	--exclude='_config.yml'        \
	--exclude='.gitignore'         \
	--exclude='404.html'           \
	--exclude='index.md'

serve:
	$(JEKYLL) serve

import-theme:
	$(CURL) -sL "$(THEME_TGZ)" | $(TAR) xz $(THEME_TGZ_OPTS)
