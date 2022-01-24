local utils = require('utils')

--NvimTree
utils.nnoremap('<F2>', ':NvimTreeToggle<CR>')

-- Change Panes
utils.nnoremap('<C-l>', '<C-w>l')
utils.nnoremap('<C-h>', '<C-w>h')
utils.nnoremap('<C-j>', '<C-w>j')
utils.nnoremap('<C-k>', '<C-w>k')

-- Visual mode blockwise indent
utils.vnoremap('>', '>gv')
utils.vnoremap('<', '<gv')


-- ESC
utils.inoremap('jk', '<Esc>')
utils.inoremap('kj', '<Esc>')

-- Arrow Keys disabled normal mode
utils.nnoremap('<Up>', '<Nop>')
utils.nnoremap('<Down>', '<Nop>')
utils.nnoremap('<Left>', '<Nop>')
utils.nnoremap('<Right>', '<Nop>')

--nohm
utils.nnoremap('<S-h>', ':nohl<CR>')


-- BufferLine
utils.nnoremap('<TAB>', ':BufferLineCycleNext<CR>')
utils.nnoremap('<S-TAB>', ':BufferLineCyclePrev<CR>')

--split
utils.nnoremap('<leader>--', ':split<CR>')
utils.nnoremap('<leader>//', ':vsplit<CR>')

utils.nnoremap('<leader>q', ':Bdelete<CR>')
