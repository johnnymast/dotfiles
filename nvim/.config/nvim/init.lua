require("config.lazy")

local config = require("nvim-treesitter.configs")

config.setup({
  ensure_installed={"lua", "javascript", "python", "php" },
  highlight = { enable= true },
  indent = { enable= true },
})
