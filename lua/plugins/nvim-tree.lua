return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	init = function()
	    vim.g.loaded_netrw = 1
	    vim.g.loaded_netrwPlugin = 1
	    vim.opt.termguicolors = true
    end,
    opts = {
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 30,
        },
        filters = {
            dotfiles = true,
        },
    },
   	keys = {
     	{
       		"<leader>t",
       		function()
         	vim.cmd([[:NvimTreeOpen]])
       		end,
       	desc = "nvim tree open",
     	}
   },
}
