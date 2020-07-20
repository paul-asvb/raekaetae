# Run the ci locally

`
docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    "barichello/godot-ci:3.1" \
    godot -v --export "linux" raekaetae.zip
`