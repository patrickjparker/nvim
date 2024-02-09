require('diagflow').setup()

local wk = require("which-key")
wk.register({
    ["[d"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Previous diagnostic" },
    ["]d"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next diagnostic" },
})
wk.register({
    d = {
        name = "Diagnostics",
        o = { "<cmd>Telescope diagnostics<CR>", "Show full page diagnostics" },
        d = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Open diagnostic float" }
    }
}, { mode = "n", prefix = "<leader>" })
