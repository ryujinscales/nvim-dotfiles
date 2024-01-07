return {
    -- Formatting
    {
        'stevearc/conform.nvim',
        event = 'BufWritePre',
        config = function()
            require('conform').setup({
                formatters_by_ft = {
                    -- Conform will run multiple formatters sequentially
                    -- Use a sub-list to run only the first available formatter
                    -- javascript = { { 'prettierd', 'prettier' } },
                    lua = { 'stylua' },
                    rust = { 'rustfmt' },
                    python = { 'blue', 'black' },
                    html = { 'prettierd' },
                    javascript = { 'prettierd' },
                    c = { 'astyle' },
                    cpp = { 'astyle' },
                },
                format_on_save = {
                    -- These options will be passed to conform.format()
                    timeout_ms = 500,
                    lsp_fallback = true,
                },
            })
        end
    },
    -- Linting
    {
        'mfussenegger/nvim-lint',
        event = 'BufWritePre',
        config = function()
            require('lint').linters_by_ft = {
                lua = { 'luacheck' },
                python = { 'pylint' },
                html = { 'tidy' },
                javascript = { 'standardjs' },
                c = { 'cppcheck' },
                cpp = { 'cppcheck' },
            }
            vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
                callback = function()
                    require('lint').try_lint()
                end,
            })
        end
    }
}
