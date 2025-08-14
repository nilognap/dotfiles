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
          main = { # external keyboard
            delete = "toggle(laptop)";
          };
          laptop = {
            capslock = "backspace";

            space = "lettermod(nav, space, ${idle_timeout}, ${hold_timeout})";
            # rightalt = "overload(oneshot(shift), layer(sym))";
            rightalt = "oneshot(shift)";
            "\\" = "rightalt"; # compose key

            q = "v"; w = "m"; e = "l"; r = "c"; t = "p";
            a = "lettermod(meta, s, ${idle_timeout}, ${hold_timeout})";
            s = "lettermod(alt, t, ${idle_timeout}, ${hold_timeout})";
            d = "lettermod(shift, r, ${idle_timeout}, ${hold_timeout})";
            f = "lettermod(control, d, ${idle_timeout}, ${hold_timeout})";
            g = "y";
            leftshift = "z"; z = "k"; x = "q"; c = "g"; v = "w";

            b = "noop"; y = "noop"; h = "noop"; n = "noop";

            u = "x"; i = "f"; o = "o"; p = "u"; "[" = "j";
            j = ".";
            k = "lettermod(control, n, ${idle_timeout}, ${hold_timeout})";
            l = "lettermod(shift, a, ${idle_timeout}, ${hold_timeout})";
            ";" = "lettermod(alt, e, ${idle_timeout}, ${hold_timeout})";
            "'" = "lettermod(meta, i, ${idle_timeout}, ${hold_timeout})";
            m = "b"; "," = "h"; "." = "'"; "/" = ";"; rightshift = ",";
          };
          nav = {
            j = "left"; k = "down"; l = "up"; ";" = "right";
          };
        };
      };
      externalMapped = {
        ids = [ "" ];
        settings = {
          main = {};
        };
      };
    };
  };
}
