-- 文件树插件配置

local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then
    vim.notify("nvim-tree not found")
    return
end


nvim_tree.setup({
    view = {
        side = "left",
        width = 32,
    },

    renderer = {
        group_empty = true,
        highlight_git = true,
    },

    filters = {
        dotfiles = false,
    },

    git = {
        enable = true,
        ignore = false,
    },

    actions = {
        open_file = {
            quit_on_open = false,
        },
    },
})

vim.keymap.set("n", "<A-o>", "<cmd>NvimTreeToggle<CR>", {
    desc = "Toggle file tree",
})
