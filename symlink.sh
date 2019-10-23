#!/bin/bash

cd $(dirname $0)

for dotfile in .?*; do
    if [ ${dotfile} != '..' ] && [ ${dotfile} != '.git' ]; then
        ln -Fsb "${PWD}/${dotfile}" ${HOME}
    fi
done

exit 0
