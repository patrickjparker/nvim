local wk = require('which-key')
wk.register({
    name = "Copilot",
    ["<C-l>"] = { "<Plug>(copilot-accept-word)", "Copilot Accept Word" },
    ["<C-]>"] = "Copilot Dismiss",
    ["<C-/>"] = "Copilot Display"
}, { mode = "i" })
