local function colorscheme(name, opts)
  return {
    name,
    lazy = false,
    priority = 1000,
    opts = opts or {},
  }
end

return {
  colorscheme("folke/tokyonight.nvim"),
  colorscheme("rebelot/kanagawa.nvim"),
  colorscheme("rose-pine/neovim"),
  colorscheme("catppuccin/nvim"),
  colorscheme("EdenEast/nightfox.nvim"),
}
