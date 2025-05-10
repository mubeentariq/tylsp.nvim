-- plugin/tylsp.lua --

if not pcall(require, 'lspconfig') and not pcall(require, 'plenary') then
  return
end
require('tylsp').setup()
