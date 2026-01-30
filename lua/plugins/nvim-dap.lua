return {
    "mfussenegger/nvim-dap",
    opts = {},
    config = function()
        local dap = require('dap')

        dap.adapters.php = {
            type = 'executable',
            command = 'node',
            args = { os.getenv('HOME') .. '/WORKS/ITB/php-debug/vscode-php-debug/out/phpDebug.js' }
        }

        dap.configurations.php = {
            {
                type = 'php',
                request = 'launch',
                name = 'Listen for Xdebug',
                port = 9003,
                pathMappings = {
                    ["/var/www/html"] = "/home/iqionly/WORKS/ITB/six",
                },
            }
        }
    end
};
