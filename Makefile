today=$(shell date '+%Y-%m-%d')

.PHONY: article
article:
	@title=$(shell echo $$(read -p 'title? : ' tmp ; echo $$tmp | sed -r "s/\s+/-/g")) \
		&& cp templates/article.md _posts/${today}-$$title.md \
		&& echo "📝 create new article _posts/${today}-$$title.md !!"

.PHONY: lint
lint:
	@npx textlint **/*.md

.PHONY: deps
deps:
	yarn install
