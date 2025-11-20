# SDKMAN
# sdkman is a bash script function that needs to be loaded
#
# Example:
# if [[ $(type -t sdk) == "" ]]; then
#   source "$DEV_SCRIPT_PATH/setup/sdkman.sh"
# fi
#
export SDKMAN_DIR=${SDKMAN_DIR:-"$HOME/.sdkman"}
SDKMAN_INIT_FILE="${SDKMAN_DIR}/bin/sdkman-init.sh"
if [[ ! -s "$SDKMAN_INIT_FILE" ]]; then
  echo "sdkman init file was not found and is mandatory (Path: $SDKMAN_INIT_FILE)"
  echo "You can"
  echo "  * install sdkman"
  echo "  * or overwrite the <.sdkman> dir by setting the SDKMAN_DIR env"
  return 1
fi
# We disable `set -o nounset` to avoid unbound variable errors
set +u
# shellcheck disable=SC1090
source "${SDKMAN_INIT_FILE}"
