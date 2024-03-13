vim.g.plugin_exec = 1
vim.opt.signcolumn = 'yes'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.hlsearch = true
vim.opt.conceallevel = 3
vim.opt.tw = 100
local hl = vim.api.nvim_set_hl
hl(0, "Normal", { bg = "none" })
hl(0, "NormalFloat", { bg = "none" })
hl(0, "GitGutterAdd", { fg = 'none', bg = 'none' })
hl(0, "GitGutterChange", { fg = 'none', bg = 'none'})
hl(0, "GitGutterDelete", { fg = 'none', bg = 'none'})
hl(0, "GitGutterChangeDelete", { fg = 'none', bg = 'none'})
hl(0, "DiagnosticError", { fg = 'none', bg = 'none'})
hl(0, "DiagnosticSignError", { fg = 'none', bg = 'none'})
hl(0, "DiagnosticSignHint", { fg = 'none', bg = 'none'})
hl(0, "DiagnosticSignInfo", { fg = 'none', bg = 'none'})
hl(0, "DiagnosticSignWarn", { fg = 'none', bg = 'none'})
vim.g.jukit_mappings_ext_enabled={'py', 'ipynb'}
