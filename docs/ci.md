# Run the ci locally

`
docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    "barichello/godot-ci:3.2.1" \
    godot -v --export "Mac OSX" raekaetae.zip
`