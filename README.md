https://www.youtube.com/watch?v=xsAyx2r1bQU
https://www.youtube.com/watch?v=Mc13Z2gboEk
39:49
https://www.youtube.com/watch?v=RBotJacQycc

https://www.youtube.com/watch?v=gkY6X-bziHQ

docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    -v $PWD/export:/export \
    "barichello/godot-ci:3.2.1" \
    godot -v --export "HTML5" /export/raekaetae.zip

docker run  -v $PWD/export:/usr/share/nginx/html:ro -p 80 -d nginx