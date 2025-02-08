
source ~/.shell/aliases
source ~/.shell/paths
source ~/.shell/startup

#!/bin/zsh

# Directory containing the include files
INCLUDE_DIR="$HOME/.shell"

# Files to skip
SKIP_FILES=("$INCLUDE_DIR/aliases" "$INCLUDE_DIR/paths" "$INCLUDE_DIR/startup")

# Check if the directory exists
if [ -d "$INCLUDE_DIR" ]; then
    # Loop through all files in the directory
    for file in "$INCLUDE_DIR"/*; do
        # Skip specified files
        if [[ ! " ${SKIP_FILES[@]} " =~ " ${file} " ]]; then
            # Source each file that is not in the skip list
            if [ -f "$file" ]; then
                source "$file"
            fi
        fi
    done
else
    echo "Directory $INCLUDE_DIR does not exist."
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/johnny/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/johnny/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/johnny/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/johnny/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

