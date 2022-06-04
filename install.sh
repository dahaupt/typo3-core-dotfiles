#!/usr/bin/bash

brew install drud/ddev/ddev
ddev start

# Setup SSH key
#ssh-keyscan review.typo3.org >> "${HOME}/.ssh/known_hosts"
#if [[ ! -z "${USER_SSH_KEY}" ]]; then
#    echo "${USER_SSH_KEY}" | base64 --decode > "${HOME}/.ssh/id_rsa"
#    chmod 0600 "${HOME}/.ssh/id_rsa"
#fi
