return {
    cmd = { "ruff", "server" },
    filetypes = { "py", "python" },
    init_options = {
        settings = {
            lint = {
                enable = true,
                extendSelect = { "E", "F", "W", "I" }
            },
            format = {
                enable = true,
            },
        }
    }
}
