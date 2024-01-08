return {
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = {
                    text = '+'
                },
                change = {
                    text = '~'
                },
                delete = {
                    text = '_'
                },
                topdelete = {
                    text = '‾'
                },
                changedelete = {
                    text = '~'
                }
            },
            current_line_blame = true,
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol',
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100
            },
            current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>'
        }
    },
}