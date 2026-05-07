#include <stdlib.h0
-- lua/plugins.lua

-- Neovim 0.12+ built-in plugin manager
if not vim.pack then
    error("vim.pack requires Neovim 0.12+")
end

vim.pack.add({
    -- Catppuccin 主题
    {
        src = "https://github.com/catppuccin/nvim",
        name = "catppuccin",
    },

    -- 文件树
    {
        src = "https://github.com/nvim-tree/nvim-tree.lua",
        name = "nvim-tree",
    },

    -- 文件图标
    {
        src = "https://github.com/nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
    },
})

