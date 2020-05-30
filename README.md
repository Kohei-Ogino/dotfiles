dotfiles
====

my dotfiles


## Installation

```
$ git clone https://github.com/Kohei-Ogino/dotfiles.git
$ cd dotfiles/
$ sh dotfilesLink.sh
```

- Vim
```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- Vim Plugin
```
:PlugInstall
```

- pip3

https://www.it-swarm.dev/ja/python/requirementstxt%E3%82%92%E4%BD%BF%E7%94%A8%E3%81%97%E3%81%A6%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%99%E3%82%8B%E5%A0%B4%E5%90%88%E3%80%81%E5%8D%98%E4%B8%80%E3%81%AE%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8%E3%81%A7pip%E3%81%8C%E5%A4%B1%E6%95%97%E3%81%99%E3%82%8B%E3%81%AE%E3%82%92%E5%81%9C%E6%AD%A2%E3%81%97%E3%81%BE%E3%81%99/1044924155/
```
$ pip3 install -r requirements.txt
```
## Update requirement.txt

- pip3

```
$ pip3 freeze > requirements.txt
```
