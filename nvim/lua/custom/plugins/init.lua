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
  ['tpope/vim-surround'] = {},
  ['majutsushi/tagbar'] = {},
  ['sakshamgupta05/vim-todo-highlight'] = {},
}
