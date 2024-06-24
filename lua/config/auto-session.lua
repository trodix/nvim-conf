require("auto-session").setup {
  log_level = "error",
  auto_session_enable_last_session = vim.loop.cwd() == vim.loop.os_homedir(),
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_use_git_branch = false,
  cwd_change_handling = {
    post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
      require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
    end,
  },
   session_lens = {
     -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
     buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
     load_on_setup = true,
     theme_conf = { border = true },
     previewer = false,
   },
}

