require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'aquarium',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
