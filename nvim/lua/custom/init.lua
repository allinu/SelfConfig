vim.g.coc_snippet_next = '<TAB>'
vim.g.coc_snippet_prev = '<S-TAB>'
vim.g.coc_status_error_sign = '•'
vim.g.coc_status_warning_sign = '•'
vim.g.coc_global_extensions = {'coc-snippets','coc-pairs','coc-json','coc-highlight','coc-git','coc-emoji','coc-lists','coc-stylelint','coc-yaml','coc-gitignore','coc-yank','coc-actions','coc-db','coc-sh','coc-spell-checker','coc-vimlsp','coc-explorer','coc-style-helper','coc-react-refactor','coc-css','coc-tsserver','coc-go','coc-vetur','coc-pyright','coc-html','coc-eslint','coc-pydocstring','coc-rome','coc-sumneko-lua','@yaegassy/coc-volar','coc-emmet','coc-rainbow-fart',}

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

vim.cmd('highlight cursorline cterm=underline gui=underline')

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
