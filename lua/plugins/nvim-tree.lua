return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- require("nvim-tree").setup {}
    require("nvim-tree").setup{
      respect_buf_cwd = true,
      renderer = {
            group_empty = false,
            highlight_git = true,
            indent_width = 2,
            indent_markers = {
              enable = true,
              inline_arrows = false,
              icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
              }
            },
            icons = {
              web_devicons = {
                file = {
                  enable = true,
                  color = false,
                },
                folder = {
                  enable = false,
                  color = true,
                },
              },
              git_placement = "after",
              modified_placement = "before",
              diagnostics_placement = "signcolumn",
              bookmarks_placement = "signcolumn",
              padding = " ",
              symlink_arrow = " ➛ ",
              show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
                diagnostics = true,
                bookmarks = true,
              },
              glyphs = {
                -- default = "",
                -- symlink = "",
                -- bookmark = "󰆤",
                -- modified = "●",
                -- folder = {
                --   arrow_closed = "",
                --   arrow_open = "",
                --   default = "",
                --   open = "",
                --   empty = "",
                --   empty_open = "",
                --   symlink = "",
                --   symlink_open = "",
                -- },
                git = {
                  unstaged = "UnSt",
                  staged = "Staged",
                  unmerged = "UnMer",
                  renamed = "R",
                  untracked = "UnTr",
                  deleted = "D",
                  ignored = "Ignore",
                },
              },
            },
      },
      hijack_directories = {
            enable = true,
            auto_open = true,
      },
      view = {
        adaptive_size = false,
        width = 30,
      },
    }
  end,
}
