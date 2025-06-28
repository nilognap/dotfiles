set -g fish_key_bindings fish_vi_key_bindings
set fish_greeting
function ls_after_cd --on-variable PWD
  command ls -F --color=auto
end
