local vo = vim.opt
local vk = vim.keymap

-- Editor configuration

vo.tabstop = 2
vo.shiftwidth = 2
vo.expandtab = true
vo.autoindent = true
vo.smartindent = true

vo.number = true
vo.relativenumber = true

vo.ignorecase = true
vo.smartcase = true
vo.hlsearch = false

vo.showbreak = ↪

vo.scrolloff = 3

vo.mouse = 'n'
vo.mousemodel = 'popup'
vo.mousescroll = 'ver:1,hor:0'

vo.undofile = true

vo.completeopt = 'menu,menuone,popup,fuzzy,noinsert'

vo.termguicolors = true

-- Editor keymaps

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vk.set('n', '<C-a>', 'ggVG')
vk.set('n', '<C-i>', 'mzgg=G`z', { desc = 'Indent text', noremap = 'true' })
