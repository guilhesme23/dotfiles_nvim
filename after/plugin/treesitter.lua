require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "rust", "cpp", "java" },
    auto_install = true,
    highlight = {
        enable = true
    },
    autotag = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}
