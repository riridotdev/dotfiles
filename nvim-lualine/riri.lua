local colors = {
        bg_1 = '#252525',
        bg_15 = '#2a2a2a',
        bg_2 = '#363636',
        bg_3 = '#464646',
        bg_mid = '#7d7d7d',
        fg_1 = '#b3b3b3',
        fg_2 = '#b3b3b3',
        fg_3 = '#f0f0f0',

        orange = "#ffb56f",
        cyan = "#bdcfe4",
        blue = "#76a8f0",
        light_blue = "#96d7ef",
        light_green = "#98b52c",
}
return {
        normal = {
                a = { bg = colors.cyan, fg = colors.bg_1, gui = 'bold' },
                b = { bg = colors.bg_3, fg = colors.fg_2 },
                c = { bg = colors.bg_15, fg = colors.fg_3, gui = 'bold' }
        },
        insert = {
                a = { bg = colors.orange, fg = colors.bg_1, gui = 'bold' },
                b = { bg = colors.bg_3, fg = colors.fg_2 },
                c = { bg = colors.bg_15, fg = colors.fg_3, gui = 'bold' }
        },
        visual = {
                a = { bg = colors.light_blue, fg = colors.bg_1, gui = 'bold' },
                b = { bg = colors.bg_3, fg = colors.fg_2 },
                c = { bg = colors.bg_15, fg = colors.fg_3 }
        },
        replace = {
                a = { bg = colors.red, fg = colors.black, gui = 'bold' },
                b = { bg = colors.bg_3, fg = colors.fg_2 },
                c = { bg = colors.bg_15, fg = colors.fg_1 }
        },
        command = {
                a = { bg = colors.light_green, fg = colors.black, gui = 'bold' },
                b = { bg = colors.bg_3, fg = colors.fg_2 },
                c = { bg = colors.bg_15, fg = colors.fg_1 }
        },
        inactive = {
                a = { bg = colors.bg_15, fg = colors.fg_1, gui = 'bold' },
                b = { bg = colors.bg_15, fg = colors.bg_mid },
                c = { bg = colors.bg_15, fg = colors.bg_mid }
        }
}
