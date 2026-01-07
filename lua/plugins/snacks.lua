return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- scroll = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { pane = 1, title = "Welcome back Benjamin" },
      },
    },
    explorer = {
      style = "minimal",
      enabled = false,
      backdrop = false,
      blend = 10,
      files = {
        hidden = true,
        ignored = true,
      },
    },
    picker = {
      style = "minimal",
      backdrop = false,
      blend = 10,
      sources = {
        explorer = { hidden = true, ignored = true },
      },
      files = {
        hidden = true,
        ignored = true,
      },
    },
    terminal = {
      enabled = true,
      backdrop = false,
      win = {
        position = "float",
        style = "minimal",
        border = "rounded",
        blend = 20,
        wo = {
          winbar = "",
          winhighlight = "Normal:Normal",
        },
      },
    },
    lazygit = {
      backdrop = false,
      enabled = true,
      configure = true,
      win = {
        style = "minimal",
        border = "rounded",
        blend = 10,
        wo = { winblend = 10 },
      },
    },
    gitbrowse = {
      enabled = true,
      notify = true,
      backdrop = false,
    },
    input = {
      enabled = true,
      backdrop = false,
      win = {
        relative = "cursor",
        row = 1,
        col = 0,
        width = 60,
        style = "minimal",
        border = "rounded",
        blend = 10,
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
    },
    styles = {
      notification = {
        backdrop = false,
        wo = { wrap = true },
        style = "minimal",
        border = "rounded",
        blend = 10,
      },
      scratch = {
        backdrop = false,
        style = "minimal",
        border = "rounded",
        blend = 10,
      },
      lazygit = {
        backdrop = false,
        style = "minimal",
        border = "rounded",
        blend = 10,
      },
      float = {
        backdrop = false,
        style = "minimal",
        border = "rounded",
        blend = 10,
      },
      picker = {
        backdrop = false,
        blend = 10,
      },
      explorer = {
        backdrop = false,
        blend = 10,
      },
    },

    bigfile = { enabled = true },
    -- WARNING: Breaks and issues tons of warnings in VSCode Neovim
    words = { enabled = true },
    -- statuscolumn = {
    --   enabled = true,
    --   folds = {
    --     git_hl = true, -- use Git Signs hl for fold icons
    --   },
    -- },
    notifier = { -- Used by noice
      top_down = false,
      style = "compact",
    },
    zen = {
      toggles = {
        dim = false,
      },
      show = {
        statusline = true,
        tabline = true,
      },
    },
  },
  keys = {
    {
      "<leader>uz",
      function()
        Snacks.zen()
      end,
      desc = "Toggle Zen Mode",
    },
    {
      "<leader>bdc",
      function()
        Snacks.bufdelete.delete()
      end,
      desc = "Delete current buffer",
    },
    {
      "<leader>bda",
      function()
        Snacks.bufdelete.all()
      end,
      desc = "Delete all buffers",
    },
    {
      "<leader>bdo",
      function()
        Snacks.bufdelete.other()
      end,
      desc = "Delete other buffers",
    },
    {
      "<leader>.",
      function()
        Snacks.scratch()
      end,
      desc = "Toggle Scratch Buffer",
    },
    -- {
    --   '<leader>S',
    --   function()
    --     Snacks.scratch.select()
    --   end,
    --   desc = 'Select Scratch Buffer',
    -- },
    {
      "]]",
      function()
        Snacks.words.jump(vim.v.count1)
      end,
      desc = "Next Reference",
    },
    {
      "[[",
      function()
        Snacks.words.jump(-vim.v.count1)
      end,
      desc = "Prev Reference",
    },
  },
}
