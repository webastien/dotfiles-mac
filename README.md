# Dot files for Mac OS
Files I put in my Mac computers' home folder.

## Notes:
All files here (except README.md and eventually Github repository relative files) must be renamed with a dot as first letter (Unix hidden file) before being added to the home folder: For example, `bash_profile` has to be placed in `~/.bash_profile`.

`.bash_sessions_disable` is (for now) a personal choice, because one of my machines crashes often, and I got tons of files in `.bash_sessions`... Maybe I'll re-activate bash sessions later.

### Missing files
* I do not include personal / security files (like my ssh keys) for obvious reasons.
* My `.vim` directory and `.vimrc` file have their dedicated repository: [webastien-vim](https://github.com/webastien/vim).
* The `bash_profile` file references [.git-completion.bash](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash), which allows `git` command auto-completion.

### SSH configuration
See the [ssh/config.d](https://github.com/webastien/dotfiles-mac/tree/master/ssh/config.d) structure and README.md file inside.
