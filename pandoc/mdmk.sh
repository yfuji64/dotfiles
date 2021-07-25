#!/bin/bash

#https://adbird.hatenablog.com/entry/2016/12/20/024747

pandoc $1 -f markdown -t html5 -c ~/dotfiles/pandoc/light.css -o tmp.html
wkhtmltopdf --disable-smart-shrinking --margin-top 20 --margin-left 20 --margin-right 20 --margin-bottom 20 --footer-center '[page]/[topage]' tmp.html main.pdf
