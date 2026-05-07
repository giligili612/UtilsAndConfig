local colorscheme = "catppuccin"

local catppuccin_ok, catppuccin = pcall(require, "catppuccin")
if not catppuccin_ok then
    vim.notify("catppuccin not found")
    return
end

catppuccin.setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
})

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
    vim.notify("colorscheme " .. colorscheme .. " not found")
    return
end
