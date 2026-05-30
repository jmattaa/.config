hl.monitor {
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
}

-- exec once
hl.on("hyprland.start", function()
    hl.exec_cmd "waybar & hyprpaper"
end)

hl.env("XCURSOR_SIZE", "24")

hl.config {
    input = {
        kb_layout = "us,se",
        kb_variant = "",
        kb_model = "",
        -- `man xkeyboard-config` to get all hihi :>
        kb_options = "grp:alt_shift_toggle",
        kb_rules = "",

        follow_mouse = 1,
        touchpad = {
            natural_scroll = false,
        },

        sensitivity = 0,
    },
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 0,
        layout = "dwindle",
    },
    decoration = {
        active_opacity = 1,
        inactive_opacity = .74,

        blur = {
            enabled = true,
            size = 5,
            passes = 1,
        },
    },
    misc = {
        force_default_wallpaper = 0,
    },
}
