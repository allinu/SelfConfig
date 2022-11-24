local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

  b.completion.luasnip,

  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.pylint.with({
    diagnostics_postprocess = function(diagnostic)
      diagnostic.code = diagnostic.message_id
    end,
  }),
  b.diagnostics.eslint_d,
  b.diagnostics.commitlint,
  b.diagnostics.stylelint,

  b.code_actions.refactoring,
  b.code_actions.xo,
  b.code_actions.eslint,
  b.code_actions.eslint_d,
  b.code_actions.refactoring,

  b.formatting.rome,
  b.formatting.eslint,
  b.formatting.eslint_d,
  b.formatting.markdownlint,
  b.formatting.mdformat,
  b.formatting.pg_format,
  b.formatting.prettier,
  b.formatting.prettierd,
  b.formatting.stylua,
  b.formatting.shfmt,
  b.formatting.isort,
  b.formatting.black,

}

null_ls.setup {
   debug = true,
   sources = sources,
}
