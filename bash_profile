# DEVELOPMENT
alias syn='cd ~/Repositories/Synthesise'
alias Diss='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Dissertation'
alias tsa='cd ~/Repositories/TimeSpaceAnalysis'
alias dep='php vendor/bin/dep'
alias python='python3'

function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
alias dev='homestead'

