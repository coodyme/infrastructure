#!/bin/bash

vscode_install() {
	echo 'VSCODE INSTALL'
	
	https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
}

vscode_setup() {
	echo 'VSCODE SETUP'
	
	code --install-extension achaq.vercel-theme
	code --install-extension antfu.browse-lite
	code --install-extension antfu.iconify
	code --install-extension antfu.vite
	code --install-extension apollographql.vscode-apollo
	code --install-extension AykutSarac.jsoncrack-vscode
	code --install-extension bierner.color-info
	code --install-extension bierner.github-markdown-preview
	code --install-extension bierner.markdown-checkbox
	code --install-extension bierner.markdown-emoji
	code --install-extension bierner.markdown-footnotes
	code --install-extension bierner.markdown-mermaid
	code --install-extension bierner.markdown-preview-github-styles
	code --install-extension bierner.markdown-yaml-preamble
	code --install-extension bradlc.vscode-tailwindcss
	code --install-extension burkeholland.simple-react-snippets
	code --install-extension dbaeumer.vscode-eslint
	code --install-extension dotenv.dotenv-vscode
	code --install-extension eamodio.gitlens
	code --install-extension EditorConfig.EditorConfig
	code --install-extension formulahendry.auto-close-tag
	code --install-extension formulahendry.auto-rename-tag
	code --install-extension GitHub.copilot-labs
	code --install-extension GitHub.copilot-nightly
	code --install-extension GitHub.remotehub
	code --install-extension github.vscode-github-actions
	code --install-extension GitHub.vscode-pull-request-github
	code --install-extension golang.go
	code --install-extension GraphQL.vscode-graphql
	code --install-extension GraphQL.vscode-graphql-execution
	code --install-extension GraphQL.vscode-graphql-syntax
	code --install-extension hashicorp.terraform
	code --install-extension mongodb.mongodb-vscode
	code --install-extension ms-azuretools.vscode-docker
	code --install-extension ms-ossdata.vscode-postgresql
	code --install-extension ms-python.isort
	code --install-extension ms-python.python
	code --install-extension ms-python.vscode-pylance
	code --install-extension ms-vscode-remote.remote-containers
	code --install-extension ms-vscode-remote.remote-ssh
	code --install-extension ms-vscode-remote.remote-ssh-edit
	code --install-extension ms-vscode-remote.vscode-remote-extensionpack
	code --install-extension ms-vscode.js-debug-nightly
	code --install-extension ms-vscode.live-server
	code --install-extension ms-vscode.remote-explorer
	code --install-extension ms-vscode.remote-repositories
	code --install-extension ms-vscode.remote-server
	code --install-extension ms-vscode.vscode-typescript-next
	code --install-extension ms-vsliveshare.vsliveshare
	code --install-extension msjsdiag.vscode-react-native
	code --install-extension PKief.material-icon-theme
	code --install-extension pranaygp.vscode-css-peek
	code --install-extension Prisma.prisma
	code --install-extension redhat.vscode-yaml
	code --install-extension rust-lang.rust-analyzer
	code --install-extension statelyai.stately-vscode
	code --install-extension streetsidesoftware.code-spell-checker
	code --install-extension styled-components.vscode-styled-components
	code --install-extension vintharas.learn-vim
	code --install-extension WallabyJs.console-ninja
	code --install-extension WallabyJs.dingo-vscode
	code --install-extension WallabyJs.quokka-vscode
	code --install-extension WallabyJs.wallaby-vscode
}

vscode_show_extensions() {
	code --list-extensions | xargs -L 1 echo code --install-extension
}
