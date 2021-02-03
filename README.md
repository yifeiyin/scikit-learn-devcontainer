# scikit-learn devcontainer

A simple Docker development environment for scikit-learn.

You must have

* Docker
* Visual Studio Code
* [Remote Development Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Get Started

* Open the repository within VS Code, click on the remote development button on bottom left.

* Choose `Reopen in Container`

* Open the built-in terminal within VS Code.

* Edit `setup.sh` to point to your own fork of `scikit-learn`.

* Run the following command to setup everything.

```
./setup.sh
```

> This command can take a really really long time.

* You are good to go! `scikit-learn` is built and installed within `_work/scikit-learn` directory.

## Contributing

Feel free to open a PR if you have any suggestions!