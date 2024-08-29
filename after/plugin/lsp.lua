local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint'
})

lsp.set_preferences({
  sign_icons = { }
})

lsp.setup()
