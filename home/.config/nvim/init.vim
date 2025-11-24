set number relativenumber
set ignorecase
set notermguicolors
set clipboard=unnamedplus

"set colorcolumn=80
"color paramount | set bg=light

augroup language_dependant_settings
	autocmd!
	autocmd Filetype c setlocal sw=2 sts=2 et fdm=syntax
	autocmd Filetype python setlocal sw=4 sts=4 et fdm=indent
	autocmd Filetype javascript\|typescript setlocal sw=2 sts=2 et fdm=syntax
augroup END

lua << EOF
-- apt install clangd
vim.lsp.enable('clangd')
vim.lsp.enable('jdtls')
-- apt install python3-lsp python3-lsp-black...
vim.lsp.enable('pylsp')
-- npm install -g typescript typescript-language-server
vim.lsp.enable('ts_ls')
EOF
