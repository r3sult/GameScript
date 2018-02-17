# Gamescript.sh

## Simple installation :

Add `gamescript` alias to your .bashrc file with copy/paste this command :

    echo 'alias gamescript="wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s --"'>>~/.bashrc; source ~/.bashrc

## Simple usage :

    gamescript
    gamescript -l fr
    gamescript -l fr bash

## What is it ?

It is a bash script to learn about :

* bash

## ToDo :

* archlinux (+ install)
* i3wm
* + more

##Types :

* "classic" = normal teaching, audio version + text
* "story" = learning with stories (several versions possible)

## Ideas

* the same command must be repeated at least 3 times in the script (+ clever time interval)

## Details :

* gen all in one file, dirty but simple

##Advanced Usage

Add arguments after `bash -s -- ` in curl/wget, here adding `-l fr bash` will launch gamescript for bash in french :

    wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr bash

Example : print Help in french :

    wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr --help

Or you can download `gamescript.sh` and execute it, or even create an alias in `.bashrc` for example :

    alias gamescript="wget --no-cache -q -O - https://raw.githubusercontent.com/justUmen/GameScript/master/gamescript.sh | bash -s -- -l fr"

This alias will launch gamescript always in french because of the `-l fr`.


Support me and my projects on https://www.patreon.com/justumen :-)

