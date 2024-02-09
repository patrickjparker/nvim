local wk = require('which-key')
require('gitsigns').setup({
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- Define all mappings in a structured table
        wk.register({
            -- Navigation
            [']g'] = { function()
                if vim.wo.diff then return ']g' end
                vim.schedule(function() gs.next_hunk() end)
                return '<Ignore>'
            end, "Next hunk", expr=true },
            ['[g'] = { function()
                if vim.wo.diff then return '[g' end
                vim.schedule(function() gs.prev_hunk() end)
                return '<Ignore>'
            end, "Previous hunk", expr=true },
        }, { mode = 'n', buffer = bufnr })

        -- Define normal mode mappings
        wk.register({
            -- Actions
            g = {
                name = "Git",
                ['s'] = { gs.stage_hunk, "Stage hunk" },
                ['S'] = { gs.stage_buffer, "Stage buffer" },
                ['r'] = { gs.reset_hunk, "Reset hunk" },
                ['R'] = { gs.reset_buffer, "Reset buffer" },
                ['u'] = { gs.undo_stage_hunk, "Undo stage hunk" },
                ['U'] = { gs.reset_buffer_index, "Reset buffer index" }, -- test this
                ['p'] = { gs.preview_hunk, "Preview hunk" },
                ['b'] = { function() gs.blame_line{full=true} end, "Blame line" },
                ['d<CR>'] = { gs.diffthis, "Diff this" },
                ['D'] = { function() vim.cmd("wincmd p | q") end, "Close diff view" },
                ['dd'] = { gs.toggle_deleted, "Toggle deleted" },
            }
            -- Text object, note: 'o' and 'x' modes need separate registration
        }, { prefix = '<leader>', mode = 'n', buffer = bufnr })

        -- For visual mode stage/reset hunk
        wk.register({
            ['s'] = { function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, "Stage hunk" },
            ['r'] = { function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, "Reset hunk" },
        }, { prefix = '<leader>g', mode = 'v', buffer = bufnr })

        -- Registering text object mappings
        wk.register({
            ['ih'] = { ":<C-U>Gitsigns select_hunk<CR>", "Select hunk" }
        }, { mode = 'o', buffer = bufnr })
        wk.register({
            ['ih'] = { ":<C-U>Gitsigns select_hunk<CR>", "Select hunk" }
        }, { mode = 'x', buffer = bufnr })
    end
})

