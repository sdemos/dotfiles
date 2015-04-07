#	~/.bash_profile shell configuration file
#
#	This file contains configuration commands which will
#	be executed for each shell which starts up (e.g., each
#	shell window, and most commands given to the shell).
#	Changes to this file will NOT take effect in existing
#	shells unless you give the shell-level command "source ~/.bash_profile",
#	but they WILL take effect in shells created after you
#	change this file.

# Begin by including the "standard" configuration file, which will
# configure this shell according to the local standard configuration.
# NOTE:  IF YOU DON'T DO THIS, YOU ARE RESPONSIBLE FOR TRACKING ANY
# CHANGES WHICH ARE MADE TO THE STANDARD CONFIGURATION!!!

source /usr/local/lib/config/Bash_Profile

# Here is where you should put any changes you wish to make to the 
# standard configuration (e.g., altering the search path, redefining
# the prompt, etc.)


#
# Heads up!  ubuntu wants to read the .bashrc instead of .bash_profile
# so for the time being it's recommended you consider keeping them both
# equivalent. When Solaris is retired we'll revisit this.
#

CVSROOT=$HOME/gross
export CVSROOT


/bin/zsh
if [[ $0 == -* ]]; then
    logout
else
    exit
fi
