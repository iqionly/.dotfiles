-- Enable treesitter-based highlighting
vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        pcall(vim.treesitter.start)
    end,
})

-- Enable treesitter-based indentation
vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        if vim.treesitter.language.get_lang(vim.bo.filetype) then
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
    end,
})

-- Blade filetype detection
vim.filetype.add({
    pattern = {
        ['.*%.blade%.php'] = 'blade',
        ['.*%.html%.jinja'] = 'htmldjango',
        ['.*%.html%.jinja2'] = 'htmldjango',
        ['.*%.html%.j2'] = 'htmldjango',
    }
})

-- Command to install all parsers
vim.api.nvim_create_user_command('TSInstallAll', function()
    for _, lang in ipairs(ensure_installed) do
        vim.cmd('TSInstall ' .. lang)
    end
end, { desc = 'Install all commonly used treesitter parsers' })
