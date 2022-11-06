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
          bitbucket_app_user: ${{ secrets.BITBUCKET_APP_USER }}
          bitbucket_app_password: ${{ secrets.BITBUCKET_APP_PASSWORD }}
          target_repo: <owner>/<repo>
```
