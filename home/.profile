#!/bin/bash

#################
# handy aliases #
#################

# ssh
alias sssh='ssh -o TCPKeepAlive=no -o ServerAliveInterval=15'

# bundler
alias bi='bundle install'
alias be='bundle exec'
alias bep='bundle exec padrino'

# misc
alias fu='touch tmp/restart.txt' # I'm usually angry at this point.
alias servethis="python -m SimpleHTTPServer 8000"
alias tree="tree -I node_modules"

# always open multiple files in tabs
alias vi='vi -p'

#######################
# command line voodoo #
#######################

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

parse_git_branch()
{
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

proml ()
{
    local BLUE="\[\033[0;34m\]";
    local RED="\[\033[0;31m\]";
    local LIGHT_RED="\[\033[1;31m\]";
    local GREEN="\\[\\033[0;32m\\]";
    local LIGHT_GREEN="\[\033[0;32m\]";
    local WHITE="\[\033[0;37m\]";
    local LIGHT_GRAY="\[\033[0;37m\]";
    local YELLOW="\[\033[0;33m\]";
    local BG_BLUE="\[\033[44m\]";
    case $TERM in
        xterm*)
            TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
        *)
            TITLEBAR=""
        ;;
    esac;
        PS1="$YELLOW\u$RED\w$BG_BLUE\$(parse_git_branch)$LIGHT_GREEN \t \$ $WHITE";
    PS2='> ';
    PS4='+ '
}

proml

#######
# RVM #
#######

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"

#################################################
# handy grep aliases, but trying to use ack now #
#################################################

export GREP_COLOR='1;33;41'
alias ugrep='grep -rI --color'
alias ucgrep='grep -rI --color --context=5'

#################
# misc env vars #
#################

# see http://stackoverflow.com/questions/6970545/make-error-installing-ruby-1-9-2-with-rvm-and-readline-under-osx-lion
export ARCHFLAGS="-arch x86_64"
export ARCH="-arch x86_64"
export VISUAL=vim
export EDITOR=vim

################################
# Added by the Heroku Toolbelt #
################################

export PATH="/usr/local/heroku/bin:$PATH"

if [ -f "$HOME/.private/.profile" ]; then
  . "$HOME/.private/.profile"
fi
