Dotvim
======

Personal vim configuration files.

Installation & Dependencies
===========================

$ git clone --recursive https://github.com/architekton/dotvim.git ~/.config/nvim

Python:

$ sudo pacman -S python python-pip yapf
$ pip install --user pylint

Go:

$ sudo pacman -S go
$ go get -u golang.org/x/tools/...

Rust:

$ sudo pacman -S rust
$ rustup toolchain install nightly
$ rustup default nightly
$ rustup component add rls rust-analysis rust-src
