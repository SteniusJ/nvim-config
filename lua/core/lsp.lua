vim.lsp.start({
    name = 'rust-lsp-server',
    cmd = {'rust-analyzer'},
    root_dir = vim.fs.dirname(vim.fs.find({'main.rs'}, {upward = true})[1]),
})
