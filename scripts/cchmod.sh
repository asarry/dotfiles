#!/bin/bash

# chmod with conditions
cchmod () {    
    shopt -s nullglob dotglob

    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            chmod 775 "$pathname"
            cchmod "$pathname"
        elif [[ "$pathname" =~ \.py ]]; then
            chmod 775 "$pathname"
        else
            chmod 644 "$pathname"
        fi
    done
}

cchmod "$1"
