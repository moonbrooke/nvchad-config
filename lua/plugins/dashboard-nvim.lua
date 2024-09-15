return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
            theme = 'hyper',
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    {
                        icon = '󰈞 ',
                        icon_hl = '@variable',
                        desc = 'Files',
                        group = 'Label',
                        action = 'Telescope find_files',
                        key = 'f',
                    },
                    {
                        desc = ' Commands',
                        group = 'DiagnosticHint',
                        action = 'Telescope commands',
                        key = 'c',
                    },
                    { desc = '󰏔 Update', group = '@property', action = 'Lazy update', key = 'u' },
                    {
                        desc = '󰏓 Mason',
                        group = 'Number',
                        action = 'Mason',
                        key = 'm',
                    },
                },
            },
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
