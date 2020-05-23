formulae=$(subst Formula/,,$(wildcard Formula/*.rb))

info ::
	mkdir -p Info
	for formula in $(formulae); do \
		brew info --json "Formula/$$formula" | jq '.[0]? // .' > Info/$${formula/%rb/json}; \
	done

push-info :: info
	git add .
	git commit -m 'Update badge support data'
	git push

test ::
	brew update
	brew install -v Formula/*.rb
	brew audit --strict Formula/*.rb
	brew test Formula/*.rb
