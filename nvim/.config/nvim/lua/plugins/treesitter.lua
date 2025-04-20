return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    vim.cmd('TSUpdate')
    require('nvim-treesitter').setup({
      ensure_installed = {'c', 'lua', 'markdown', 'python', 'java', 'cpp', 'diff', 'css', 'csv', 'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'gitignore', 'html', 'json', 'javascript'},
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        disable = { "c", "rust" },
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
    })
  end
}
