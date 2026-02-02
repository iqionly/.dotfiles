M = {}
M.on_attach = function(_, bufnr)
	local nmap = function(keys, func, desc)
		if desc then
			desc = "LSP: " .. desc
		end

		vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
	end

	nmap("gd", require("telescope.builtin").lsp_definitions, "Goto Definition")
	nmap("gr", require("telescope.builtin").lsp_references, "Goto References")
	nmap("gi", require("telescope.builtin").lsp_implementations, "Goto Implementation")
	nmap("gt", require("telescope.builtin").lsp_type_definitions, "Type Definition")
	-- nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

	nmap("gl", vim.diagnostic.open_float, "Open Diagnostic Float")

	nmap("K", vim.lsp.buf.hover, "Hover Documentation")
	nmap("gs", vim.lsp.buf.signature_help, "Signature Documentation")

	-- nmap ("gD", vim.lsp.buf.declaration, "Goto Declaration")
	nmap("<leader>gA", vim.lsp.buf.add_workspace_folder, "Workspace Add Folder")
	nmap("<leader>gR", vim.lsp.buf.remove_workspace_folder, "Workspace Remove Folder")
	nmap("<leader>gL", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, "Workspace List Folders")

	nmap("<leader>gV", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split")

    -- List Debugger Keymaps
    vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = "DAP Start/Stop Debugging" })
    vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = "DAP Step over" })
    vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = "DAP Step into" })
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = "DAP Step out" })
    vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = "DAP Toggle breakpoint" })
    vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end, { desc = "DAP Set breakpoint" })
    vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc = "DAP Set breakpoint with messages" })
    vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, { desc = "DAP Repl open" })
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = "DAP Run last" })
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
        require('dap.ui.widgets').hover()
    end, { desc = "DAP Widget hover" })
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
        require('dap.ui.widgets').preview()
    end, { desc = "DAP Widget preview" })
    vim.keymap.set({'n', 'v'}, '<Leader>dc', function()
        require('dapui').toggle();
    end, { desc = "DAP Windows Open/Close" })
    vim.keymap.set('n', '<Leader>df', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.frames)
    end, { desc = "DAP Widget frames float" })
    vim.keymap.set('n', '<Leader>ds', function()
        local widgets = require('dap.ui.widgets')
        widgets.centered_float(widgets.scopes)
    end, { desc = "DAP Widget scope float" })
end

return M
