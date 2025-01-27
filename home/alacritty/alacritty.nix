{
  env = {
    TERM = "xterm-256color";
  };

  window = {
    padding = {
      x = 0;
      y = 0;
    };

    dimensions = {
      columns = 100;
      lines = 26;
    };

    opacity = 1;

    scrolling = {
      history = 10000;
      multiplier = 1;
    };
  };


  font = {
    normal = {
      family = "JetBrainsMono Nerd Font Mono";
      style = "Regular";
    };

    bold = {
      family = "JetBrainsMono Nerd Font Mono";
      style = "Bold";
    };

    italic = {
      family = "JetBrainsMono Nerd Font Mono";
      style = "MediumItalic";
    };

    bold_italic = {
      family = "JetBrainsMono Nerd Font Mono";
      style = "BoldItalic";
    };

    size = 13.0;
    offset = {
      x = 0;
      y = 2;
    };
  };

  draw_bold_text_with_bright_colors = true;

  colors = {
    # Default colors
    primary = {
      background = "0x222436";
      foreground = "0xc8d3f5";
    };

    # Normal colors
    normal = {
      black =   "0x1b1d2b";
      red =     "0xff757f";
      green =   "0xc3e88d";
      yellow =  "0xffc777";
      blue =    "0x82aaff";
      magenta = "0xc099ff";
      cyan =    "0x86e1fc";
      white =   "0x828bb8";
    };

    # Bright colors
    bright = {
      black =    "0x444a73";
      red =      "0xff757f";
      green =    "0xc3e88d";
      yellow =   "0xffc777";
      blue =     "0x82aaff";
      magenta =  "0xc099ff";
      cyan =     "0x86e1fc";
      white =    "0xc8d3f5";
    };

    # indexed_colors:
    #   - { index: 16, color: '0xff966c' }
    #   - { index: 17, color: '0xc53b53' }
  };
}
