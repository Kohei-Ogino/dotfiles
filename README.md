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
```
$ pip3 install -r requirements.txt
```
## Update requirement.txt

- pip3

```
$ pip3 freeze > requirements.txt
```
