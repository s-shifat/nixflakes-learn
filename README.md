# nixflakes-learn

I tried to learn [nix flakes](https://nixos.wiki/wiki/Flakes). This repo basically has a very minimal flask server.

My goal here was to reproduce the exact same project setup in vairious systems that has nix installed.

# Setup

1. Install [nix pacakge manager](https://nixos.org/download/) if you are using linux or macOS. You can do either multi-user or single user installation here. If you're already using nixos then skip this step. If you are using windows, then spin up any linux wsl and install nix package manager there. Sanity Check: to ensure nix is working properly please refer to this [ChatGPT Conversation](https://chatgpt.com/share/68bf93da-f03c-800c-afc4-94a7a959fb41)  
2. If you don't have flakes enabled, then you have to do this step. It's only one time setup. If you did multi-user installation in step-1, then create /etc/nix/nix.conf file or if you did signle user install in step 1 then create ~/.config/nix/nix.conf and add these to the file:
    ```nix
    build-users-group = nixbld
    experimental-features = nix-command flakes
    ```
3. If you want to run the application without cluttering your system simply run:

    ```bash
    nix run github.com:s-shifat/nixflakes-learn
    ```
    It will temporarily download and run the app.

    Or if you temporarily want to access the development shell then do:
    ```bash
    nix run github.com:s-shifat/nixflakes-learn
    ```

If you want to keep the source code in your system. Then simply clone the repo and `cd` into it. then you can simply either do `nix run` to launch the app or `nix develop` to access development shell. It will create an isolated environment only for the project scope.
