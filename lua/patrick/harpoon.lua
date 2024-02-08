local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require("which-key")

wk.register({
    e = {
        name = "Harpoon",
        a = { mark.add_file, "Add file" },
        ["1"] = { function() ui.nav_file(1) end, "Navigate to file 1" },
        ["2"] = { function() ui.nav_file(2) end, "Navigate to file 2" },
        ["3"] = { function() ui.nav_file(3) end, "Navigate to file 3" },
        ["4"] = { function() ui.nav_file(4) end, "Navigate to file 4" },
        ["5"] = { function() ui.nav_file(5) end, "Navigate to file 5" },
        ["6"] = { function() ui.nav_file(6) end, "Navigate to file 6" },
        ["7"] = { function() ui.nav_file(7) end, "Navigate to file 7" },
        ["8"] = { function() ui.nav_file(8) end, "Navigate to file 8" },
        ["9"] = { function() ui.nav_file(9) end, "Navigate to file 9" },
        ["<CR>"] = { ui.toggle_quick_menu, "Toggle quick menu" }
    }
}, { prefix = "<leader>" })
