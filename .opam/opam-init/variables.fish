# Prefix of the current opam switch
set -gx OPAM_SWITCH_PREFIX '/home/me/.opam/default';
# Updated by package ocaml-base-compiler
set -gx CAML_LD_LIBRARY_PATH '/home/me/.opam/default/lib/stublibs';
# Updated by package ocaml
set -gx CAML_LD_LIBRARY_PATH '/home/me/.opam/default/lib/ocaml/stublibs:/home/me/.opam/default/lib/ocaml';
# Updated by package ocaml
set -gx CAML_LD_LIBRARY_PATH '/home/me/.opam/default/lib/stublibs':"$CAML_LD_LIBRARY_PATH";
# Updated by package ocaml
set -gx OCAML_TOPLEVEL_PATH '/home/me/.opam/default/lib/toplevel';
# Current opam switch man dir
if [ (count $MANPATH) -gt 0 ]; set -gx MANPATH $MANPATH '/home/me/.opam/default/man'; end;
# Binary dir for opam switch default
set -gx PATH '/home/me/.opam/default/bin' $PATH;
