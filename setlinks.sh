#!/bin/sh

tolink=".vimrc .vim .tmux.conf .gitconfig .bibimbapconfig .todorc .morebashrc"

currentdir="$( cd "$( dirname "$0" )" && pwd )"

for tl in ${tolink}; do
    if [ -e "${HOME}/${tl}" ]; then
        echo "Something already exists at ${HOME}/${tl}... Skipping."
    else 
        echo "Creating a link ${tl} from ${HOME}..."
        ln -s "${currentdir}/files/${tl}" "${HOME}/${tl}"
    fi
done

echo "** Make sure to include $currentdir/scripts in your PATH variable ! **"

