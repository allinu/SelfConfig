vim.g.neovide_cursor_vfx_mode = "railgun"
vim.opt.guifont = "FiraCode Nerd Font:h14"

vim.g.coc_snippet_next = '<TAB>'
vim.g.coc_snippet_prev = '<S-TAB>'
vim.g.coc_status_error_sign = '•'
vim.g.coc_status_warning_sign = '•'
vim.g.coc_global_extensions = {'coc-snippets','coc-pairs','coc-json','coc-highlight','coc-git','coc-emoji','coc-lists','coc-stylelint','coc-yaml','coc-gitignore','coc-yank','coc-actions','coc-db','coc-sh','coc-spell-checker','coc-vimlsp','coc-explorer','coc-style-helper','coc-react-refactor','coc-css','coc-tsserver','coc-go','coc-vetur','coc-pyright','coc-html','coc-eslint','coc-pydocstring','coc-rome','coc-sumneko-lua','@yaegassy/coc-volar','coc-emmet','coc-rainbow-fart',}

-- Highlight the symbol and its references when holding the cursor.
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Update signature help on jump placeholder.
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Add `:Format` command to format current buffer.
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer.
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer.
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")



vim.g.rainbow_active = 1
vim.g.smoothie_enabled = 1

vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"

vim.g.TWinSize = 20
vim.g.displayRecentNum = 10
vim.g.totalRecentNum = 100

vim.g.todo_highlight_config = {
    TODO = {
        gui_fg_color = 'black',
        gui_bg_color = '#FF8C00',
        cterm_fg_color = 'black',
        cterm_bg_color = '#FF8C00'
    },
    NOTE = {
        gui_fg_color = 'white',
        gui_bg_color = '#ff046f',
        cterm_fg_color = 'white',
        cterm_bg_color = '#ff046f'
    },
    INFO = {
        gui_fg_color = 'white',
        gui_bg_color = '#007e74',
        cterm_fg_color = 'white',
        cterm_bg_color = '#007e74'
    },
    INPUT = {
        gui_fg_color = 'black',
        gui_bg_color = '#b4d9fb',
        cterm_fg_color = 'black',
        cterm_bg_color = '#b4d9fb'
    },
    OUTPUT = {
        gui_fg_color = 'black',
        gui_bg_color = '#32ea8d',
        cterm_fg_color = 'black',
        cterm_bg_color = '#32ea8d'
    },
    FIXME = {
        gui_fg_color = 'black',
        gui_bg_color = '#ffff22',
        cterm_fg_color = 'black',
        cterm_bg_color = '#ffff22'
    },
    BUG = {
        gui_fg_color = 'black',
        gui_bg_color = '#ff0011',
        cterm_fg_color = 'black',
        cterm_bg_color = '#ff0011'
    },
    IDEA = {
        gui_fg_color = 'black',
        gui_bg_color = '#21de5b',
        cterm_fg_color = 'black',
        cterm_bg_color = '#21de5b'
    },
    OTHER = {
        gui_fg_color = 'black',
        gui_bg_color = '#eeaaaa',
        cterm_fg_color = 'black',
        cterm_bg_color = '#eeaaaa'
    }
}
