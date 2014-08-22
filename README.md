# My git scripts

My own git scripts, some of them inspired by:
- [visionmedia/git-extras](https://github.com/visionmedia/git-extras)

## Installation

```bash
$ make install
```

## git-alias

List, search or add alias

List all aliases:

```bash
$ git alias
co = checkout
ci = commit
br = branch
l = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
lt = log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
ls = log --branches --not --remotes --simplify-by-decoration --decorate --oneline
st = status -sb
amend = commit --amend -C HEAD
amend-all = commit -a --amend -C HEAD
```

Search for aliases matching given pattern (single argument):

```bash
$ git alias ^log
l = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
lt = log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
ls = log --branches --not --remotes --simplify-by-decoration --decorate --oneline
```

Create a new alias:

```bash
$ git alias st "status -sb"
```
