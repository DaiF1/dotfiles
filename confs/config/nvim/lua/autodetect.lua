local autocmd = vim.api.nvim_create_autocmd

autocmd('Filetype', {
  pattern = { "c", "cpp" },
  command = "ClangFormatAutoEnable",
});

autocmd('Filetype', {
  pattern = { 'xml', 'html', 'xhtml', 'typescript', 'yaml', 'lua' },
  command = "setlocal tabstop=2 shiftwidth=2",
});
