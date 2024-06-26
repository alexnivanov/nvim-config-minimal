require('guard').setup()

local ft = require('guard.filetype')

ft('c'):fmt('clang-format')
    :lint('clang-tidy')

ft('cpp'):fmt('clang-format')
    :lint('clang-tidy')

ft('lua'):fmt('lsp')
    :append('stylua')
    :lint('selene')

ft('python'):fmt('autopep8')
    :lint('pylint')

vim.keymap.set('n', '<c-i>', ':GuardFmt<CR>')
