require("options")
require("keymaps")
require("bootstrap-lazy")
require("lazy").setup("plugins")
require("colourscheme")
require('telescope').load_extension('fzf')

if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.6
end
