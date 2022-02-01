-- Startup environment
if vim.fn.has('phtyon3') == 0 then
  python_host_prog = os.execute('which python')
  python3_host_prog = os.execute('which python3')
end

vim.wo.number = true

-- Configure packer with plugins
require('plugins')

require('completion')

vim.cmd([[
function! s:init_fern() abort
  set nonumber
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
]])
