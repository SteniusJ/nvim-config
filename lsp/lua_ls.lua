return {
    -- Command arguments to start the server
    cmd = { 'lua-language-server' },

    -- Filetypes to automatically attach to
    filetypes = { 'lua' },
 
    -- Sets "root directory" to the parrent directory of the file in the
    -- current buffer that contains either a ".luarc.json" or a
    -- ".luarc.jsonc" file. Files that share a root directory will reuse
    -- the connection to the same LSP server.
    root_markers = { { '.luarc.json', 'luarc.jsonc' }, '.git' },

    -- Specific settings to send to the server. The schema for this is
    -- defined by the server.
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognise the "vim" global
                globals = { 'vim' },
            },
        },
    },
}

