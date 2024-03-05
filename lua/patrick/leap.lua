local wk = require("which-key")
wk.register({
    l = {
        name = "Leap",
        l = { "<Plug>(leap-forward)", "Leap Forward" },
        h = { "<Plug>(leap-backward)", "Leap Backward" },
        w = { "<Plug>(leap-from-window)", "Leap From Window" },
    }
}, { mode = "n", prefix = "<leader>"})
