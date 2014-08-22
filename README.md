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

Search for aliases matching given pattern (single argument):

```bash
$ git alias ^la
last = cat-file commit HEAD
```

Create a new alias:

```bash
$ git alias last "cat-file commit HEAD"
```
