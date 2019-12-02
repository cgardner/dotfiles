## Install

```bash
bash -s < <(curl -fsSL https://raw.githubusercontent.com/cgardner/dotfiles/master/install.sh)
```

## Import GPG Keys

```bash
gpg --import /path/to/key.asc
```

## Setting up working directories

### Post Clone

#### Signing Commits

1. Get the list of keys
    ```bash
    gpg --list-keys
    ```
2. Tell git which key to use to sign commits
    ```bash
    git config --global user.signingkey ABC123
    ```
3. Tell git to automatically sign commits
    ```bash
    git config commit.gpgsign true
    ```

