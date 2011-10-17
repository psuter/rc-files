#!/bin/sh

tolink=".vimrc .vim .tmux.conf .gitconfig"

currentdir="$( cd "$( dirname "$0" )" && pwd )"

for tl in ${tolink}; do
    if [ -e "${HOME}/${tl}" ]; then
        echo "Something already exists at ${HOME}/${tl}... Skipping."
    else 
        echo "Creating a link ${tl} from ${HOME}..."
        ln -s "${currentdir}/files/${tl}" "${HOME}/${tl}"
    fi
done
