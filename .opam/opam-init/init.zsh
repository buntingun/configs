if [[ -o interactive ]]; then
  [[ ! -r /home/me/.opam/opam-init/complete.zsh ]] || source /home/me/.opam/opam-init/complete.zsh  > /dev/null 2> /dev/null

  [[ ! -r /home/me/.opam/opam-init/env_hook.zsh ]] || source /home/me/.opam/opam-init/env_hook.zsh  > /dev/null 2> /dev/null
fi

[[ ! -r /home/me/.opam/opam-init/variables.sh ]] || source /home/me/.opam/opam-init/variables.sh  > /dev/null 2> /dev/null
