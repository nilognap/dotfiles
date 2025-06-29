{
  programs.yt-dlp = {
    enable = true;
    settings = {
      extract-audio = true;
      no-overwrites = true;
      audio-format = "mp3";
      audio-quality = "320K";
      no-mtime = "true";
      no-playlist = "true";
    };
  };
}
