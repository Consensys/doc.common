# Local tests helper scripts

Scripts in this directory help documentation contributors test changes before pushing them as a pull request.

## Prerequisites

- [CircleCI Local CLI](https://circleci.com/docs/2.0/local-cli/) installed
- [Docker](https://docs.docker.com/get-docker/) installed

## Running the scripts

Run the following commands from the project root:

- `common/build_tools/scripts/test_build.sh` to test the documentation build.
- `common/build_tools/scripts/test_guidelines.sh` to test for writing style.
- `common/build_tools/scripts/test_links.sh` to verify hyperlinks.
- `common/build_tools/scripts/test_lint.sh` to test that the Markdown syntax is correct.
- `common/build_tools/scripts/test_all.sh` to run all tests.

You can [preview your documentation changes](https://github.com/ConsenSys/doc.common/wiki/MkDocs-And-Custom-Markdown-Guide#preview-documentation-locally).
