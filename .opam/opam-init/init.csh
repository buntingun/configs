if ( $?prompt ) then
  if ( -f /home/me/.opam/opam-init/env_hook.csh ) source /home/me/.opam/opam-init/env_hook.csh >& /dev/null
endif

if ( -f /home/me/.opam/opam-init/variables.csh ) source /home/me/.opam/opam-init/variables.csh >& /dev/null
