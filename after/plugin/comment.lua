require("mini.comment").setup();

local php_docblock = function()
    -- Must be in visual mode
    local mode = vim.fn.mode()
    if mode ~= "v" and mode ~= "V" then
        print("Select lines in visual mode first")
        return
    end

    local start_line = vim.fn.line("'<")
    local end_line = vim.fn.line("'>")

    local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

    if #lines == 0 then
        return
    end

    local indent = lines[1]:match("^%s*") or ""

    local new_lines = {}
    table.insert(new_lines, indent .. "/**")

    for _, line in ipairs(lines) do
        line = line:gsub("^%s*", "")
        table.insert(new_lines, indent .. " * " .. line)
    end

    table.insert(new_lines, indent .. " */")

    vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, new_lines)
end

vim.keymap.set("v", "<leader>cd", php_docblock, { desc = "PHP DocBlock comment" })

