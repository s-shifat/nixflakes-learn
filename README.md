# nixflakes-learn

I tried to learn nix flakes. This repo basically has a very minimal flask server.

My goal here was to reproduce the exact same project setup in vairious systems that has nix installed.

# Setup

1. Install [nix pacakge manager](https://nixos.org/download/). If you're already using nixos then this step is not necessary. If you are using windows, then spin up any linux wsl and install nix package manager.
2. If you want to run the application without cluttering your system simply run:

    ```bash
    nix run github.com:s-shifat/nixflakes-learn
    ```
    It will temporarily download and run the app.

    Or if you temporarily want to access the development shell then do:
    ```bash
    nix run github.com:s-shifat/nixflakes-learn
    ```

If you want to keep the source code in your system. Then simply clone the repo and `cd` into it. the you can either do `nix run` to launch the app or `nix develop` to access development shell.
