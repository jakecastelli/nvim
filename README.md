**Update:**

Since NeoVim v0.5+ (which was my first time migrated everything from VimScript to Lua) there has been a lot of changes, and the Neovim community has developed dramatically, many standards have changed and many improvements have been made. It has been hard for me to keep up to date with the community, so I hopped to some neovim destros with some of my custom configs. The latest one I have used and liked its [kickstart](https://github.com/nvim-lua/kickstart.nvim/) as it is easy, simple and quite complete.

Being said, this repo has been archieved and thank you everyone who has used my neovim configuration and supported me along the way.

---

> **Requirements**:
>  - NeoVim 0.7+ (the config is best with neovim v0.7.x)
>  - Node >= v.14.0
>  - ripgrep (fuzzy search)
>  - stylua (for formatting lua file)
>  - prettier (for formatting javascript / typescript file)
>  - the sliver search

1. Clone the repo under your `~/.config/` folder
2. Open nvim and then wait plugins to be installed
3. LSP Server is managed by `lsp-installer` plugin, by default there will be no LSP server pre-installed, if you need a specific LSP server (eg: tsserver, eslint, pyright, etc), you will need to type `:LspInstallInfo` and then search and install the server.

<hr>
Feel free to ask me anything about my setup.
