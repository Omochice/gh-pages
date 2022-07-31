today := `date '+%Y-%m-%d'`
editor := env_var_or_default("EDITOR", "vim")


article:
    __PATH=_posts/{{today}}-$(read -p 'title? : ' tmp ; echo $tmp | sed -r "s/ +/-/g").md && cp templates/article.md $__PATH && {{editor}} $__PATH

lint *files:
    npx textlint {{files}}

deps:
    yarn install

