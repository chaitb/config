return {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000, -- Load colorscheme before other plugins
    config = function()
        require('rose-pine').setup({
            variant = 'moon', -- 'auto', 'main', 'moon', or 'dawn'
            dark_variant = 'moon',
            dim_inactive_windows = false,
            extend_background_behind_borders = true,
        })
        vim.cmd('colorscheme rose-pine')
    end
}