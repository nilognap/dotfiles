{
  services.libinput = {
    enable = true; # just in case
    touchpad = {
      tappingDragLock = false;
      # disableWhileTyping = true;
      clickMethod = "clickfinger";

      # scroll
      naturalScrolling = true;
      accelProfile = "custom";
      accelStepScroll = 0.1;
      # accelStepScroll = 1000;
    };
  };
}
