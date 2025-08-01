vim.g.cornelis_rewrite_mode = "Simplified" -- one of AsIs, Instantiated, HeadNormal, Simplified, Normalised

require("which-key").add({
  {
    mode = "n",
    buffer = vim.api.nvim_get_current_buf(),
    -- global commands
    { "<localleader>l", ":CornelisLoad<CR>", desc = "Load and type check" },
    { "<localleader>?", ":CornelisGoals<CR>", desc = "Show all goals" },
    { "<localleader>s", ":CornelisSolve<CR>", desc = "Solve constraints" },
    { "<localleader>b", ":CornelisPrevGoal<CR>", desc = "Move to previous goal (backwards)" },
    { "<localleader>f", ":CornelisNextGoal<CR>", desc = "Move to next goal (forwards)" },
    { "<localleader>q", ":CornelisQuestionToMeta<CR>", desc = "Expand ?-holes to {! !}" },
    { "<localleader>xa", ":CornelisAbort", desc = "Abort" },
    { "<localleader>xr", ":CornelisRestart", desc = "Restart" },
    -- goal commands
    { "<localleader>r", ":CornelisRefine<CR>", desc = "Refine goal" },
    { "<localleader>m", ":CornelisElaborate<CR>", desc = "Elaborate and give (fill with normalized contents)" },
    { "<localleader>a", ":CornelisAuto<CR>", desc = "Automatic proof search" },
    { "<localleader>c", ":CornelisMakeCase<CR>", desc = "Case split" },
    { "<localleader>h", ":CornelisHelperFunc<CR>", desc = "Copy inferred type to clipboard" },
    { "<localleader>g", ":CornelisGive<CR>", desc = "Give (fill with contents)" },
    { "<localleader>d", ":CornelisTypeInfer<CR>", desc = "Infer (deduce) type" },
    { "<localleader>,", ":CornelisTypeContext<CR>", desc = "Show goal type and context" },
    { "<localleader>.", ":CornelisTypeContextInfer<CR>", desc = "Show goal type, context, and checked contents" },
    { "<localleader>w", ":CornelisWhyInScope<CR>", desc = "Why in scope" },
    { "<localleader>n", ":CornelisNormalize<CR>", desc = "Compute normal form of contents" },
  },
})
