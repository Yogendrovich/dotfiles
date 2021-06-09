local set_keymap = require('common').set_keymap
local nvim_set_keymap = require('common').nvim_set_keymap
-- common
set_keymap('n', '<leader>q', '<cmd>q!<cr>')
set_keymap('n', '<leader>e', '<cmd>e!<cr>')
set_keymap('n', '<leader>Q', '<cmd>qa!<cr>')
set_keymap('n', '<leader>w', '<cmd>wq!<cr>')
set_keymap('n', '<leader>n', '<cmd>set nonumber norelativenumber<cr>')
set_keymap('n', '<leader>N', '<cmd>set number<cr>')
set_keymap('n', '<leader>R', '<cmd>set relativenumber<cr>')
-- moving
set_keymap('i', '<c-a>', '<Esc>I')
set_keymap('i', '<c-e>', '<End>')
set_keymap('n', 'k', 'gk')
set_keymap('n', 'j', 'gj')
-- editing
set_keymap('n', 'Y', 'y$')
set_keymap('n', '<a-Up>', '<cmd>m .-2<cr>')
set_keymap('n', '<a-Down>', '<cmd>m .+1<cr>')
set_keymap('i', '<c-d>', '<Esc>ddi')
-- splits
set_keymap('n', '<leader>s', '<c-w>w')
set_keymap('n', '<leader>j', '<c-w>j')
set_keymap('n', '<leader>k', '<c-w>k')
set_keymap('n', '<leader>h', '<c-w>h')
set_keymap('n', '<leader>l', '<c-w>l')
-- tab
set_keymap('n', '<s-Tab>', 'gT')
set_keymap('n', '<Tab>', 'gt')
set_keymap('n', '<c-1>', '1gt')
set_keymap('n', '<c-2>', '2gt')
set_keymap('n', '<c-3>', '3gt')
set_keymap('n', '<c-4>', '4gt')
set_keymap('n', '<c-5>', '5gt')
set_keymap('n', '<c-6>', '6gt')
set_keymap('n', '<c-7>', '7gt')
set_keymap('n', '<c-8>', '8gt')
set_keymap('n', '<c-9>', '9gt')
set_keymap('n', '<c-0>', '<cmd>tablast<cr>')
-- buf
set_keymap('n', '<leader>[', 'bprev')
set_keymap('n', '<leader>]', 'bnext')
-- quickfix
set_keymap('n', '<leader>cc', '<cmd>cclose<cr>')
set_keymap('n', '<leader>;', '<cmd>cprev<cr>')
set_keymap('n', '<leader>\'', '<cmd>cnext<cr>')
-- command
set_keymap('c', '<c-a>', '<Home>')
set_keymap('c', '<c-e>', '<End>')

-- LSP
set_keymap('n', '<c-b>', '<cmd>lua vim.lsp.buf.definition()<cr>')
set_keymap('n', '<c-B>', '<cmd>lua vim.lsp.buf.declaration()<cr>')
set_keymap('n', '<c-t>', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
set_keymap('n', '<c-i>', '<cmd>lua vim.lsp.buf.implementation()<cr>')
set_keymap('n', '<c-k>', '<cmd>lua vim.lsp.buf.hover()<cr>')
set_keymap('n', '<c-H>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
set_keymap('n', '<c-r>', '<cmd>lua vim.lsp.buf.references()<cr>')
set_keymap('n', '<c-s>', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
set_keymap('n', '<c-S>', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>')
set_keymap('n', '<c-R>', '<cmd>lua vim.lsp.buf.rename()<cr>')
set_keymap('n', '<c-f>', '<cmd>lua vim.lsp.buf.formatting()<cr>')

-- comment
nvim_set_keymap('i', '<c-/>', '<Esc><Plug>CommentaryLine', {})
nvim_set_keymap('n', '<c-/>', '<Plug>CommentaryLine', {})
nvim_set_keymap('v', '<c-/>', '<Plug>Commentary', {})

-- hop.nvim
set_keymap('n', '<c-h>', '<cmd>HopWord<cr>')
