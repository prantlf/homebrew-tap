test ::
	brew update
	brew install -v Formula/*.rb
	brew audit --strict Formula/*.rb
	brew test Formula/*.rb
