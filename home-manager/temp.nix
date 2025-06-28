programs.fish.functions = {
  ls_after_cd = {
    onVariable = "PWD";
    body = "command ls -F --color=auto";
  };
};
