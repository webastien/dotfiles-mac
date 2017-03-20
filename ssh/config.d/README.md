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

## SSH agent auto add key
Since Sierra is coming out, SSH agent doesn't load your keys at startup. Type `ssh-add -l` to verify current loaded identities.

You can execute `ssh-add -A` each time (boring) or automaticaly with this command: (effective on next reboot)
```
curl https://raw.githubusercontent.com/MiteshShah/admin/master/Mac/ssh_add.plist -o Library/LaunchAgents/ssh_add.plist
```

**Note:** Be sure having added your keys before with `ssh-add -K <absolue-path-to-key>`.
For example: `ssh-add -k ~/.ssh/config.d/github/github`

