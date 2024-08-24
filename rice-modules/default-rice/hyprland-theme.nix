{config, pkgs, lib, inputs, themeSettings, ...}:

{
  
  wayland.windowManager.hyprland = {
    general = {
      border_size = 1; # size of the border around windows DEF = 1
      no_border_on_floating = false; # disable borders for floating windows DEF = false
      gaps_in = 5; # gaps between windows, also supports css style gaps (top, right, bottom, left -> 5,10,15,20) DEF = 5
      gaps_out = 20; # gaps between windows and monitor edges, also supports css style gaps (top, right, bottom, left -> 5,10,15,20) DEF = 20
      gaps_workspaces = 0; # gaps between workspaces. Stacks with gaps_out. DEF = 0
      "col.inactive_border" = "0xff444444"; # border color for inactive windows DEF = "0xff444444"
      "col.active_border" = "0xffffffff"; # border color for the active window DEF = "0xffffffff"
      "col.nogroup_border" = "0xffffaaff"; # inactive border color for window that cannot be added to a group (see denywindowfromgroup dispatcher) DEF = "0xffffaaff"
      "col.nogroup_border_active" "0xffff00ff"= ; # active border color for window that cannot be added to a group DEF = "0xffff00ff"
    };
    
    decoration = {
      rounding = 5; # rounded corners’ radius (in layout px ), DEF = 0
      active_opacity = 1.0; # opacity of active windows. [0.0 - 1.0] DEF = 1.0
      inactive_opacity = 1.0; # opacity of inactive windows. [0.0 - 1.0] DEF = 1.0
      fullscreen_opacity = 1.0; # opacity of inactive windows. [0.0 - 1.0] DEF = 1.0
      drop_shadow = true; # whether enable drop shadows on windows DEF =  true
      shadow_range = true; # Shadow range (“size”) in layout px, DEF = 4
      shadow_render_power = 3; # in what power to render the falloff (more power, the faster the falloff) [1 - 4] DEF = 3
      shadow_ignore_window = true; # if true, the shadow will not be rendered behind the window itself, only around it. DEF = true
      "col.shadow" = "0xee1a1a1a"; # shadow’s color. Alpha dictates shadow’s opacity. DEF = "0xee1a1a1a"
      #"col.shadow_inactive" = ; # inactive shadow color. (if not set, will fall back to col.shadow) DEF = unset
      shadow_offset = [0,0]; # shadow’s rendering offset. DEF = [0,0]
      shadow_scale = 1.0; # shadow’s scale. [0.0 - 1.0] DEF = 1.0
      dim_inactive = false; # enables dimming of inactive windows DEF = false
      dim_strength = 0.5; # how much inactive windows should be dimmed [0.0 - 1.0] DEF = 0.5
      dim_special = 0.2; # how much to dim the rest of the screen by when a special workspace is open. [0.0 - 1.0] DEF = 0.2
      dim_around = 0.4; # how much the dimaround window rule should dim by. [0.0 - 1.0] DEF = 0.4
      #screen_shader = ; # a path to a custom shader to be applied at the end of rendering. See examples/screenShader.frag for an example. DEF = none
      
      blur = {
        enabled = true; #	enable kawase window background blur DEF = true
      
        # `blur:size` and `blur:passes` have to be at least 1.
        # Increasing `blur:passes` is necessary to prevent blur looking wrong on higher `blur:size` values, but remember that higher `blur:passes` will require more strain on the GPU.
        size = 8; # blur size (distance) DEF = 8
        passes = 1; # the amount of passes to perform DEF = 1
      
        ignore_opacity = false; # make the blur layer ignore the opacity of the window DEF = false
        new_optimizations = true; # whether to enable further optimizations to the blur. Recommended to leave on, as it will massively improve performance. DEF = true
        xray = false; # if enabled, floating windows will ignore tiled windows in their blur. Only available if blur_new_optimizations is true. Will reduce overhead on floating blur significantly. DEF = false
        noise = 0.0117; # how much noise to apply. [0.0 - 1.0] DEF = 0.0117
        contrast = 0.8916;# contrast modulation for blur. [0.0 - 2.0] DEF = 0.8916
        brightness = 0.8172; # brightness modulation for blur. [0.0 - 2.0] DEF = 0.8172
        vibrancy = 0.1696; # Increase saturation of blurred colors. [0.0 - 1.0] DEF = 0.1696
        vibrancy_darkness = 0.0; # How strong the effect of vibrancy is on dark areas . [0.0 - 1.0] DEF = 0.0
        special = false; # whether to blur behind the special workspace (note: expensive) DEF = false
        popups = false; # whether to blur popups (e.g. right-click menus) DEF = false
        popups_ignorealpha = 0.2; # works like ignorealpha in layer rules. If pixel opacity is below set value, will not blur. [0.0 - 1.0] DEF = 0.2
      };
    };
    
  };
  
}