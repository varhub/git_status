# git_status

A `git status` meaningful for big projects.
https://github.com/varhub/git_status

Provides:
  * status info of every git repository in current directory tree.
  * PS1 functionality (like __git_status) but with simplified status logic.
  * easy install. Script ensures idempotence to simplify `source <whatever>` logic.
  * *more information at man section*
  
![](https://varhub.github.io/assets/images/portfolio/git_status_by_varribas.gif)


## Install
```
cat <<EOF>>~/.bashrc
# git_status
[ -f $PWD/git_status.env ] && source $PWD/git_status.env -ps1
EOF
```

## Man

**$ source git_status.env --help**
```
git_status
  Copyright (c) 2016
  Author: Victor Arribas <v.arribas.urjc@gmail.com>
  License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html>
Invoke git_status provides you a BASH function called *git_status*
that holds functionality. You can expect follow output format:
[<source dir> @ <head info>]
    source dir - git's root directory
    head info  - git HEAD status (like __git_ps1)
                 color feedback is commit status:
                   * green - nothing to commit
                   * red - uncommited files (dirty workspace)
Usage:
source git_status.env [-ps1 [--no-color]|-revert]
    -ps1       - modifies PS1 to provide repo status info.
                 This arg can be passed as many times as you
                 wish. Script ensures idempotence to simplify
                 *source <whatever>* logic.
    --no-color - plain text mode.
                 Character '*' hints about uncommited files.
                 Modifies PS1 in any case.
    -revert    - revert PS1 variable to original state.
```

**$ git_status --help**
```
git_status
  Copyright (c) 2016
  Author: Victor Arribas <v.arribas.urjc@gmail.com>
  License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html>
gives status info of every git repository in current directory tree.
repositories are alphabetically processed for better reading.
expected to be used in frameworks or workspaces with several projects.

You can expect follow output format:
[*source dir* @ *head info*]
*git status --short*
*new line*
Explain:
    source dir - git's root directory
    head info  - git HEAD status (like __git_ps1)
                 color feedback is commit status:
                   * green - nothing to commit
                   * red - uncommited files (dirty workspace)

Usage: git_status [--no-color | --color] [--short | --long | --full]
  --no-color - disable echoing colors. '*' means dirty workspace
  --color    - enable echoing colors (default)
  --short    - prints git repo name
  --long     - prints dir relative to \$PWD (default)
  --full     - prints absolute directory to git repo
```


## License
* Copyright (c) 2016
* Author: Victor Arribas <v.arribas.urjc@gmail.com>
* License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html>
* Master: https://github.com/varhub/git_status

*You are freely to use, fork, improve and enjoy it.*

