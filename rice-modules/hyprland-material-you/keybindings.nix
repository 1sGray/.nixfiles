# all the key binding configurations
{pkgs, lib, inputs, ...}:

{
  
  imports = [ 
    ./keybind-modules/hypr-keybinds.nix
  ];
  
  programs.kitty.keybindings = {
    "ctrl+c" = "copy_or_interrupt";
    "ctrl+f&gt;2" = "set_font_size 20";
  };
  
  programs.tmux = {
    keyMode = "vi"; # VI or Emacs style shortcuts
    mouse = true; # Whether to enable mouse support
    shortcut = "b"; # CTRL following by this key is used as the main shortcut
  };
  
  programs.yazi.keymap = {
    input.keymap = [
      { exec = "close"; on = [ "<c-q>" ]; }
      { exec = "close --submit"; on = [ "<enter>" ]; }
      { exec = "escape"; on = [ "<esc>" ]; }
      { exec = "backspace"; on = [ "<backspace>" ]; }
    ];
    manager.keymap = [
      { exec = "escape"; on = [ "<esc>" ]; }
      { exec = "quit"; on = [ "q" ]; }
      { exec = "close"; on = [ "<c-q>" ]; }
    ];
  };
  
  programs.zathura.mappings = {
    "<right>" = "navigate next";
    D = "toggle_page_mode";
    "[fullscreen] <c-i>" = "zoom in";
  };
  
}
