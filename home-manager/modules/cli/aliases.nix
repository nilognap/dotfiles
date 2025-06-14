{ ... }:
{
  home.shellAliases = {
    # good
    ls = "ls -F --color=auto";
    # shortned
    l = "ls";
    c = "cd";
    v = "vim";
    g = "git";
    h = "hx";
    rm = "rm -i";
    mv = "mv -i";
    cp = "cp -i";
    # misc
    du = "du -sh";
    grep = "grep -rnw . -e";
  };
}
