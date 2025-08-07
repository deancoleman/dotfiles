
--Default colorscheme
vim.cmd [[colorscheme habamax]]
vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


--Neovim options
vim.o.relativenumber = true
vim.o.ignorecase = noic
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.termguicolors = true

--Keymaps
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e','<CMD>Neotree toggle<CR>')

-- Setup lazy.nvim
require("lazy").setup("plugins")
