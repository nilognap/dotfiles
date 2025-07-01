{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = let
            # minimum amount of time waited after the last key was struck for mod
            idle_timeout = "50";
            # the amount of time the key need to be held down for mod
            hold_timeout = "300";
          in {
            capslock = "backspace";
            leftshift = "b"; # angle mod

            a = "lettermod(meta, a, ${idle_timeout}, ${hold_timeout})";
            s = "lettermod(extend, s, ${idle_timeout}, ${hold_timeout})";
            d = "lettermod(control, d, ${idle_timeout}, ${hold_timeout})";
            f = "lettermod(shift, f, ${idle_timeout}, ${hold_timeout})";
            g = "lettermod(alt, g, ${idle_timeout}, ${hold_timeout})";

            h = "lettermod(alt, h, ${idle_timeout}, ${hold_timeout})";
            j = "lettermod(shift, j, ${idle_timeout}, ${hold_timeout})";
            k = "lettermod(control, k, ${idle_timeout}, ${hold_timeout})";
            l = "lettermod(extend, l, ${idle_timeout}, ${hold_timeout})";
            ";" = "lettermod(meta, ;, ${idle_timeout} ${hold_timeout})";
          };
          extend = {
            q = "{"; w = 7; e = 8; r = 9; t = "}";
            a = "("; s = 4; d = 5; f = 6; g = ")";
            leftshift = "["; z = 1; x = 2; c = 3; v = "]";
            leftmeta = 0; leftalt = 0;

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
