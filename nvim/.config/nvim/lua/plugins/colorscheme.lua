return {
    'vague2k/vague.nvim',
    priority = 10000,
    config = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme "vague"
    end
}
