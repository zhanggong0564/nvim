return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- 基础配置（参考官方文档）
    size = 20,
    open_mapping = [[<c-\>]], -- 默认快捷键为 <C-\>
    direction = "float", -- 悬浮模式
    float_opts = {
      border = "curved", -- 边框样式：单线、双线、实线等
      width = 120, -- 宽度（百分比或像素）
      height = 30, -- 高度（百分比或像素）
      winblend = 3, -- 窗口透明度（0-100）
    },
    autochdir = true,
    close_on_text = true,
    -- 其他配置...
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)
    -- 自定义快捷键示例（可选）
    -- local map = vim.keymap.set
    -- map("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle floating terminal" })
    -- map("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- 退出终端模式
  end,
}
