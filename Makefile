formulae=$(subst Formula/,,$(wildcard Formula/*.rb))
casks=$(subst Casks/,,$(wildcard Casks/*.rb))

all :: update info

update ::
	update-formula Formula/jsonlint2.rb Formula/newchanges.rb \
		Formula/update-formula.rb Formula/vp.rb Formula/yaml2json.rb \
		Casks/lite-xl.rb

info ::
	mkdir -p Info
	for formula in $(formulae); do \
		HOMEBREW_DEVELOPER=1 brew info --json "Formula/$$formula" | jq '.[0]? // .' > Info/$${formula/%rb/json}; \
	done
	for cask in $(casks); do \
		HOMEBREW_DEVELOPER=1 brew info --cask --json=v2 "Casks/$$cask" | jq '.[0]? // .' > Info/$${cask/%rb/json}; \
	done

push-info :: info
	git add .
	git commit -m 'Update badge support data'
	git push

test ::
	brew update
	brew install -v Formula/*.rb
	brew install -v --cask Casks/*.rb
	brew audit --strict Formula/*.rb
	brew audit --strict Casks/*.rb
	brew test Formula/*.rb
	brew test Casks/*.rb
