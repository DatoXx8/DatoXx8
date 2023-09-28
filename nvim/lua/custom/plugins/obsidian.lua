return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = { "BufReadPre /home/gamer/Theory of Everything/**.md" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    dir = "/home/gamer/school",
    dir = "/home/gamer/chess",
  },
}
