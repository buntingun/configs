# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
. "$HOME/.cargo/env"
PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

# opam configuration
test -r /home/me/.opam/opam-init/init.sh && . /home/me/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
