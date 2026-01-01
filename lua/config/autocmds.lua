-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "none", nocombine = true })
    vim.api.nvim_set_hl(0, "SnacksExplorer", { bg = "none", nocombine = true })
    vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksNotifierError", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksInput", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksInputBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksScratch", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksScratchBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksTerminal", { bg = "none", nocombine = true })
    vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { bg = "none", nocombine = true })
    vim.api.nvim_set_hl(0, "SnacksDashboard", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksDashboardBorder", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksLazygit", { bg = "none" })
    vim.api.nvim_set_hl(0, "SnacksLazygitBorder", { bg = "none" })
  end,
})
