return {
  -- ~/.config/nvim/lua/plugins/flash.lua 或类似配置文件
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        search = {
          enabled = true, -- 启用对 / 和 ? 搜索的增强
          highlight = { backdrop = true }, -- 高亮所有匹配项
          jump = { history = true, register = true }, -- 记录跳转历史
          -- 模糊匹配配置
          search = {
            mode = "fuzzy", -- 可选值: "exact"（精确） / "fuzzy"（模糊） / "regex"（正则）
            incremental = true, -- 输入时实时更新匹配
          },
        },
      },
      -- 自定义标签样式
      labels = "abcdefghijklmnopqrstuvwxyz", -- 标签字符集
      label = {
        uppercase = false, -- 标签使用小写字母
        rainbow = { enabled = true, shade = 5 }, -- 彩虹色标签
      },
    },
    keys = {
      -- 覆盖默认的 / 和 ? 快捷键
      {
        "/",
        function()
          require("flash").jump({ mode = "search" })
        end,
        mode = { "n", "x", "o" },
        desc = "Flash Search",
      },
      {
        "?",
        function()
          require("flash").jump({ mode = "search", search = { forward = false } })
        end,
        mode = { "n", "x", "o" },
        desc = "Flash Reverse Search",
      },
    },
  },
}
