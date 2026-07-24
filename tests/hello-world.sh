#!/bin/bash
set -o errexit
export TEST_USER="root"

CONTAINER_NAME="application-server"

echo "Checking that the static page is served..."
result="$(docker exec "$CONTAINER_NAME" wget -qO- http://localhost:8080)"
if [[ "$result" != *"Hello world!"* ]]; then
  echo "ERROR: Expected response to contain 'Hello world!', got: ${result}"
  exit 1
fi

bats tests/common/base.bats
