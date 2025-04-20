
```
▓█████▄  ▒█████  ▄▄▄█████▓  █████▒██▓ ██▓    ▓█████   ██████ 
▒██▀ ██▌▒██▒  ██▒▓  ██▒ ▓▒▓██   ▒▓██▒▓██▒    ▓█   ▀ ▒██    ▒ 
░██   █▌▒██░  ██▒▒ ▓██░ ▒░▒████ ░▒██▒▒██░    ▒███   ░ ▓██▄   
░▓█▄   ▌▒██   ██░░ ▓██▓ ░ ░▓█▒  ░░██░▒██░    ▒▓█  ▄   ▒   ██▒
░▒████▓ ░ ████▓▒░  ▒██▒ ░ ░▒█░   ░██░░██████▒░▒████▒▒██████▒▒
 ▒▒▓  ▒ ░ ▒░▒░▒░   ▒ ░░    ▒ ░   ░▓  ░ ▒░▓  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░
 ░ ▒  ▒   ░ ▒ ▒░     ░     ░      ▒ ░░ ░ ▒  ░ ░ ░  ░░ ░▒  ░ ░
 ░ ░  ░ ░ ░ ░ ▒    ░       ░ ░    ▒ ░  ░ ░      ░   ░  ░  ░  
   ░        ░ ░                   ░      ░  ░   ░  ░      ░  
 ░                                                           

 author:    eralon <eralon.dev@gmail.com>
 about:     custom configuration dotfiles
```

## table of contents

- [introduction](#introduction)
- [set-up](#tools)
- [managing](#managing)

# introduction

Managing and configuring files, also known as by _dotfiles_, is a task that I have always found to be a total mess. By chance of life, I discovered that there were a lot of (tools and documentation)[https://dotfiles.github.io] teaching how to take care of this sort of things. As a consequence, I started to keep a VCS of my dotfiles.

# set-up

The tool I'm using is [GNU stow](http://www.gnu.org/software/stow/), a free, portable, lightweight symlink farm manager. This allows us to keep a VCS of your dotfiles abstracting ourselves from problems such as inserting personal configuration files into the repository or similar issues.

To install it just have to apt it

```bash
apt install stow
```
or clone it [from source](https://savannah.gnu.org/git/?group=stow) and build it.

# managing files

Once the repo is cloned by `git clone` if...

1. Adding new dependency: Just have to move the new configuration files into the **dotfiles** directory.

```
# Home directory BEFORE
.
├── .config/ 
│   ├── i3/
│   │   └── config
│   └── ...
├── .zshrc
├── .vimrc
└── .vim/

# Home directory AFTER
.
├── .config/ 
└── dotfiles/
    ├── i3/
    │   └── .config/
    │       └── i3/          
    │           └── config
    ├── vim
    │   ├── .vim/...
    │   └── .vimrc
    └── zsh/
        └── .zshrc
```

2. Install new dependency: Run `stow <name_of_package>`, you can also run with `-n` parameter to not perform any operations that modify the filesystem; merely show what would happen.

3. Delete a dependency: Run `stow -D <name_of_package>`. Destroy the symlinks that were created when installing the dependency.
