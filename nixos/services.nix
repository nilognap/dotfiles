{
  services = {
    kanata = {
      # enable = true;
      # TODO
    };

    keyd = {
      enable = true;
      keyboards = {
        default = {
          ids = [ "*" ];
          settings = let
            # minimum amount of time waited after the last key was struck for mod
            # idle_timeout = "100";
            idle_timeout = "0";
            # the amount of time the key need to be held down for mod
            hold_timeout = "300";
          in {
            main = { # nothing
              numlock = "togglem(laptop, numlock)";
              delete = "toggle(laptop)";
            };
            laptop = {
              "f8" = "mute";
              "f9" = "volumedown";
              "f10" = "volumeup";
              "f11" = "brightnessdown";
              "f12" = "brightnessup";

              # left
              tab = "esc";
              capslock = "tab";
              leftmeta = "leftmeta+tab";
              leftalt = "lettermod(nav2, leftmeta, ${idle_timeout}, ${hold_timeout})";
              leftcontrol = "backspace";

              # right
              rightalt = "backspace";
              backspace = "capslock";
              "leftshift+leftmeta+f23" = "lettermod(sym, oneshot(shift), ${idle_timeout}, ${hold_timeout})";

              # misc
              space = "lettermod(nav, space, ${idle_timeout}, ${hold_timeout})";
              "\\" = "rightalt"; # compose key

              # left
              q = "v"; w = "m"; e = "l"; r = "c"; t = "p";
              a = "lettermod(meta, s, ${idle_timeout}, ${hold_timeout})";
              s = "lettermod(alt, t, ${idle_timeout}, ${hold_timeout})";
              d = "lettermod(shift, r, ${idle_timeout}, ${hold_timeout})";
              f = "lettermod(control, d, ${idle_timeout}, ${hold_timeout})";
              g = "y";
              leftshift = "z"; z = "k"; x = "q"; c = "g"; v = "w";

              # middle
              b = "\\"; y = "["; h = ";"; n = "]"; "]" = "/";

              # right
              u = "x"; i = "f"; o = "o"; p = "u"; "[" = "j";
              j = ".";
              k = "lettermod(control, n, ${idle_timeout}, ${hold_timeout})";
              l = "lettermod(shift, a, ${idle_timeout}, ${hold_timeout})";
              ";" = "lettermod(alt, e, ${idle_timeout}, ${hold_timeout})";
              "'" = "lettermod(meta, i, ${idle_timeout}, ${hold_timeout})";
              m = "b"; "," = "h"; "." = "'"; "/" = "?"; rightshift = ",";

              # override TODO
              "S-," = ";"; "S-." = ":";
            };

            nav = {
              capslock = "C-tab";
              enter = "C-enter";

              "1" = "C-1"; "2" = "C-2"; "3" = "C-3"; "4" = "C-4"; "5" = "C-9";
            
              # left
              q = "C-q"; w = "C-w"; e = "C-l"; r = "C-r"; t = "C-t";
              a = "lettermod(meta, C-a, ${idle_timeout}, ${hold_timeout})";
              s = "lettermod(alt, back, ${idle_timeout}, ${hold_timeout})";
              d = "lettermod(shift, forward, ${idle_timeout}, ${hold_timeout})";
              f = "lettermod(control, C-f, ${idle_timeout}, ${hold_timeout})";
              leftshift = "C-z"; z = "C-x"; x = "C-c"; c = "C-v";

              # right
              i = "C-left"; o = "up"; p = "C-right"; "[" = "pageup";
              k = "left"; l = "down"; ";" = "right"; "'" = "pagedown";
              "," = "home"; "/" = "end";

              rightalt = "C-backspace";
            };
            sym = {
              q = "`"; w = "7"; e = "8"; r = "9"; t = "@";
              a = "_"; s = "4"; d = "5"; f = "6"; g = "#";
              leftshift = "~"; z = "1"; x = "2"; c = "3"; v = "$";
              space = "0";
            };
            nav2 = {
              "1" = "M-1"; "2" = "M-2"; "3" = "M-3"; "4" = "M-4"; "5" = "M-5";
              w = "C-7"; e = "C-8"; r = "C-9"; t = "C--";
              s = "C-4"; d = "C-5"; f = "C-6"; g = "C-=";
              z = "C-1"; x = "C-2"; c = "C-3"; v = "C-0"; # TODO
            };
          };
        };
        # externalMapped = {
        #   ids = [ "" ];
        #   settings = {
        #     main = {};
        #   };
        # };
      };
    };
  };
}
