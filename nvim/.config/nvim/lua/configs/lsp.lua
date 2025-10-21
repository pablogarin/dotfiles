
-- Python LSPs
vim.lsp.enable("ruff")
vim.lsp.enable("pyright")

-- Autocomplete function
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method("textDocument/completion") then
            vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            vim.keymap.set("i", "<C-Space>", function()
                vim.lsp.completion.get()
            end)
        end
    end,
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function(ev)
        vim.lsp.buf.format({ async = false, bufnr = ev.buf })
    end,
})

-- Diagnostics floats
vim.diagnostic.config({
    virtual_text = { prefix = "●", spacing = 2 },
    signs = true,
    underline = { severity = { min = vim.diagnostic.severity.HINT } },
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "if_many",
        header = "",
        prefix = "",
    }
})
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
    end
})
