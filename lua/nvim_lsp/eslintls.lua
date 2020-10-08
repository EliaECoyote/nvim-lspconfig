local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

configs.eslint = {
  default_config = {
    cmd = {"npx", "--no-install", "eslint","lsp"};
    filetypes = {"javascript", "javascriptreact", "javascript.jsx"};
    root_dir = util.root_pattern(".eslintrc.js");
  };
  docs = {
    package_json = "https://raw.githubusercontent.com/microsoft/vscode-eslint/master/package.json";
    description = [[
https://eslint.org/
https://github.com/eslint/eslint

See below for how to setup Eslint itself.
https://eslint.org/docs/user-guide/configuring

See below for lsp command options.

```sh
npx eslint lsp --help
```
    ]];
    default_config = {
      root_dir = [[root_pattern(".eslintrc.js")]];
    };
  };
};
