#!/usr/bin/env bash
circleci config process common/build_tools/circleci/config.yml > common/build_tools/circleci/process.yml && circleci local execute -c common/build_tools/circleci/process.yml --job build
