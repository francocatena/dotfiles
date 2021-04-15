# Enable iex history
export ERL_AFLAGS="-kernel shell_history enabled"

# Allow npm binaries to be avaliable on user's path
# See: https://wiki.archlinux.org/index.php/Node.js_#Allow_user-wide_installations
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# GCloud keyfile
export GOOGLE_CLOUD_KEYFILE_JSON=$HOME/.gcloud/teiqui-prod.json
export GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_CLOUD_KEYFILE_JSON

# K8s config files
export KUBECONFIG=KUBECONFIG:$HOME/.kube/config:$HOME/.kube/configs/teiqui-aws-kubeconfig.yaml

# Helm config
export HELM_TLS_ENABLE="true"
export HELM_TLS_HOSTNAME="localhost"

# ZSH autosuggestions config
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"

# Sensitive variables go here
if [ -f ~/.env ]; then
  source ~/.env
fi
