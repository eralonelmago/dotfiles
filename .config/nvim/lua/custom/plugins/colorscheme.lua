return {
  "rose-pine/neovim", 
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "dark",
      sytles = {
        bold = true,
        italic = true,
        transparency = false,
      }
    })

    vim.cmd("colorscheme rose-pine")
  end
}
