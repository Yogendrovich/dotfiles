require('lspconfig').bashls.setup({})
require('lspconfig').cssls.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').jsonls.setup({})
require('lspconfig').pyls.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').tsserver.setup({})
require('lspconfig').yamlls.setup({})
require('lspconfig').zls.setup({})

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

configs.zk = {
  default_config = {
    cmd = {'zk', 'lsp', '--log', '/tmp/zk-lsp.log'},
    filetypes = {'markdown'},
    root_dir = function()
      return vim.loop.cwd()
    end,
    settings = {}
  };
}

lspconfig.zk.setup({ on_attach = function(client, buffer) 
  -- some custom on_attach function for doing keybindings and other things..
  -- see: https://github.com/neovim/nvim-lspconfig#keybindings-and-completion
end })

