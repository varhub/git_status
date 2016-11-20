#!/bin/sh
#
# Copyright (c) 2016
# Author: Victor Arribas <v.arribas.urjc@gmail.com>
# License: GPLv3 <http://www.gnu.org/licenses/gpl-3.0.html>

target=~/.bashrc

grep -q '# git_status' "$target" || \
cat <<EOF>>"$target"
# git_status
[ -f $PWD/git_status.env ] && source $PWD/git_status.env -ps1
EOF
