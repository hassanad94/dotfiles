# Interactive shell config
eval "$(mise activate zsh)"

# Java (Android Studio)
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# .NET
export DOTNET_ROOT=/usr/local/share/dotnet
export PATH="/usr/local/share/dotnet:$PATH"

# z + fzf (fuzzy cd)
. /opt/homebrew/etc/profile.d/z.sh
[ -f ~/.fz/fz.sh ] && source ~/.fz/fz.sh
function cd() { z "$@" 2>/dev/null || builtin cd "$@"; }

alias vi="nvim"
alias vim="nvim"
