# Aarrekaivos

## This repo is created for automated cpuminer-multi installation with salt states
## This repo uses cpuminer-multi project, check it out here [GitHub.com/tpruvot/cpuminer-multi](https://github.com/tpruvot/cpuminer-multi)

### To make this state work you need to run these command with fresh install of xubuntu

    sudo apt-get update
    sudo apt-get install -y git salt-minion
    git clone https://github.com/jamij/aarrekaivos.git

### When you have cloned this, you need to change the key in "run.sh" which can be found at

    aarrekaivos/srv/salt/programs/run.sh
    
### After that run the salt state with "sudo bash high.sh" when in aarrekaivos/ folder
