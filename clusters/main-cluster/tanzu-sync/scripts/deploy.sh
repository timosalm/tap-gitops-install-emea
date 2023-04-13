#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail
#set -o xtrace

ytt -f tanzu-sync/app/config -f cluster-config/config/tap-install/.tanzu-managed/version.yaml --data-values-file tanzu-sync/app/values/  --ignore-unknown-comments | kapp deploy -a tanzu-sync -f- --diff-changes --yes