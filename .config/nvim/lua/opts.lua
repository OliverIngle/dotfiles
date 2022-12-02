local opt = vim.opt

-- ------ Context 
opt.number = true
opt.signcolumn = "yes"

-- ------ File encoding 
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- ------ Whitespace
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- ------ Splits
opt.splitright = true
opt.splitbelow = false

-- ------ Mouse
opt.mouse = 'a'

-- ------ Copying/Yanking
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)
