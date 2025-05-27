require "colors"
require "filters"
local utils = require "utils"

function L_long_format(entry, longest_name)
    local last_modified = os.date("%b %d %H:%M", entry.mtime)
    local size = utils.formatSize(entry.size)
    local owner = string.format("%-" .. longest_name .. "s ", entry.owner)

    return string.format("%s %s%s %s%s ",
        last_modified, L_colors.MEDIA, size,
        L_colors.SYMLINK, owner)
end

L_default_args = {
    all = true,
    files = true,
    directories = true,
    symlinks = true,
    git = { status = false, ignore = false },
    long = false,
    ensure_colors = false,
    sort = true,
    filters = {},
}
