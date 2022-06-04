#!/usr/bin/bash

_projects=(
    https://github.com/TYPO3/typo3/
)

_workspace_project="$(git -C "$GITPOD_REPO_ROOT" config --get remote.origin.url)";

if [[ "${_projects[@]}" =~ (^| )${_workspace_project}($| ) ]]; then {
  brew install drud/ddev/ddev
  ddev start
} fi

# Setup SSH key
#ssh-keyscan review.typo3.org >> "${HOME}/.ssh/known_hosts"
#if [[ ! -z "${USER_SSH_KEY}" ]]; then
#    echo "${USER_SSH_KEY}" | base64 --decode > "${HOME}/.ssh/id_rsa"
#    chmod 0600 "${HOME}/.ssh/id_rsa"
#fi
