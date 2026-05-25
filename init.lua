-- Declare the path where lazy will clone plugin code
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check to see if lazy itself has been cloned, if not clone it into the lazy.nvim directory
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

-- Add the path to the lazy plugin respositories to the vim runtime path
vim.opt.rtp:prepend(lazypath)

-- Declare a few options for lazy
local opts = {
    change_detection = {
        -- Don't notify us every time a change is made to the configuration
        notify = false
    },
    checker = {
        -- Automatically check for package updates
        enabled = true,
        -- Don't span us with notification every time there is an update
        notify = false
    }
}

-- Vertical visual guideline set to column 100
vim.opt.colorcolumn = "100"

-- Load the options from the config/options.lua file
require("config.options")
-- Load the keymaps from the config/keymaps.lua file
require("config.keymaps")

-- Compatibility shim for Neovim 0.10+
if not vim.treesitter.ft_to_lang then
  vim.treesitter.ft_to_lang = function(ft)
    if vim.treesitter.language and vim.treesitter.language.get_lang then
      return vim.treesitter.language.get_lang(ft) or ft
    end
    return ft
  end
end

-- Setup lazy, this should always be last
-- Tell laxy that all plugin specs are found in the plugins directory
-- Pass it the options we specified above
require("lazy").setup("plugins", opts)


