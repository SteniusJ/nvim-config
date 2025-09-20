return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',

    keys = {
        {
            '<leader>f',
            function()
                vim.cmd([[:Telescope find_files]])
            end,
            desc = 'telescope open',
        },
    },
}
