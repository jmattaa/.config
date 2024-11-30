local M = {}

function M.formatSize(size)
    if size == -1 then -- -1 size means it's a directory
        return "      ---"
    end

    if size < 1024 then
        return string.format("%6d  B", size)
    elseif size < 1024 * 1024 then
        return string.format("%6.2f KB", size / 1024)
    elseif size < 1024 * 1024 * 1024 then
        return string.format("%6.2f MB", size / (1024 * 1024))
    else
        return string.format("%6.2f GB", size / (1024 * 1024 * 1024))
    end
end

return M
