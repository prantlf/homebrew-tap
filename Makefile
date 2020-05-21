all ::
	brew install -v *.rb
	brew audit --strict *.rb
	brew test *.rb

update ::
	brew update
