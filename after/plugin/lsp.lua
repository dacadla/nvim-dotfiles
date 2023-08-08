-- set LSP keybinds
local on_attach = function(_, bufnr)
    local bufmap = function(keys, func)
        vim.keymap.set('n', keys, func, {buffer = bufnr})
    end
    
    bufmap('<leader>r', vim.lsp.buf.rename)
    bufmap('<leader>a', vim.lsp.buf.code_action)
    
    bufmap('gd', vim.lsp.buf.definition)
    bufmap('gD', vim.lsp.buf.declaration)
    bufmap('gI', vim. lsp.buf.implementation)
    bufmap('<leader>D', vim.lsp.buf.type_definition)
    
    bufmap('K', vim.lsp.buf.hover)
    
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
    end, {})
end

-- make capabilities and cmp_nvim_lsp capabilies
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- setup mason
require("mason").setup()
require("mason-lspconfig").setup_handlers({
    -- general
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,
    -- pylsp
    ["pylsp"] = function()
        require('lspconfig').pylsp.setup{
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,
    -- lua-language-server
    ["lua_ls"] = function()
        require('neodev').setup()
        require('lspconfig').lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            Lua = {
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
            },
        }
    end
})