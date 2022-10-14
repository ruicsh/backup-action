#!/usr/bin/env sh
set -eu

main() {
  mkdir -p ~/.ssh
  echo "${INPUT_SSH_PRIVATE_KEY:?}" >~/.ssh/id_rsa
  chmod 600 ~/.ssh/id_rsa

  export GIT_SSH_COMMAND="ssh -v -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -l ${INPUT_SSH_USERNAME}"
  git remote add backup "${INPUT_TARGET_REPO_URL:?}"
  git push --tags --force --prune backup "refs/remotes/origin/*:refs/heads/*"
}

main
