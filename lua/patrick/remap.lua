local wk = require("which-key")

wk.register({ ["<leader>pv"] = { vim.cmd.Ex, "File Explorer" } })

vim.keymap.set("n", "Q", "<nop>")

wk.register({ J = { ":m '>+1<CR>gv=gv", "Move lines down" } }, { mode = "v" })
wk.register({ K = { ":m '<-2<CR>gv=gv", "Move lines up" } }, { mode = "v" })

wk.register({ ["<C-d>"] = { "<C-d>zz", "Scroll down half page" } })
wk.register({ ["<C-u>"] = { "<C-u>zz", "Scroll up half page" } })
wk.register({ n = { "nzzzv", "Next match" } })
wk.register({ N = { "Nzzzv", "Previous match" } })

wk.register({
    y = { "\"+y", "Yank to clipboard" },
    Y = { "\"+Y", "Yank line to clipboard" }
}, { prefix = "<leader>" })
wk.register({
    y = { "\"+y", "Yank to clipboard" }
}, { prefix = "<leader>", mode = "v" })
wk.register({
    ["<leader>p"] = { "\"_dP", "Paste over text" }
}, { mode = "v" })

vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>q", "ZZ")

wk.register({
    s = {
        name = "Search",
        r = { [[:%s/<C-r><C-w>//g<Left><Left>]], "Find and Replace" },
        w = { [[/\v<C-r><C-w><CR>]], "Search word under cursor" }
    }
}, { prefix = "<leader>" })

wk.register({ ["<Esc>"] = { "<C-\\><C-n>", "Exit terminal mode" } }, { mode = "t" })
