#!/usr/bin/env bash

#===================================================================
#===================================================================
# GENERAL
#===================================================================
alias lt='ls -rlth'

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.ipynb=93:*.py=93:*.tar.gz=33:*.tar.bz2=33:*.zip=33:*.gz=33:*.xls=32:*.ods=32:*.xlsx=32:*.doc=34:*.docx=34:*.odt=34:*.fds=31:*.csv=36:*.dat=36'

alias checkL='ssh  mesh01 "python /share/Tools/Python/check_ganglia_v1.py"'

alias mSyno='sudo mount -t nfs 191.168.178.25:/volume1/share /share'
alias umSyno='sudo umount /share'
alias m4SH='sudo mount -t davfs https://webdav.4shared.com/ /4shared'

alias nv='nvim'
alias vi='nvim'

set -o vi
export OMP_NUM_THREADS=1

###===================================================================
### Modules
###===================================================================
####===================================================================
#module load python/anaconda2/4.x
##module unload python/anaconda2/4.x
##module load python_loc/3.6.0_anac4.3.1
##
#module load ParaView
###module load Ansa
#module load VisIt/2.10.3
##module load Dakota
#module load Dakota/6.5.0_ac2
##module load Dakota/6.5.0
##module unload Dakota
##module load opt/ompi_1.10.4
##module load HyperWorks
##module unload HyperWorks
##module load modeFRONTIER
##
##module load Aliases/FDS
#module load FDS
#module load JuPedSim
#module load Aliases/StarCCM+
#module load CFAST
##
#module load openmpi/1.10.4
##
## OPF ============================================
##. ~/.ModulesOPF_rc
##module unload fireFoam
#module load OpenFOAM
##module load opt/opt_0.3
##module load divs/0.0.1
#module load divs/0.2
# module load divs/setAlias
# module load divs/path


#===================================================================
# Shell / Prompt
#===================================================================
source ~/.git-prompt.sh
case $HOST in
    "elephant" )
        PS1='\[\033[01;32m\]\h\[\033[00m\]$(__git_ps1 " (%s)"): \[\033[01;36m\]\w\[\033[00m\]\n\$ '
        ;;
    "mesh01" )
        PS1='\[\033[01;33m\]\h\[\033[00m\]$(__git_ps1 " (%s)"): \[\033[01;36m\]\w\[\033[00m\]\n\$ '
        ;;
    "master" )
        PS1='\[\033[01;35m\]\h\[\033[00m\]$(__git_ps1 " (%s)"): \[\033[01;36m\]\w\[\033[00m\]\n\$ '
        ;;
    *)
        PS1='\[\033[01;36m\]\h\[\033[00m\]$(__git_ps1 " (%s)"): \[\033[01;36m\]\w\[\033[00m\]\n\$ '
        ;;
esac



alias aps="sudo apt-cache search"
alias api="sudo apt-get install"
alias apu="sudo apt-get update"
alias apuu="sudo apt-get upgrade"
alias apr="sudo apt-get remove"
alias apt="sudo aptitude"

alias e="emacsclient -t"
alias ec="emacsclient -c"
alias ecg="emacsclient "
alias mountAsus="sshfs 192.168.178.27: /home/fbraenns/99_MOUNT/asusLaptop/"
alias umountAsus="fusermount -u /home/fbraenns/99_MOUNT/asusLaptop/"

alias rsyncLapSYSTEM_down="rsync -ravz --progress 192.168.178.27:/home/fbraenns/HOME/QuantDevs/SYSTEMATIC_Value/ /home/fbraenns/01_FINANCE/SYSTEMATIC_Value"
alias rsyncLapSYSTEM_up="rsync -aevz --progress /home/fbraenns/01_FINANCE/SYSTEMATIC_Value 192.168.178.27:/home/fbraenns/HOME/QuantDevs/SYSTEMATIC_Value/"

alias anaSearch="anaconda search -t conda"

export PATH="/home/fbraenns/00_ALLG/Software/Anac3/bin:$PATH"
export PATH="/home/fbraenns/00_ALLG/Software/SQL/SQLiteStudio/:$PATH"

#=================================================================================================
export LD_LIBRARY_PATH="/home/fbraenns/02_CFD/Software/OPTIMIZATION/Dakota/Dakota/lib":$LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/home/fbraenns/02_CFD/Software/OPTIMIZATION/Dakota/Dakota/bin":$LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/home/fbraenns/02_CFD/Software/PRE/admesh/src":$LD_LIBRARY_PATH

#=================================================================================================
# added by Anaconda2 4.1.1 installer
#export PATH="/home/fbraenns/00_ALLG/Software/Anac2/bin:$PATH"
#export PATH="/home/fbraenns/00_ALLG/Software/Anac2/bin:$PATH"
# added by Anaconda3 4.3.1 installer

export PATH="/home/fbraenns/02_CFD/Software/FIRE/FDS/fds-smv/FDS_Compilation/gnu_linux_64/:$PATH"
export PATH="/home/fbraenns/02_CFD/Software/FIRE/GPYRO/gpyro/linux/gpyro/:$PATH"
export PATH="/home/fbraenns/02_CFD/Software/FIRE/CFAST/cfast/Build/CFAST/gnu_linux_64/:$PATH"
export PATH="/home/fbraenns/02_CFD/Software/OPTIMIZATION/Dakota/Dakota/bin":$PATH


#=================================================================================================
# PYTHON
export PYTHONPATH="/home/fbraenns/01_FINANCE/SYSTEMATIC_Value/UTILS:$PYTHONPATH"

#=================================================================================================
# OPF
# source ~/OpenFOAM/OpenFOAM-v1606+/etc/bashrc 
#source /home/fbraenns/02_CFD/Software/OPF/ESI/OpenFOAM-plus/etc/bashrc
#. /opt/openfoam4/etc/bashrc

#=================================================================================================
#FDS 
export MPIDIST_ETH=
export MPIDIST_IB=
source ~/.bashrc_fds 
#FDS -----------------------------------

alias syn="ssh fbraenns@192.168.178.25"

#MODELICA -----------------------------------
export MODELICAPATH=/share/GA/TOOLs/
export MODELICAPATH=/share/GA/TOOLs/modelica-buildings_LBL:$MODELICAPATH
