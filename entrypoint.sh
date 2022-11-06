#!/usr/bin/env sh
set -eu

main() {
  user=${INPUT_BITBUCKET_APP_USER}
  token=${INPUT_BITBUCKET_APP_PASSWORD}
  repo=${INPUT_TARGET_REPO}
  target_repo_url="https://${user}:${token}@bitbucket.org/${repo}.git"

  git remote add backup "${target_repo_url}"
  git push --tags --force --prune backup "refs/remotes/origin/*:refs/heads/*"
}

main
