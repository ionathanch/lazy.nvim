vim.g.haskell_tools = {
  ---@type haskell-tools.tools.Opts
  tools = {
    ---@type haskell-tools.codeLens.Opts
    codeLens = { autoRefresh = true },
    ---@type haskell-tools.hoogle.Opts
    hoogle = { mode = "auto" },
    ---@type haskell-tools.hover.Opts
    hover = {
      enable = true,
      auto_focus = false,
    },
    ---@type haskell-tools.repl.Opts
    repl = {
      prefer = "stack",
    },
  },
}
