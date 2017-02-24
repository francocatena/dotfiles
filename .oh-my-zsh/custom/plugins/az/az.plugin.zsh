AZ_ROOT_DIR=$HOME/.azure-cli
AZ_BIN_DIR=$AZ_ROOT_DIR/bin

if [[ -d $AZ_ROOT_DIR && -d $AZ_BIN_DIR ]]; then
  export PATH=$PATH:$AZ_BIN_DIR
  source "$AZ_ROOT_DIR/az.completion"
fi
