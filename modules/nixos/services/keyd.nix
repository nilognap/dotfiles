{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = let
            # minimum amount of time waited after the last key was struck for mod
            idle_timeout = "100";
            # the amount of time the key need to be held down for mod
            hold_timeout = "300";
          in {
            capslock = "backspace";
            a = "lettermod(extend, a, ${idle_timeout}, ${hold_timeout})";
            s = "lettermod(alt, s, ${idle_timeout}, ${hold_timeout})";
            d = "lettermod(control, d, ${idle_timeout}, ${hold_timeout})";
            f = "lettermod(shift, f, ${idle_timeout}, ${hold_timeout})";
            j = "lettermod(shift, j, ${idle_timeout}, ${hold_timeout})";
            k = "lettermod(control, k, ${idle_timeout}, ${hold_timeout})";
            l = "lettermod(alt, l, ${idle_timeout}, ${hold_timeout})";
            ";" = "lettermod(extend, ;, 300${idle_timeout} ${hold_timeout})";
          };
          extend = {
            w = 7; e = 8; r = 9;
            s = 4; d = 5; f = 6;
            x = 1; c = 2; v = 3;
            leftalt = 0;
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
