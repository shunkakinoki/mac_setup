# mac_setup

My implementation of Macintosh Setup.  
Original code [https://github.com/caseyWebb/laptop](https://github.com/caseyWebb/laptop)

Development (and more) environment setup for MacOS. Automatically syncs to make cloning your machine a breeze.

Built with:
- Homebrew
- zsh
- git


### Install

- Fork
- Change "shunkakinoki" to your GitHub username in [`install.sh`](./install.sh)
- Edit [`dotfiles/.gitconfig`](./dotfiles/.gitconfig)
- `curl https://raw.githubusercontent.com/shunkakinoki/mac_setup/master/install.sh | bash`

**NOTE:** No `sudo`

**NOTE:** If you don't like curl-ing into bash, you can install git and clone this repo, then run `./install.sh`.


### How does it work?

#### Architecture

There are 4 types of [scripts](./scripts), designated by the first digit:

| Digit | Type                          |
|-------|-------------------------------|
| 0     | install                       |
| 1     | system configuration          |
| 2     | environment configuration     |
| 3     | chores                        |

- Install and system configuration scripts are ran once by the [main install script](./install.sh)
- Environment configuration scripts are ran _in the current context_ each time a shell is opened
- Chores are ran _in a spawned process ([screen][])_ each time a shell is opened

For install and configuration scripts (system and environment) the second digit allows controlling the order of execution.
