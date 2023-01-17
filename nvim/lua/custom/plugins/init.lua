local M = {}

-- ######################################
-- INDENT-BLANKLINE
-- ######################################

M.indent_blankline = {
  config = function()
    vim.opt.termguicolors = true
    vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

    vim.opt.list = true
    -- vim.opt.listchars:append "space:⋅"
    -- vim.opt.listchars:append "eol:↴"

    require("indent_blankline").setup {
      space_char_blankline = " ",
      char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
      },
    }
  end,
}



return {
  ["lewis6991/gitsigns.nvim"] = false,
  ["williamboman/mason.nvim"] = false,
  ["neovim/nvim-lspconfig"] = false,
  ["rafamadriz/friendly-snippets"] = false,
  ["hrsh7th/nvim-cmp"] = false,
  ["L3MON4D3/LuaSnip"] = false,
  ["saadparwaiz1/cmp_luasnip"] = false,
  ["hrsh7th/cmp-nvim-lua"] = false,
  ["hrsh7th/cmp-nvim-lsp"] = false,
  ["hrsh7th/cmp-buffer"] = false,
  ["hrsh7th/cmp-path"] = false,
  ["kyazdani42/nvim-tree.lua"] = false,
  ["jose-elias-alvarez/null-ls.nvim"] = false,
  ["goolord/alpha-nvim"] = false,
  ["folke/which-key.nvim"] = false,
  ["windwp/nvim-autopairs"] = false,

  -- ['sicong-li/T.vim'] = {},
  ['voldikss/vim-translator'] = {},
  ['nvim-lua/plenary.nvim'] = {},
  ['nvim-telescope/telescope.nvim'] = {},
  ['easymotion/vim-easymotion'] = {},
  ['leafOfTree/vim-vue-plugin'] = {
    config = function ()
      vim.g.vim_vue_plugin_config = {
        syntax = {
          template = {'html'},
          script = {'javascript', 'typescript'},
          style = {'css', 'scss', 'sass', 'less'},
          i18n = {'json', 'yaml'},
          route = {'json'},
        },
        full_syntax = {'json'},
        initial_indent = {'i18n', 'i18n.json', 'yaml'},
        attribute = 1,
        keyword = 1,
        foldexpr = 0,
        debug = 0,
      }
    end
  },
  ['tomtom/tcomment_vim'] = {},
  ['neoclide/coc.nvim'] = {
    branch = 'master',
    run = 'yarn install --frozen-lockfile',
  },
  ['rhysd/accelerated-jk'] = {},
  ['rcarriga/nvim-notify'] = {},
  ['luochen1990/rainbow'] = {},
  ['psliwka/vim-smoothie'] = {},
  ['machakann/vim-sandwich'] = {},
  ['sakshamgupta05/vim-todo-highlight'] = {},
  ['matsuuu/pinkmare'] = {},
  ["lukas-reineke/indent-blankline.nvim"] = M.indent_blankline,
}
