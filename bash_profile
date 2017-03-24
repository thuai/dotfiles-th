[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=
export PATH=/opt/iOSOpenDev/bin:$PATH

# OCLint
OCLINT_HOME=/usr/local/oclint-0.8.1
export PATH=$OCLINT_HOME/bin:$PATH

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
# Added by install_latest_perl_osx.pl
[ -r /Users/thuai/.bashrc ] && source /Users/thuai/.bashrc

# export MANPATH="/usr/local/man:$MANPATH"

# export PATH="$PATH:bin:/opt/boxen/rbenv/shims:/opt/boxen/rbenv/bin:/opt/boxen/ruby-build/bin:node_modules/.bin:/opt/boxen/nodenv/shims:/opt/boxen/nodenv/bin:/opt/boxen/bin:/opt/boxen/homebrew/bin:/opt/boxen/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH=$PATH:/usr/local/homebrew/bin

# xiaomi tools
export PATH=${PATH}:/usr/local/platform-tools

# go lang
#export GOROOT=/usr/local/go
#export PATH=${PATH}:${GOROOT}/bin

# Add RVM to PATH for scripting
#export PATH="$PATH:$HOME/.rvm/bin"
#export PATH="/usr/local/sbin:$PATH"

# Android
# export ANDROID_NDK=/Users/terry/Library/Android/sdk/ndk-bundle
# export ANDROID_SDK=/Users/terry/Library/Android/sdk
# export PATH=$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$ANDROID_NDK


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
#export COCOS_CONSOLE_ROOT=/Applications/Cocos/Cocos2d-x/cocos2d-x-3.10/tools/cocos2d-console/bin
#export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
#export COCOS_X_ROOT=/Applications/Cocos/Cocos2d-x
#export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
#export COCOS_TEMPLATES_ROOT=/Applications/Cocos/Cocos2d-x/cocos2d-x-3.10/templates
#export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Swift
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/thuai/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
