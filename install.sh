#!/usr/bin/bash 
#
# An instalation script to create symlinks of my rcfiles from this
# directory to my home directory.
#

# The list of files that need to be symlinked to the users home directory.
rcfiles="vimrc tmux.conf zshrc"

# Get the full path to the directory in witch this script is resides so that it
# the symbolic links are properly created.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in $rcfiles; do
    ln -s -f $(DIR)/"$i" ~/."$i"
done
