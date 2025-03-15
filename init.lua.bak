-- Bootstrap vim-plug (if not already installed)
local plug_path = vim.fn.stdpath('data') .. '/plugged'
vim.fn.mkdir(plug_path, 'p')

-- Source existing vim-plug setup from init.vim
vim.cmd [[
  call plug#begin('~/.vim/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'ziglang/zig.vim'
  Plug 'keith/xcconfig.vim'
  Plug 'udalov/kotlin-vim'
  Plug 'github/copilot.vim'
  Plug 'jxnblk/vim-mdx-js'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/vim-easy-align'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'mattreduce/vim-mix'
  Plug 'mhinz/vim-mix-format'
  Plug 'BeneCollyridam/futhark-vim'
  Plug 'pearofducks/ansible-vim'
  Plug 'mfukar/robotframework-vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'uarun/vim-protobuf'
  Plug 'stefandtw/quickfix-reflector.vim'
  Plug 'chr4/nginx.vim'
  Plug 'hashivim/vim-terraform'
  Plug 'jparise/vim-graphql'
  Plug 'thoughtbot/vim-rspec'
  Plug 'flazz/vim-colorschemes'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-scripts/groovyindent-unix'
  Plug 'digitaltoad/vim-jade'
  Plug 'briancollins/vim-jst'
  Plug 'vim-scripts/L9'
  Plug 'rust-lang/rust.vim'
  Plug 'vim-scripts/LargeFile'
  Plug 'scrooloose/nerdtree'
  Plug 'majutsushi/tagbar'
  Plug 'vim-scripts/tComment'
  Plug 'tomtom/tlib_vim'
  Plug 'tpope/vim-bundler'
  Plug 'kchmck/vim-coffee-script'
  Plug 'tpope/vim-commentary'
  Plug 'Lokaltog/vim-distinguished'
  Plug 'elixir-editors/vim-elixir'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-projectionist'
  Plug 'jnwhiteh/vim-golang'
  Plug 'tpope/vim-haml'
  Plug 'pangloss/vim-javascript'
  Plug 'groenewege/vim-less'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'ngmy/vim-rubocop'
  Plug 'tpope/vim-rvm'
  Plug 'tpope/vim-surround'
  Plug 'kana/vim-textobj-user'
  Plug 'tpope/vim-unimpaired'
  Plug 'posva/vim-vue'
  Plug 'wakatime/vim-wakatime'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'dense-analysis/ale'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'othree/html5.vim'
  Plug 'elmcast/elm-vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-airline/vim-airline'
  Plug 'ellisonleao/gruvbox.nvim'
  Plug 'navarasu/onedark.nvim'
  call plug#end()
]]

-- General Settings
vim.opt.termguicolors = true              -- Use GUI colors in terminal
vim.cmd.colorscheme 'gruvbox'             -- Set colorscheme
vim.opt.foldmethod = 'syntax'             -- Folding based on syntax
vim.opt.foldlevelstart = 99               -- Start with all folds open
vim.opt.hlsearch = false                  -- Disable highlight on search
vim.opt.tabpagemax = 50                   -- Max number of tab pages
vim.opt.sidescroll = 1                    -- Scroll horizontally by 1
vim.opt.sidescrolloff = 10                -- Min columns to keep visible
vim.opt.scrolloff = 10                    -- Min lines to keep visible
vim.opt.backspace = { 'indent', 'eol', 'start' } -- Backspace behavior
vim.opt.compatible = false                -- Disable Vi compatibility
vim.opt.number = true                     -- Show line numbers
vim.opt.ruler = true                      -- Show cursor position
vim.opt.wildmode = { 'list:longest', 'full' } -- Command-line completion
vim.opt.showmode = true                   -- Show current mode
vim.opt.history = 50                      -- Command history length
vim.opt.modeline = false                  -- Disable modelines
vim.opt.wrap = false                      -- Disable line wrapping
vim.opt.textwidth = 0                     -- No auto-wrap
vim.opt.list = false                      -- Don’t show invisible chars
vim.opt.shiftwidth = 2                    -- Indentation width
vim.opt.shiftround = true                 -- Round indent to shiftwidth
vim.opt.expandtab = true                  -- Use spaces instead of tabs
vim.opt.tabstop = 2                       -- Tab width
vim.opt.exrc = true                       -- Enable project-local config
vim.opt.secure = true                     -- Secure local config
vim.opt.laststatus = 2                    -- Always show status line
vim.opt.statusline = '%{winnr()} %t[%{strlen(&fenc)?&fenc:"none"},%{&ff}]%h%m%r%y%=%c,%l/%L %P' -- Custom statusline
vim.opt.wildignore:append {               -- Ignore patterns
  '/swagger-ui/*', '/vendor/*', '/*tfstate*', '/_build', '*/tmp/*', '/log',
  '*.so', '*.swp', '*.zip', '*/node_modules/*', '/deps', '_site/*',
  '*/lib/public/js/vendor/*', '/components/*', '*/builtAssets/*', '*/coverage/*'
}
vim.opt.viminfo:append { '%' }            -- Remember buffer info on close

