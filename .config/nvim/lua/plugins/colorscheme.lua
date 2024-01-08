return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = {     -- :h background
                    light = "latte",
                    dark = "mocha"
                },
                transparent_background = false, -- disables setting the background color.
                show_end_of_buffer = true,      -- shows the '~' characters after the end of buffers
                term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,            -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15           -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,              -- Force no italic
                no_bold = false,                -- Force no bold
                no_underline = false,           -- Force no underline
                styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },    -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {}
                },
                color_overrides = {
                    mocha = {
                        base = "#000000"
                    }
                },
                custom_highlights = {},
                integrations = {
                    markdown = true,
                    cmp = true,
                    dap = true,
                    dap_ui = true,
                    gitsigns = true,
                    notify = true,
                    noice = true,
                    mason = true,
                    treesitter = true,
                    telescope = true,
                    which_key = true,
                    lsp_trouble = true,
                    native_lsp = {
                        enabled = true,
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" }
                        },
                        inlay_hints = {
                            background = true
                        }
                    },
                    mini = {
                        enabled = true,
                        indentscope_color = ""
                    }
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                }
            })

            vim.cmd.colorscheme "catppuccin"
        end
    },
}