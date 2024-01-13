return {

    -- which key for help when a key is pressed
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end,
        opts = {}
    },

    -- nvim-tree for file explorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require('nvim-tree').setup({
                sort = {
                    sorter = "case_sensitive",
                },
                update_focused_file = {
                    enable = true,
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })

            -- keymaps
            vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeToggle<CR>', {
                desc = '[T]oggle [T]ree'
            })
            vim.keymap.set('n', '<leader>tf', '<Cmd>NvimTreeFocus<CR>', {
                desc = '[T]oogle tree [F]ocus'
            })
        end
    },

    -- treesitter for syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "go", "gomod", "gosum", "gowork",
                    "html",
                    "css", "javascript", "python", "rust", "dart", "bash", "dockerfile", "markdown",
                    "markdown_inline", "regex" },
                sync_install = false,
                auto_install = false,
                ignore_install = {},
                highlight = {
                    enable = true,
                    use_languagetree = true
                },

                indent = {
                    enable = true
                }
            })
        end
    },

    -- trouble for diagnostics
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        config = function()
            -- Lua
            vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end, { desc = 'Toggle Diagnostics' })
            vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
                { desc = 'Toggle WorkSpace Diagnostics' })
            vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
                { desc = 'Toggle Document Diagnostics' })
            vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end,
                { desc = 'Toggle QuickFix' })
            vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end,
                { desc = 'Toggle LocList' })
            vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end,
                { desc = 'Toggle LSP References' })
        end
    },

    -- indentscope for highlighting selected scope
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            scope = { enabled = false },
        },
    },
}
