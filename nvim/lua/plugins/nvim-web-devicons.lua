local M =  {
    "nvim-tree/nvim-web-devicons",
    commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352",
}

function M.config()
    require("nvim-web-devicons").setup {
        override = {
            zsh = {
                icon = "",
                color = "#428850",
                cterm_color = "65",
                name = "Zsh",
            },
        },
        color_icons = true,
        default = true,
    }
end

return M
