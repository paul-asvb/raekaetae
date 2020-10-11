build:
	docker run -v ${PWD}:/build/src -w /build/src barichello/godot-ci:3.2.1 godot -v --export HTML5 ./index.zip