
today=$(shell date '+%Y-%m-%d')

.PHONY: article
article:
	@read -p "title? : " title \
		&& cp templates/article.md _posts/${today}-$$title.md \
		&& echo "📝 create new article _posts/${today}-$$title.md !!"

.PHONY: lint
lint:
	@$(shell which textlint) **/*.md
