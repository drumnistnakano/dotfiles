## dotfilesとは

ホームディレクトリ配下のドットファイルをGihtubで管理

## 作成手順

- GitHub にて username/dotfiles というリポジトリを作成
- mkdir dotfiles && cd dotfiles
- ホームディレクトリ配下のドットファイルを dotfiles/ に mv する
- シンボリックリンク用のスクリプトファイルを用意する
- git init && git push

## 別のローカル環境に設定を適用
```
$ cd ~/
$ git clone https://github.com/drumnistnakano/dotfiles.git
$ sh dotfilesLink.sh
```