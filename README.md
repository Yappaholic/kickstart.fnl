# Kickstart.fnl

Kickstart.fnl is an ASAP (as small as possible) configuration in [Fennel language](https://fennel-lang.org/)
to get sensible out of the box experience with Neovim.

## Prerequisites

- Neovim >=0.12.0
- C/C++ compiler (gcc or clang)
- git
- ripgrep
- tree-sitter-cli
- Nerd Font
- Fennel compiler
- Some patience and knowledge of the terminal :3

## Installing Neovim

### Gentoo

Unmask `9999` version in `/etc/portage/package.accept-keywords/neovim`:

```sh
app-editors/neovim **
```

Then you can emerge it.

### NixOS

Use [neovim-nightly-overlay](https://github.com/nix-community/neovim-nightly-overlay) 
with Home-manager or NixOS flake configuration.

### Other distributions

You will probably need to fetch Neovim github repository and compile from source.
Follow [Neovim manual](https://github.com/neovim/neovim#install-from-source) to learn more.

## Installing Fennel compiler

Unless `fennel` is packaged for your distribution, follow [official guide](https://fennel-lang.org/setup#downloading-fennel).

## Installation

Check if `~/.config/nvim` does exist and is empty. If you have any existing configuration,
I advise you to do a backup. For example:

```bash
mv ~/.config/nvim ~/.config/nvim-old
```

After checking `nvim` folder and doing a backup of your configuration,
you can clone this repository:

```bash
git clone https://github.com/Yappaholic/kickstart.fnl ~/.config/nvim
```

Then, you can start with reading `init.lua` and `init.fnl` files to get more
information.

## Useful resources

- [Fennel tutorial](https://fennel-lang.org/tutorial)
- [Fennel reference](https://fennel-lang.org/reference)
- [tangerine.nvim repository](https://github.com/udayvir-singh/tangerine.nvim)
- [Neovim documentation](https://neovim.io/doc/user/)
- help pages (use `:help thing` inside Neovim)
