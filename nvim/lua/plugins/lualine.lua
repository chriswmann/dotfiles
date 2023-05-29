local inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = { 'test' },
  lualine_z = {}
}

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts, { ['inactive_sections'] = inactive_sections })
      table.insert(opts, { ['theme'] = "tokyonight" })
    end,
  },
}

