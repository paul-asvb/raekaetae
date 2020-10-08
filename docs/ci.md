## Continous Integration

TODO:  build the latest release on master branch on every commit/MR

- [ ] Build the game in a github action
- [ ] Add build files for all OSs (as listet in .github/workflows/godot-ci.yml)
- [ ] Release game binaries for all OSs to github releases (https://github.com/actions/create-release)
- [ ] Release the HTML5 Version of the game to a github page (https://github.com/marketplace/actions/deploy-to-github-pages)

# Run the ci locally (not working the moment)

```bash
docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    "barichello/godot-ci:3.1" \
    godot -v --export "linux" raekaetae.zip
```


```bash
docker run \
    -v $(pwd):/build/src \
    -w /build/src \
    -v $PWD/export:/export \
    "barichello/godot-ci:3.2.1" \
    godot -v --export "HTML5" /export/index.zip >&0
```