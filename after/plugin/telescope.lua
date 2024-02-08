local builtin = require('telescope.builtin')
local wk = require('which-key')
wk.register({
    p = {
        name = "Files",
        f = { builtin.find_files, "Find files" },
        s = { function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end, "Search all files" }
    }
}, { prefix = "<leader>" })
wk.register({ ["<C-p>"] = { builtin.git_files, "Find git files" } })
