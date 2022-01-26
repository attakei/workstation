-- Startup environment
if vim.fn.has('phtyon3') == 0 then
  python_host_prog = os.execute('which python')
  python3_host_prog = os.execute('which python3')
end

-- Configure packer with plugins
require('plugins')
