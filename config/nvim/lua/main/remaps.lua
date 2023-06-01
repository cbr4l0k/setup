
local mapper = function(mode, key, result) 
    vim.keymap.set(mode, key, result, {noremap = true, silent = true})
end

-- === General ===
-- Remap <leader>. in normal mode to save the current buffer
mapper("n", "<leader>.", ":w<CR>")

-- === Visual Mode ===
-- Remap Ctrl+J in visual mode to move the selected lines down
mapper('v', "<C-J>", ":m '>+1<CR>gv=gv")

-- Remap Ctrl+K in visual mode to move the selected lines up
mapper('v', "<C-K>", ":m '<-2<CR>gv=gv")

-- === Normal Mode ===
-- Remap J in normal mode to join the current line with the line below
mapper('n', "J", "mzJ`z")

-- Remap <leader>q to run q macro
mapper('n', "<leader>q", "@q")

-- === Window Management ===
-- Remap <leader>sv in normal mode to split the window vertically
mapper('n', '<leader>sv', ':vsplit<CR>')

-- Remap <leader>sh in normal mode to split the window horizontally
mapper('n', '<leader>sh', ':split<CR>')

-- Remap <leader>x in normal mode to close the current window
mapper('n', '<leader>x', ':close<CR>')

-- === Window Navigation ===
-- Remap <leader>h in normal mode to move focus to the left window
mapper('n', '<leader>h', ':wincmd h<CR>')

-- Remap <leader>j in normal mode to move focus to the window below
mapper('n', '<leader>j', ':wincmd j<CR>')

-- Remap <leader>k in normal mode to move focus to the window above
mapper('n', '<leader>k', ':wincmd k<CR>')

-- Remap <leader>l in normal mode to move focus to the right window
mapper('n', '<leader>l', ':wincmd l<CR>')

-- === Window Resizing ===
-- Remap <Leader>+ in normal mode to increase the window height by 3 lines
mapper('n', '<Leader>+', ':res +3<CR>')

-- Remap <Leader>- in normal mode to decrease the window height by 3 lines
mapper('n', '<Leader>-', ':res -3<CR>')

-- === Clipboard ===
-- Remap <Leader>p in visual mode to paste over the selected text, without yanking it
mapper('x', '<Leader>p', "\"_dP")

-- Remap <Leader>y in normal mode to yank to the system clipboard
mapper('n', '<Leader>y', "\"+y")

-- Remap <Leader>y in visual mode to yank to the system clipboard
mapper('v', '<Leader>y', "\"+y")

-- Remap <Leader>Y in normal mode to yank the entire buffer to the system clipboard
mapper('n', '<Leader>Y', "\"+Y")

