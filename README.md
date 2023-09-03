# Shell utilities

## Contents

 - [`md2pdf`](md2pdf.sh) : Markdown to PDF conversion using `pandoc`.
 - [`md2html2pdf`](md2html2pdf.sh) : Markdown to PDF conversion via intermediate step of converting to HTML with a specified style file.
 - [`git-status`](git-status.sh) : Report status of git repositories in the current directory.

## Installation

Add the following to `.zshrc` or `.bashrc`:
```shell
    export PATH="/path/to/shell-util:$PATH"
```
## Alias

```shell
gpsom="git push origin master"
gplom="git pull origin master"
gcom="git commit -m"
gstat="git status -s"
gadd="git add"
```
