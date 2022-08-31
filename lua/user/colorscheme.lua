

local status_ok, gruvbox = pcall(require, "gruvbox")
if not status_ok then
  return
end

gruvbox.setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "soft", -- can be "hard", "soft" or empty string
  overrides = {},
})

vim.cmd [[

autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
