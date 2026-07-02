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
        java = "mkdir -p bin && javac -d bin $file && java -cp bin $fileNameWithoutExt",
        go = "go build -o bin/$fileNameWithoutExt $file && ./bin/$fileNameWithoutExt",
        rust = "cargo run"
      },
    })

    -- Shortcuts
    vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { desc = "Run Code" })             -- Space r
    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { desc = "Run Current File" })    -- Space r f
  end,
}
