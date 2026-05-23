return {
    -- Shortened Github URL 
    "Mofiqul/dracula.nvim",
    lazy = false, -- loads this immediately
    priority = 1000, -- loads up first
    config = function()
        vim.cmd.colorscheme "dracula"
    end
}
