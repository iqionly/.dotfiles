-- Force not using mouse hehe :)
vim.cmd('set mouse=');
vim.opt.syntax = "off";

require("config.personal");

-- Plugins
require("config.lazy");
require("config.keymaps");
require("config.catppuccin");
vim.lsp.enable('intelephense');
