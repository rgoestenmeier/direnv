# Extending direnv

[direnv](https://direnv.net/) is a great tool for managing different development environment.

But, what i am missing, is the possiblility in setting up a environment very quick and with default components installed.

So, i decide to create this bash script to help me in create development environments.

## Install

Clone the repositoiry to your desired folder, e.g. $HOME/tools/direnv

    cd $HOME
    git clone https://github.com/r14r/cli_direnv.git tools/direnv

Add path of direnv_cli to PATH

    $PATH=$HOME/tools/direnv/bin:$PATH

Check

    which direnv_cli
    $HOME/bin/direnv_cli

## Setup environment for Python

### Change to the destination folder of your nvironment ###

    cd $HOME
    mkdir -p /tmp/env.python
    cd       /tmp/env.python/

### Initialize folder with direnv configuration files ###

    direnv_cli --init master
      1: Create master.envrc
      2: Create master.config
      3: Create master.ssh-user
    direnv: error .envrc is blocked. Run `direnv allow` to approve its content.

### Allow access to direnv ###

```
direnv allow
Enabled   : HERE                             /tmp/env.python
Enabled   : node       -                     -
Enabled   : npm        -                     -
Enabled   : yarn       -                     -
Missing   : python
Init      : SSH Agent                        /tmp/env.python/.ssh-environment
Enabled   : ssh        SSH_AGENT_PID: 71625  r14r@via-internet.de
```

### Install Python ###

````
direnv_cli --install python
Collecting pip
  Using cached https://files.pythonhosted.org/packages/8d/07/f7d7ced2f97ca3098c16565efbe6b15fafcba53e8d9bdb431e09140514b0/pip-19.2.2-py2.py3-none-any.whl
Installing collected packages: pip
  Found existing installation: pip 19.0.3
    Uninstalling pip-19.0.3:
      Successfully uninstalled pip-19.0.3
Successfully installed pip-19.2.2
````

### Reload direnv configuration ###

```
direnv reload
Enabled   : HERE                             /tmp/env.python
Enabled   : node       -                     -
Enabled   : npm        -                     -
Enabled   : yarn       -                     -
Enabled   : python     3.7.4                 HERE/.env/python/bin/python
Enabled   : ssh        SSH_AGENT_PID: 71625  r14r@via-internet.de
```

## Setup environment for NodeJS

### Change to the destination folder for ypur nvironment ###

    cd $HOME
    mkdir -p /tmp/env.node
    cd       /tmp/env.node/

### Initialize folder with direnv configuration files ###

    direnv_cli --init master
      1: Create master.envrc
      2: Create master.config
      3: Create master.ssh-user
    direnv: error .envrc is blocked. Run `direnv allow` to approve its content.

### Allow access to direnv ###

```
direnv allow
Enabled   : HERE                             /tmp/env.node
Enabled   : node       -                     -
Enabled   : npm        -                     -
Enabled   : yarn       -                     -
Missing   : python
Init      : SSH Agent                        /tmp/env.node/.ssh-environment
Enabled   : ssh        SSH_AGENT_PID: 71625  r14r@via-internet.de
````

### Install LTS NodeJS ###
````
direnv_cli --install node --install-version lts
  1: Download NodeJS archiv for version v10.16.3
  2: Create /tmp/env.node/.env/node/v10.16.3
  3: Unpack NodeJS archiv
  4: Update NPM: /tmp/env.node/.env/node/v10.16.3/bin/npm
+ npm@6.11.1
added 19 packages from 13 contributors, removed 15 packages and updated 52 packages in 43.056s
````

### or install latest NodeJS ###
````
direnv_cli --install node --install-version latest
  1: Download NodeJS archiv for version v12.9.0
  2: Create /tmp/env.node/.env/node/v12.9.0
  3: Unpack NodeJS archiv
  4: Update NPM: /tmp/env.node/.env/node/v12.9.0/bin/npm
+ npm@6.11.1
updated 15 packages in 36.075s
````

### Reload direnv configuration ###

```
direnv reload
Enabled   : HERE                             /tmp/env.python
Enabled   : node       -                     -
Enabled   : npm        -                     -
Enabled   : yarn       -                     -
Enabled   : python     3.7.4                 HERE/.env/python/bin/python
Enabled   : ssh        SSH_AGENT_PID: 71625  r14r@via-internet.de
```
