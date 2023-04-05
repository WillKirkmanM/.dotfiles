return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Colorscheme
  { import = "astrocommunity.colorscheme.kanagawa" },

  -- Packs
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.cmake" },

  -- Debugging
  { import = "astrocommunity.debugging.nvim-bqf" },

  -- Code Runner
  { import = "astrocommunity.code-runner.overseer-nvim" },

  -- Markdown and Latex
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },

  -- Editing Support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  -- { import = "astrocommunity.editing-support.nvim-ts-rainbow" },
}
