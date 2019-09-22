# Enable iex history
export ERL_AFLAGS="-kernel shell_history enabled"

# Allow npm binaries to be avaliable on user's path
# See: https://wiki.archlinux.org/index.php/Node.js_#Allow_user-wide_installations
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# K8s config files
export KUBECONFIG=KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/k8s-cirope-kubeconfig.yaml

# Sensitive variables go here
if [ -f ~/.env ]; then
  source ~/.env
fi
