#!/usr/bin/env bash

function runtest(){
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

  if common/build_tools/scripts/$1.sh
  then
    echo -e "\r✓ $1 succeeded\r"
  else
    echo -e "\r✖ $1 failed. See ${DIR}/$1.log"
  fi
}

runtest test_build & buildPID=$!
runtest test_links & linksPID=$!
runtest test_markdown_syntax & syntaxPID=$!
runtest test_guidelines & guidelinesPID=$!

echo -e "\r================================="
echo -e "\rRunning tests, please wait."
wait $buildPID $linksPID $syntaxPID $guidelinesPID

echo -e "\rAll tests completed."
echo -e "\r================================="
