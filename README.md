# dotfiles

## 環境構築

1. Command Line Tools for Xcode のインストール

    ```sh
    xcode-select --install
    ```

2. Homebrew のインストール

    ```sh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

3. chezmoi のインストール

    ```sh
    brew install chezmoi
    ```

4. chezmoi による設定ファイルの展開

    ```sh
    chezmoi init --apply --verbose https://github.com/mtgod03/dotfiles.git
    ```

5. Homebrew Bundle によるツールのインストール

    ```sh
    brew bundle --global
    ```

## 設定ファイルの編集

[chezmoi](https://www.chezmoi.io/quick-start/) を参照