-- Plugin Configurations
vim.g.NERDTreeMinimalMenu = 1             -- NERDTree workaround
vim.g.ale_elixir_credo_strict = 1         -- ALE strict mode for Elixir
vim.g.ale_fix_on_save = 1                 -- Fix files on save
vim.g.ale_fixers = {                      -- ALE fixers
  terraform = { 'terraform', 'trim_whitespace', 'remove_trailing_lines' },
  yaml = { 'trim_whitespace', 'remove_trailing_lines' },
  html = { 'prettier' },
  svg = { 'prettier' },
  markdown = { 'prettier' },
  ['markdown.mdx'] = { 'prettier' },
  mdx = { 'prettier' },
  swift = { 'trim_whitespace', 'remove_trailing_lines' },
  toml = { 'trim_whitespace', 'remove_trailing_lines' },
  kotlin = { 'trim_whitespace', 'remove_trailing_lines' },
  rust = { 'rustfmt', 'trim_whitespace', 'remove_trailing_lines' },
  javascript = { 'prettier' },
  css = { 'prettier' },
  jsx = { 'prettier' },
  sh = { 'shfmt' },
  typescript = { 'prettier' },
  jsonc = { 'prettier' },
  json = { 'prettier' },
  javascriptreact = { 'prettier' },
  typescriptreact = { 'prettier' },
  elixir = { 'trim_whitespace', 'remove_trailing_lines' },
}
vim.g.ale_sh_shfmt_options = '-i 4'       -- shfmt indent
vim.g.ale_swift_swiftformat_options = '--indent 2' -- Swift indent
vim.g.ale_linters = {                     -- ALE linters
  kotlin = { 'ktlint' },
  swift = { 'swiftlint' },
  rust = { 'analyzer' },
  sh = { 'shellcheck' },
}
vim.g.ale_rust_rustfmt_options = '--edition 2021' -- Rust edition
vim.g.copilot_filetypes = { ['*'] = true } -- Enable Copilot for all filetypes
vim.g.ctrlp_custom_ignore = [[\v[\/](\.(git|hg|svn)|log|*tfstate*|_site|solr|_build|swagger-ui|deps|doc|public\/js\/vendor|\.DS_Store|_site|\/components|builtAssets|node_modules)$]]
vim.g.ctrlp_show_hidden = 1               -- Show hidden files in CtrlP
vim.g.NERDTreeIgnore = { '.*VBoxSVC.*\\.log$', '^deps$', '\\.tfstate$', '\\.backup$', '^node_modules$', '^_build$' }

-- Key Mappings
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', { desc = 'EasyAlign in visual mode' })
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', { desc = 'EasyAlign for motion/text object' })
vim.keymap.set('n', '<C-j>', ':cn<CR>', { desc = 'Next quickfix item' })
vim.keymap.set('n', '<C-N>', ':NERDTreeToggle<CR>', { desc = 'Toggle NERDTree' })
vim.keymap.set('v', '<C-X>', '<Esc>`.``gvP``P', { desc = 'Swap visual selection with deleted' })

-- Speed up CtrlP with ripgrep
if vim.fn.executable('rg') == 1 then
  vim.g.ctrlp_user_command = 'rg %s -l --files -g ""'
  vim.g.ctrlp_use_caching = 0
end

-- Shell Configuration
if vim.fn.has('macunix') == 1 then
  vim.opt.shell = '/bin/zsh'
elseif vim.fn.has('unix') == 1 then
  vim.opt.shell = '/usr/bin/zsh'
end

-- Clipboard Configuration
if vim.fn.has('unix') == 1 then
  local uname = vim.fn.system('uname -s'):gsub('\n', '')
  if uname == 'Darwin' then
    vim.opt.clipboard = 'unnamed'
  elseif uname == 'Linux' then
    vim.opt.clipboard:append { 'unnamedplus' }
  end
end

-- Autocommands
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = 'ControlP',
  callback = function() vim.b.ale_enabled = 0 end,
  desc = 'Disable ALE for CtrlP',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'java', 'kotlin', 'sh' },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
  desc = 'Set 4-space indent for Java, Kotlin, and Shell',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'swift',
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
  desc = 'Set 2-space indent for Swift',
})

vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  callback = function()
    if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line('$') then
      vim.cmd 'normal! g`"'
    end
  end,
  desc = 'Return to last edit position',
})

vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufWinEnter' }, {
  pattern = '*',
  callback = function() vim.fn.matchadd('OverLength', [[\%81v.\+]]) end,
  desc = 'Highlight overlength lines (81+)',
})

vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufWinEnter' }, {
  pattern = { '*.ex', '*.exs', '*.eex', '*.leex', '*.heex' },
  callback = function() vim.fn.matchadd('OverLength', [[\%99v.\+]]) end,
  desc = 'Highlight overlength lines (99+) for Elixir',
})

vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufWinEnter' }, {
  pattern = '*.py',
  callback = function() vim.fn.matchadd('OverLength', [[\%89v.\+]]) end,
  desc = 'Highlight overlength lines (89+) for Python',
})

vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufWinEnter' }, {
  pattern = { '*.rb', '*.erb' },
  callback = function() vim.fn.matchadd('OverLength', [[\%119v.\+]]) end,
  desc = 'Highlight overlength lines (119+) for Ruby',
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.ex', '*.exs' },
  callback = function() vim.opt.filetype = 'elixir' end,
  desc = 'Set Elixir filetype',
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.eex', '*.heex', '*.leex', '*.sface', '*.lexs' },
  callback = function() vim.opt.filetype = 'eelixir' end,
  desc = 'Set Eelixir filetype',
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = 'mix.lock',
  callback = function() vim.opt.filetype = 'elixir' end,
  desc = 'Set Elixir filetype for mix.lock',
})

-- Highlight Settings
vim.api.nvim_set_hl(0, 'Comment', { italic = true }) -- Italic comments

if vim.fn.system('defaults read -g AppleInterfaceStyle 2>/dev/null') == 'Dark\n' or vim.fn.has('macunix') == 0 then
  vim.api.nvim_set_hl(0, 'OverLength', { ctermbg = 188, bg = '#414141' })
  vim.opt.background = 'dark'
else
  vim.api.nvim_set_hl(0, 'OverLength', { ctermbg = 188, bg = '#e1e1e1' })
  vim.opt.background = 'light'
end
