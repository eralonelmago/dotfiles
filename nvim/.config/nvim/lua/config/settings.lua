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

vo.showbreak = '↪'

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
vk.set('n', '<C-i>', 'mzgg=G`z', { desc = 'Indent text', noremap = true })

-- LSP keymaps

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set({'n', 'x'}, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', 'grt', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  end,
})
