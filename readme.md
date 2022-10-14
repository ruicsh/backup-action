# ruicsh/backup-action

```yaml
name: backup

on: [push, delete]

jobs:
  backup:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
        with:
          fetch-depth: "0"
      - uses: ruicsh/backup-action@main
        with:
          target_repo_url: git@bitbucket.org:<owner>/<repo>.git
          ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
```
