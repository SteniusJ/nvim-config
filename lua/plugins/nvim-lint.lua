return {
  "mfussenegger/nvim-lint",
  event = { "BufWritePost", "BufReadPost", "InsertLeave" },
    config = function(_, _opts)

        -- Add linters like below
        -- <filename> = { "<linter command name>" }
        -- You can get the filetype by typing <vim.bo.filetype> in command mode
        require("lint").linters_by_ft = {
            html = { "markuplint" },
            javascript = { "jshint" },
            lua = { "luacheck" },
        }

        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
            callback = function()
                require("lint").try_lint()
            end,
        })
    end,
}
