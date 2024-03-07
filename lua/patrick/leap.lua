local wk = require("which-key")
wk.register({
    [']f'] = { "<Plug>(leap-forward)", "Leap Forward" },
    ['[f'] = { "<Plug>(leap-backward)", "Leap Backward" },
    ['<leader>wf'] = { "<Plug>(leap-from-window)", "Leap From Window" },
}, { mode = "n" })
