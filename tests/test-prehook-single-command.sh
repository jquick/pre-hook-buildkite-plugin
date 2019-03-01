set -eu

export BUILD_STATUS=0
export BUILDKITE_BUILD_NUMBER=12345
export BUILDKITE_BUILD_CHECKOUT_PATH="."
export BUILDKITE_PLUGIN_PRE_HOOK_COMMAND="export BUILD_STATUS=100"

. hooks/pre-command

if [[ "$BUILD_STATUS" == "100" ]]; then
    echo "TESTS PASSED!"
    exit 0
else
    exit 1
fi
