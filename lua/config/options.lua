vim.g.gitblame_use_blame_commit_file_urls = true

-- Force not using mouse hehe :)
vim.cmd('set mouse=');

-- Set nowrap
-- vim.cmd("set nowrap");

vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    severity_sort = true,
    float = { 
        source = true, 
        style = "minimal", 
        border = "rounded", 
        header = "", 
        prefix = "" 
    },
});
