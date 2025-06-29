{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main =
          let
            idle_timeout = 300;
            hold_timeout = 150; # for the key to act as a hold
          in
            {
            capslock = "backspace";
            a = "lettermod(meta, a, 300, 150)";
            s = "lettermod(alt, s, 300, 150)";
            d = "lettermod(control, d, 300, 150)";
            f = "lettermod(shift, f, 300, 150)";
            j = "lettermod(shift, j, 300, 150)";
            k = "lettermod(control, k, 300, 150)";
            l = "lettermod(alt, l, 300, 150)";
            ";" = "lettermod(meta, ;, 300, 150)";
          };
          extend = {};
          nav = {};
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
