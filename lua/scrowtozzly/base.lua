local setOption = vim.opt
local setWo = vim.wo
local setVariable = vim.g

setVariable.loaded_netrw = 1
setVariable.loaded_netrwPlugin = 1

setVariable.mapleader = ' '

setOption.number = true

vim.scriptencoding = 'utf-8'
setOption.encoding = 'utf-8'
setOption.fileencoding = 'utf-8'

setOption.scrolloff = 5
setOption.sidescrolloff = 5

setOption.termguicolors = true

setOption.tabstop = 2
setOption.softtabstop = 2
setOption.shiftwidth = 2
setOption.expandtab = true

setOption.mouse = 'a'

setOption.swapfile = false

setOption.cursorline = true
setOption.clipboard = "unnamedplus"
