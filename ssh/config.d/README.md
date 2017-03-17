# Hostname configuration

Place here all hostname related configurations, each in a separated folder.

Example:

```
~/.ssh/config.d/
                example/
                        config
                        ssh-key
                        ssh-key.pub

                github/
                        config
                        github
                        github.pub
```

Each "config" file has to be constructed like this:

```
Host github
  Hostname     github.com
  User         git
  IdentityFile github
```

