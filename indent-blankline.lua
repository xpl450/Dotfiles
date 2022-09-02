vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E27878 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E2A478 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#B4BE82 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#89B8C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#84A0C6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#A093C7 gui=nocombine]]
require("indent_blankline").setup {
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
    buftype_exclude = {"terminal"}
}
