CUR_DIR = $(CURDIR)

build:
	cat ./Assets/css/peacock.css \
		| tr -d '\n' \
		| tr -d '\t' \
		| tr -s ' ' \
		| sed -E 's/[[:space:]]*:[[:space:]]*/:/g' \
		| sed -E 's/[[:space:]]*,[[:space:]]*/,/g' \
		| sed -E 's/[[:space:]]*\{[[:space:]]*/{/g' \
		| sed -E 's/[[:space:]]*\}[[:space:]]*/}/g' \
		| sed -E 's/[[:space:]]*>[[:space:]]*/>/g' \
		| sed -E 's/[[:space:]]*;[[:space:]]*/;/g' \
		> ./peacock.min.css
