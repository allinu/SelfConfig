local M = {}

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
local keyset = vim.keymap.set

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

M.mundo = {
  n = {
    ['<leader>m'] = {":MundoToggle<CR>", "show mundo tree"}
  }
}

M.coc = {
  n = {
    [',a'] = { ":<C-u>CocList diagnostics<cr>", "show diagnostics" },
    ['<leader>e'] = {":CocCommand explorer<CR>", "file explor"},
    ['<leader>f'] = {":CocCommand explorer --position floating<CR>", "file explor floating window"},
    [',d'] = { "<Plug>(coc-definition)", "code definition" },
    [',y'] = { "<Plug>(coc-type-definition)", "code type definition" },
    [',i'] = { "<Plug>(coc-implementation)", "code implementation" },
    [',r'] = { "<Plug>(coc-references)", "code references" },
    [',re'] = { "<Plug>(coc-codeaction-refactor)", "code refactor" },
    [',k'] = { "<CMD>lua _G.show_docs()<CR>", "show documentation" },
    [',cl'] = { "<Plug>(coc-codelens-action)", "code lens" },
    [',f'] = { "<Plug>(coc-fix-current)", "quickfix current line" },
    [',ca'] = { "<Plug>(coc-codeaction)", "code action" },
    [',p'] = { "<Plug>(coc-diagnostic-prev)", { silent = true } },
    [',n'] = { "<Plug>(coc-diagnostic-next)", { silent = true } },
    [',rn'] = { "<Plug>(coc-rename)", { select = true } },
  },
}

M.telescope = {
  n = {
    ['<leader>ff'] = { "<cmd>Telescope find_files<cr>", "find files" },
    ['<leader>fg'] = { "<cmd>Telescope live_grep<cr>", "file live grep" },
    ['<leader>fb'] = { "<cmd>Telescope buffers<cr>", "find buffers" },
    ['<leader>fh'] = { "<cmd>Telescope help_tags<cr>", "find help tags" },
  }
}

M.comment = {
  n = {
    ["<leader>/"] = { ":TComment <CR>", "toggle comment" },
  },
  v = {
    ["<leader>/"] = { ":TCommentBlock <CR>", "toggle comment block" },
  },
}

M.acceleratedJK = {
  n = {
    ["j"] = { "<Plug>(accelerated_jk_gj)" },
    ["k"] = { "<Plug>(accelerated_jk_gk)" },
  },
}

M.easynotion = {
  n = {
    [",,f"] = { "<Plug>(easymotion-bd-f)", "move to {char}" },
    [",,s"] = { "<Plug>(easymotion-overwin-f2)" },
    [",,l"] = { "<Plug>(easymotion-overwin-line)" },
    [",,w"] = { "<Plug>(easymotion-overwin-w)" },
    ["/"] = { "<Plug>(easymotion-sn)" },
    ["n"] = { "<Plug>(easymotion-next)" },
    ["N"] = { "<Plug>(easymotion-prev)" },
  },
  o = {
    ["/"] = { "<Plug>(easymotion-tn)" },
  },
}

return M