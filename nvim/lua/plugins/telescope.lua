local set_keymap = require('../common').set_keymap
set_keymap(
    'n',
    '<c-f>',
    '<cmd>Telescope find_files find_command=fd,--hidden,--no-ignore,--exclude,*.git,--type,f<cr>'
)
set_keymap('n', '<c-p>', '<cmd>Telescope git_files<cr>')
set_keymap('n', '<c-g>', '<cmd>Telescope live_grep<cr>')
set_keymap('n', '<c-b>', '<cmd>Telescope buffers<cr>')
set_keymap('n', '<c-l>', '<cmd>Telescope lsp_document_symbols<cr>')

local actions = require('telescope.actions')
require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = actions.close,
            },
        },
    },
})
