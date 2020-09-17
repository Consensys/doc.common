#!/usr/bin/env bash

set -o pipefail

exec < /dev/tty

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
circleci config process .circleci/config.yml > .circleci/process.yml && circleci local execute -c .circleci/process.yml --job build > ${DIR}/test_build.log 2>&1
