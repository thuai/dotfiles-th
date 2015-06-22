[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=
export PATH=/opt/iOSOpenDev/bin:$PATH

# OCLint
OCLINT_HOME=/usr/local/oclint-0.8.1
export PATH=$OCLINT_HOME/bin:$PATH
