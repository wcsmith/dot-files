# Load .bashrc if running bash
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"

PATH="$PATH:$HOME/go/bin"
PATH="$PATH:/usr/local/go/bin"

if [ -f "$HOME/.profile.local" ]; then
    . "$HOME/.profile.local"
fi
