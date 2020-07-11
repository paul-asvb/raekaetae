https://www.youtube.com/watch?v=xsAyx2r1bQU
https://www.youtube.com/watch?v=Mc13Z2gboEk
39:49
https://www.youtube.com/watch?v=RBotJacQycc

https://www.youtube.com/watch?v=gkY6X-bziHQ
docker run -e EXPORT_NAME="Mac OSX"  \
       -e OUTPUT_FILENAME="rkt-mac.zip" \
       -v $(pwd):/build/src \
       -v $(pwd)/output/mac:/build/output  \
         "barichello/godot-ci:3.2.1"
