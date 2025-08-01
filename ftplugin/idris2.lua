-- https://github.com/idris-community/idris2-nvim#api

local code_action = require("idris2.code_action")
local hover = require("idris2.hover")
local metavars = require("idris2.metavars")
local browse = require("idris2.browse")
local repl = require("idris2.repl")

require("which-key").add({
  {
    mode = "n",
    buffer = vim.api.nvim_get_current_buf(),
    { "<localleader>cc", code_action.case_split, desc = "Case split" },
    { "<localleader>cm", code_action.make_case, desc = "Make case block" },
    { "<localleader>w", code_action.make_with, desc = "Make with block" },
    { "<localleader>l", code_action.make_lemma, desc = "Make lemma" },
    { "<localleader>a", code_action.add_clause, desc = "Add clause" },
    { "<localleader>o", code_action.expr_search, desc = "Fill metavar (multiple results)" },
    { "<localleader>d", code_action.generate_def, desc = "Generate definition for declaration" },
    { "<localleader>r", code_action.refine_hole, desc = "Fill metavar with hint" },

    { "<localleader>so", hover.open_split, desc = "Open split" },
    { "<localleader>sc", hover.close_split, desc = "Close split" },

    { "<localleader>mm", metavars.request_all, desc = "All metavars" },
    { "<localleader>mn", metavars.goto_next, desc = "Next metavar" },
    { "<localleader>mp", metavars.goto_prev, desc = "Previous metavar" },

    { "<localleader>b", browse.browse, desc = "Browse names in namespace" },
    { "<localleader>x", repl.evaluate, desc = "Evaluate in REPL" },
  },
})
