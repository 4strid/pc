#!/bin/bash
# run this as *not* root

# red standard err
yay stderred
# git autocomplete
git clone https://github.com/git/git --depth 1
cp -i git/contrib/completion/git-completion.bash ~/.git-autocomplete.bash
rm git -rf
# tty-clock
yay tty-clock
