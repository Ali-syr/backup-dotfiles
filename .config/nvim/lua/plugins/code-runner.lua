return {
  "CRAG666/code_runner.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("code_runner").setup({
      mode = "toggleterm",
      startinsert = false,
      filetype = {
        python = "python3 -u",
        javascript = "node",
        typescript = "deno run",
        c = "gcc $file -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        cpp = "g++ $file -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        go = "go run",
      },
    })

    -- Shortcuts
    vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { desc = "Run Code" })
    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { desc = "Run Current File" })
  end,
}
