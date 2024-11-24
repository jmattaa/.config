require "colors"
local utils = require "utils"

function L_long_format(entry, longest_name)
    local perms = string.format("%s%s", entry.type, utils.getPerms(entry.mode))

    local last_modified = os.date("%b %d %H:%M", entry.mtime)
    local size = utils.formatSize(entry.size)
    local owner = string.format("%-" .. longest_name .. "s ", entry.owner)

    return string.format("%s %s%s %s%s %s%s ",
        perms,
        L_colors.SYMLINK,
        last_modified, L_colors.MEDIA, size,
        L_colors.SYMLINK, owner)
end
