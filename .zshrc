export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"

# mise
eval "$(mise activate zsh)"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"


# z + fz (fuzzy cd)
. /opt/homebrew/etc/profile.d/z.sh
[ -f ~/.fz/fz.sh ] && source ~/.fz/fz.sh

# Use z as cd
function cd() { z "$@" 2>/dev/null || builtin cd "$@"; }

alias claude-mem='bun "/Users/adamhassan/.claude/plugins/cache/thedotmack/claude-mem/12.1.6/scripts/worker-service.cjs"'

# .NET - use Microsoft installer path (has both .NET 8 and 10)
export DOTNET_ROOT=/usr/local/share/dotnet
export PATH="/usr/local/share/dotnet:$PATH"
