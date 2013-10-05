bash-newline
============

ZSH styled % newline for bash

Example
-------

```
dave @ [ manilla :: (Darwin) ] ~ $ echo hello
hello
dave @ [ manilla :: (Darwin) ] ~ $ echo -n hello
hello%
dave @ [ manilla :: (Darwin) ] ~ $
```

See more https://gist.github.com/bahamas10/6567725

Installation
------------

### basher

Use [basher](https://github.com/bahamas10/basher) to manage this plugin

After installing `basher`, install this plugin by running

    basher install git://github.com/bahamas10/bash-newline.git

Or install manually for `basher` with

    cd ~/.basher/plugins
    git clone git://github.com/bahamas10/bash-newline.git

### manually

    git clone git://github.com/bahamas10/bash-newline.git
    cd bash-newline
    cat newline.bash >> ~/.bashrc
    exec bash

Usage
-----

Install this plugin, and add it to the `PROMPT_COMMAND` variable

``` bash
PROMPT_COMMAND='newline'
```

Exports
-------

### Functions

- `newline()` - print a `%\n` if necessary

### Global Variables

None

### Environmental Variables

None

### Aliases

None

License
-------

MIT
