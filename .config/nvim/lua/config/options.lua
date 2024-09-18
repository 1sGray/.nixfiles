-- shows line numbers
vim.opt.number = true 

-- line numbers show relativee to the current line
vim.opt.relativenumber = true 

-- weither new window appear below current window
vim.opt.splitbelow = true

-- weither new window appear to the right of current window
vim.opt.splitright = true 

-- weither characters skip to the next line after reaching the lines end
vim.opt.wrap = true

-- companion to wrap, don't split words
vim.opt.linebreak = true

-- replaces tab character with spaces on refresh
vim.opt.expandtab = true 

-- number of spaces in a tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- changes defalt clipboard to unnamedplus , which uses the systems clipboard
vim.opt.clipboard = "unnamedplus" 

--this makes the scroll point in the middle, which makes scrolling more comfortable
vim.opt.scrolloff = 999 

-- Virtual edit allows for selecting character-less spaces and beyond the line end
-- add the modes to be enabled in
vim.opt.virtualedit = "block"

-- previews appear in a split window
vim.opt.inccommand = "split"

-- sets commands to be case insensitive
vim.opt.ignorecase = true

-- enable true color
vim.opt.termguicolors = true

-- more space in the neovim command line for displaying messages
vim.opt.cmdheight = 2

-- weither to allow the mouse to be used in neovim
vim.opt.mouse = "a"

-- creates a swapfile
-- vim.opt.swapfile = true

-- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.timeoutlen = 300

-- enable persistent undo
-- vim.opt.undofile = true

-- faster completion (4000ms default)
-- vim.opt.updatetime = 300

-- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.writebackup = false

-- highlight the current line
vim.opt.cursorline = true
