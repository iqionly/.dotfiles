-- Personal Settings
local opt = vim.opt

opt.syntax = "off";

opt.tabstop = 4;
opt.shiftwidth = 4;
opt.expandtab = true;
opt.smartindent = true;

opt.number = true;
opt.relativenumber = true;
opt.scrolloff = 16;

opt.swapfile = false;
opt.backup = false;
opt.undodir = os.getenv("HOME") .. "/.vim/undodir";
opt.undofile = true;

-- Ensure Install all this for treesitter
ensure_installed = {
    "blade",
    "c",
    "html",
    "javascript",
    "json",
    "jsonc",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "php",
    "query",
    "regex",
    "tsx",
    "typescript",
    "twig",
    "c_sharp",
    "xml",
    "yaml",
};

