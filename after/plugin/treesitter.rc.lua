local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "json",
    "css",
    "html",
    "lua",
    "javascript"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "javascript.jsx", "typescript.tsx" }
