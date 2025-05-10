-- plugin/tylsp.lua --

if not pcall(require, 'lspconfig') then return end
require('tylsp').setup()
