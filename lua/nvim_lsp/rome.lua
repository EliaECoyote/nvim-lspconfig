local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

configs.rome = {
  default_config = {
    cmd = {'rome', 'lsp'},
    filetypes = {
      'javascript',
      'javascriptreact',
      'json',
      'typescript',
      'typescript.tsx',
      'typescriptreact'
    },
    root_dir = function(fname)
        return util.find_package_json_ancestor(fname) or
          util.find_node_modules_ancestor(fname) or
          util.find_git_ancestor(fname) or
          util.path.dirname(fname)
    end
  },
  docs = {
      description = [[
https://romefrontend.dev

Language server for the Rome Frontend Toolchain.

```sh
npm install [-g] rome
```
]],
      default_config = {
          root_dir = [[root_pattern('package.json', 'node_modules', '.git') or dirname]]
      }
  }
}

