local M = {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  opts = {}
}

local settings = {
    max_time = 4000,
    max_count = 3,
    allow_different_key = true,
}

function M.config()
    require("hardtime").setup(settings)
end

return M
