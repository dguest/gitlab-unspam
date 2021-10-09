#!/usr/bin/env bash

set -eu

TOKEN=$(cat ~/.gitlab-api-token-readonly)
curl -s --header "Private-Token: $TOKEN" https://gitlab.cern.ch/api/v4/projects | jq '.'
