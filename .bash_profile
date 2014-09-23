# 
# PATH vars
export PATH=/usr/local/bin:$PATH
## Android SDK
export PATH="/Applications/Android\ Studio.app/sdk/tools:/Applications/Android\ Studio.app/sdk/platform-tools:$PATH"
## Genymotion
export PATH="/Applications/Genymotion\ Shell.app/Contents/MacOS/$PATH"
## Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
## Tint
export PATH="/Development/tint/build/xcode/Release$PATH"

#
# Aliasses
alias mongostart="launchctl start org.mongodb.mongod"
alias mongostop="launchctl stop org.mongodb.mongod"
alias tint="~/Development/tint/build/xcode/Release/tint"

#
# Handy functions

# Tabname
# - Sets a tabname in the current terminal window
tabname() {
    export PROMPT_COMMAND='echo -ne "\033]0;'$1'\007"';
}

# Server
# - Starts a server in the current folder
server() {
	open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}
