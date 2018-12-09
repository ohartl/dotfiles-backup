# dotfiles of ohartl

These are my dotfiles that I work with every day. On multiple boxes with different kinds of OS, work scenarios and as an employee or private.

Compatible OS:
 * macOS
 * debian / ubuntu
 * WSL (Windows Subsystem for Linux) boxes

Compatible work scenarios:
 * dev envirnoment with docker
 * devops with linux
 * development of web applications with php, node, webpack

## Getting started

```bash
mkdir -p ~/src
cd ~/src
git clone https://github.com/ohartl/dotfiles.git
cd dotfiles
./install
```

## Making local customizations

You can make local customizations for some programs by creating & editing these files:

 * `bash`
   * Before init `~/.bashrc_before.local`
   * After init `~/.bashrc_after.local`
 * `zsh`
   * Before init `~/.zshrc_before.local`
   * After init `~/.zshrc_after.local`
 * Aliases for `bash` & `zsh`
   * `~/.aliases.local`
 * Envirnoment variables for `bash` & `zsh`
   * `~/.vars.local`
 * `vim`
   * `~/.vimrc.local`
 * `git`
   * `~/.gitconfig.local`


## Structure

### `bin/`

Directory for custom scripts / binaries which will be available via `$PATH`

### `files/`

All custom dotfiles that are gonna be linked in the home dir via `install.yml`

### `modules/`

Contains git submodules which are used to manage and run these dotfiles, but might also hold imported configs

### `install.yml`

Configures what is run by the `./install` command


## Update modules (git submodules)

`git submodule update --recursive --remote` or just `git submodule update --init --remote`, dont know yet :(
