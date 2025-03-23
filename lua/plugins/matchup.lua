return {
  'andymass/vim-matchup',
  config = function()
    -- Matchup doesn't require a 'require' statement for its configuration
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
    vim.g.matchup_matchparen_enabled = false
  end
}

