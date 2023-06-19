# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"
PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# Map Caps Lock to Esc and Ctrl Modifier
/usr/bin/setxkbmap -option 'caps:ctrl_modifier'
/usr/bin/xcape -e 'Caps_Lock=Escape' -t 100
