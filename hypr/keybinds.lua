local mainMod = "SUPER"

local term = "ghostty"
local altterm = "foot"
local browser = "zen-browser"
local altbrowser = "qutebrowser"
local menu = "wofi"

-- APPS
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(altterm))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(altbrowser))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))

hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.window.float { action = "toggle" })
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen { action = "toggle" })

-- move focus with mainMod + hjkl
hl.bind(mainMod .. " + H", hl.dsp.focus { direction = "left" })
hl.bind(mainMod .. " + J", hl.dsp.focus { direction = "down" })
hl.bind(mainMod .. " + K", hl.dsp.focus { direction = "up" })
hl.bind(mainMod .. " + L", hl.dsp.focus { direction = "right" })

-- switch workspace with mainMod + [0-9] and move with mainMod + SHIFT + [0-9]
for i = 0, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus { workspace = i })
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move { workspace = i })
end

-- move/resize windows with mainMod + LMB/RMB and drag
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
