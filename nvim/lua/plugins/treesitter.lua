return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup()

        vim.treesitter.language.register("bash", "sh")

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "lua", "python", "javascript", "typescript", "bash", "c", "cpp" },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
