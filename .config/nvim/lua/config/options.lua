vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.list = true;
vim.opt.listchars = { tab = '▏ ', eol = '↲', trail = '·', multispace = '·', nbsp = '•' }
vim.opt.fillchars = { eob = "⊘" }
vim.opt.splitright = true
vim.opt.splitbelow = false
vim.opt.laststatus = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.wildmenu = true
vim.opt.hlsearch = true
vim.opt.conceallevel = 2
vim.opt.colorcolumn = "120"
vim.opt.foldmethod = "manual"
vim.opt.cursorline = true
vim.cmd('filetype indent on')

vim.g.rust_recommended_style = 0
