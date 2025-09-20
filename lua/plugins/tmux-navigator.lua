return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = {
        {
           "<C-h>",
           function()
               vim.cmd([[:TmuxNavigateLeft]])
            end,
            desc = "window left",
        },
        {
            "<C-l>",
            function()
                vim.cmd([[:TmuxNavigateRight]])
            end,
            desc = "window right",
        },
        {
            "<C-j>",
            function()
                vim.cmd([[:TmusNavigateDown]])
            end,
            desc = "window down",
        },
        {
            "<C-k>",
            function()
                vim.cmd([[:TmuxNavigateUp]])
            end,
            desc = "window up",
        },
    },
}
