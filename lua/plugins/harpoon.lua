return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
        menu = {
            width = vim.api.nvim_win_get_width(0) - 4,
        },
        settings = {
            save_on_toggle = false,
            sync_on_ui_close = false,
        },
    },
    keys = function()
        local keys = {
            {
                "<leader>H",
                function()
                    local harpoon = require("harpoon");
                    harpoon:list():add();
                end,
                desc = "Harpoon File",
            },
            {
                "<leader>hc",
                function()
                    local harpoon = require("harpoon");
                    harpoon:list():clear();
                end,
                desc = "Harpoon clearing!",
            },
            {
                "<leader>hl",
                function()
                    local harpoon = require("harpoon");
                    harpoon.ui:toggle_quick_menu(harpoon:list());
                end,
                desc = "see Harpoon list",
            },
            {
                "<leader>b1",
                function()
                    local harpoon = require("harpoon");
                    harpoon:list():prev();
                end;
                desc = "Harpoon Backtogo",
            }
        }

        for i = 1, 9 do
            table.insert(keys, {
                "<leader>" .. i,
                function()
                    require("harpoon"):list():select(i)
                end,
                desc = "Harpoon to File " .. i,
            })
        end
        return keys
    end,
};
