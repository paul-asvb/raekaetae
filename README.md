## Test build

```bash
docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    -v $PWD/export:/export \
    "barichello/godot-ci:3.2.1" \
    godot -v --export "HTML5" /export/raekaetae.zip
```
## Art

https://opengameart.org/content/space-shooter-extension-250

## Tutorials
https://www.youtube.com/watch?v=xsAyx2r1bQU
https://www.youtube.com/watch?v=Mc13Z2gboEk
https://www.youtube.com/watch?v=RBotJacQycc
https://www.youtube.com/watch?v=gkY6X-bziHQ
https://www.youtube.com/watch?v=E7f93ZM8qTo
