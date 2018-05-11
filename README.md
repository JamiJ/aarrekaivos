# Aarrekaivos

## This repo is created for automated cpuminer-multi installation with salt states
## This repo uses cpuminer-multi project, check it out here [GitHub.com/tpruvot/cpuminer-multi](https://github.com/tpruvot/cpuminer-multi)
### This state only works for "xubuntu" account, so basically this is only base files to make this work. I can try to make this work with any account by using jinja.. but i have no idea when.

### To make this state work you need to run these command with fresh install of xubuntu

    sudo apt-get update
    sudo apt-get install -y git ~~salt-minion~~
    git clone https://github.com/jamij/aarrekaivos.git 
#### I updated the high.sh, so there is no need to install salt-minion, because it does it for you

### When you have cloned this, you need to change the key in "run.sh" which can be found at

    aarrekaivos/srv/salt/programs/run.sh
    
#### Content of run.sh
    
    #!/bin/bash
    ./cpuminer -a sha256d -o stratum+tcp://connect.pool.bitcoin.com:3333 -u your-key-here -p c=BTC


### After that run the salt state with "sudo bash high.sh" when in aarrekaivos/ folder
