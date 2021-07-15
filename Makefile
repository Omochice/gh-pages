
today=$(shell date '+%Y-%m-%d')

.PHONY: article
article:
	@read -p "title? : " title \
		&& touch _posts/${today}-$$title.md \
		&& echo "📝 create new article _posts/${today}-$$title.md !!"


