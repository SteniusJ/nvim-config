return {
   "nvim-treesitter/nvim-treesitter",
   lazy = false,
   branch = "master",
   build = ":TSUpdate",
   config = function()
       local configs = require 'nvim-treesitter.configs'
       configs.setup {
           highlight = {
               enable = true
           },
       }
    end,
}
