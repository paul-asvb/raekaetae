https://www.youtube.com/watch?v=xsAyx2r1bQU
https://www.youtube.com/watch?v=Mc13Z2gboEk
39:49
https://www.youtube.com/watch?v=RBotJacQycc

https://www.youtube.com/watch?v=gkY6X-bziHQ

docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    "barichello/godot-ci:3.2.1" \
    godot -v --export "Mac OSX" raekaetae.zip
