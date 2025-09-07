{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = let
          # minimum amount of time waited after the last key was struck for mod
          idle_timeout = "0";
          # the amount of time the key need to be held down for mod
          hold_timeout = "300";
        in {
          main = { # nothing
            numlock = "togglem(laptop, numlock)";
            delete = "toggle(laptop)";

            "f8" = "mute";
            "f9" = "volumedown";
            "f10" = "volumeup";
            "f11" = "brightnessdown";
            "f12" = "brightnessup";
          };
          laptop = {
            # numlock = "togglem(laptop, numlock)";

            tab = "esc";
            capslock = "tab";
            leftalt = "leftmeta";
            rightalt = "backspace";
            "leftshift+leftmeta+f23" = "oneshot(shift)";

            space = "lettermod(nav, space, ${idle_timeout}, ${hold_timeout})";

            "\\" = "rightalt"; # compose key

            q = "v"; w = "m"; e = "l"; r = "c"; t = "p";
            a = "lettermod(meta, s, ${idle_timeout}, ${hold_timeout})";
            s = "lettermod(alt, t, ${idle_timeout}, ${hold_timeout})";
            d = "lettermod(shift, r, ${idle_timeout}, ${hold_timeout})";
            f = "lettermod(control, d, ${idle_timeout}, ${hold_timeout})";
            g = "y";
            leftshift = "z"; z = "k"; x = "q"; c = "g"; v = "w";

            b = "\\"; y = "["; h = ";"; n = "]"; "]" = "/";

            u = "x"; i = "f"; o = "o"; p = "u"; "[" = "j";
            j = ".";
            k = "lettermod(control, n, ${idle_timeout}, ${hold_timeout})";
            l = "lettermod(shift, a, ${idle_timeout}, ${hold_timeout})";
            ";" = "lettermod(alt, e, ${idle_timeout}, ${hold_timeout})";
            "'" = "lettermod(meta, i, ${idle_timeout}, ${hold_timeout})";
            m = "b"; "," = "h"; "." = "'"; "/" = "?"; rightshift = ",";
            "S-," = ";"; "S-." = ":";
          };
          nav = {
            capslock = "C-tab";
            enter = "C-enter";

            "1" = "C-1"; "2" = "C-2"; "3" = "C-3"; "4" = "C-4"; "5" = "C-5";
            "6" = "C-6"; "7" = "C-7"; "8" = "C-8"; "9" = "C-9"; "0" = "C-0";
            "-" = "C--"; "=" = "C-=";
            
            q = "C-q"; w = "C-w"; e = "C-l"; r = "C-r"; t = "C-t";
            a = "lettermod(meta, C-a, ${idle_timeout}, ${hold_timeout})";
            s = "lettermod(alt, back, ${idle_timeout}, ${hold_timeout})";
            d = "lettermod(shift, forward, ${idle_timeout}, ${hold_timeout})";
            f = "lettermod(control, C-f, ${idle_timeout}, ${hold_timeout})";
            leftshift = "C-z"; z = "C-x"; x = "C-c"; c = "C-v";

            i = "C-left"; o = "up"; p = "C-right"; "[" = "pageup";
            k = "left"; l = "down"; ";" = "right"; "'" = "pagedown";
            "," = "home"; "/" = "end";

            rightalt = "C-backspace";
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
}
