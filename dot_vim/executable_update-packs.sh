#!/usr/bin/env bash

# Add update calls for new packs like seen below
# Install new packs with a call like
#     chezmoi git -- subtree add --prefix=dot_vim/pack/global/start/vim-fugitive --squash https://tpope.io/vim/fugitive.git master
#

set -Eeuo pipefail

update() {
    PREFIX="$1"
    GIT_URL="$2"
    GIT_REF="$3"

    chezmoi git -- subtree pull "--prefix=$PREFIX" --squash "$GIT_URL" "$GIT_REF"
}

update dot_vim/pack/global/start/vim-fugitive https://tpope.io/vim/fugitive.git master
update dot_vim/pack/global/start/ale https://github.com/dense-analysis/ale.git master

echo "Remember to chezmoi apply, update repo, push all that crap"

