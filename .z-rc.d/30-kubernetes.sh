#!/bin/zsh

# setup kubectl alias
if command -v kubectl &> /dev/null
then
	alias k=kubectl
fi


# setup kubebuilder completion
if command -v kubebuilder &> /dev/null
then
	source <(kubebuilder completion zsh)
fi

# setup kubeconfig files
kubeconfig_setup="$HOME/.kube/setup.sh"
if [ -f "$kubeconfig_setup" ]; then
	source "$kubeconfig_setup"
fi
