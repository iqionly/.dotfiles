local session_dir = vim.fn.expand("~/.config/kitty/nvim-sessions")

-- create folder if not exists
vim.fn.mkdir(session_dir, "p")

-- prevent session from breaking syntax / treesitter
vim.opt.sessionoptions:remove("options")

local function session_file()
    local cwd = vim.fn.getcwd():gsub("/", "%%")
    return session_dir .. "/" .. cwd .. ".vim"
end

-- Auto-restore session ONLY when no file args given
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argc() > 0 then return end

        local session = session_file()
        if vim.fn.filereadable(session) == 1 then
            vim.cmd("source " .. vim.fn.fnameescape(session))
        end
    end,
})

-- Auto-save session on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        if #vim.fn.getbufinfo({ buflisted = 1 }) == 0 then return end
        vim.cmd("mksession! " .. vim.fn.fnameescape(session_file()))
    end,
})

-- re-enable treesitter after loading session
vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    pcall(function() vim.treesitter.start() end)
  end,
})

vim.api.nvim_create_autocmd("SessionLoadPost", {
  callback = function()
    vim.defer_fn(function()
      vim.cmd("silent! bufdo e!")
    end, 800)
  end,
})

