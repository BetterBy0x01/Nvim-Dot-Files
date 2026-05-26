return {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
        require('toggleterm').setup({
            -- open terminal at the bottom with a reasonable size
            size = 15,
            -- use <ctrl> + t to toggle the terminal
            open_mapping = [[<C-t>]],
            -- open terminal in a horizontal split at the bottom
            direction = 'horizontal',
            -- persist the terminal across buffer switches
            persist_mode = true,
            -- start in insert mode when opening terminal
            start_in_insert = true,
            -- close the terminal window when the process exits
            close_on_exit = true,
            -- use your existing shell
            shell = vim.o.shell,
        })

        -- use <Esc> to exit terminal insert mode like a normal buffer
        vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

        -- navigate out of terminal into splits using <ctrl> + hjkl
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = 'Move to left window' })
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = 'Move to bottom window' })
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = 'Move to top window' })
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = 'Move to right window' })
    end
}
