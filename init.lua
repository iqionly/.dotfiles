-- Force not using mouse hehe :)
vim.cmd('set mouse=');

-- Personal Configuration
require("config.personal");

-- Plugins
require("config.lazy");
require("config.catppuccin");

-- Keymap Bindings
require("config.keymaps");
