local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

configs.ls_emmet = {
  default_config = {
    cmd = { 'ls_emmet', '--stdio' };
    filetypes = { 'html', 'css', 'scss','javascriptreact','javascript', 'typescriptreact' }; -- Add the languages you use, see language support
    root_dir = function(fname)
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

lspconfig.ls_emmet.setup{ capabilities = capabilities }

vim.cmd[[   
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_leader_key=','
]]


