-- ~/.config/nvim/lua/plugins/neotest-adapter.lua
return {
  "nvim-neotest/neotest",
  dependencies = {
    "zidhuss/neotest-minitest", -- Add the Minitest adapter here
  },
  opts = function(_, opts)
    -- Ensure the adapter is added to the existing Neotest setup
    opts.adapters = vim.list_extend(opts.adapters or {}, {
      require("neotest-minitest"),
    })
  end,
}
