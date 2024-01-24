function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- window navigation
map("n", "<Left>", "<C-w>h")
map("n", "<Down>", "<C-w>j")
map("n", "<Up>", "<C-w>k")
map("n", "<Right>", "<C-w>l")
-- tab navigation
map("n", "<C-l>", ":BufferNext<Enter>", {silent = true})
map("n", "<C-h>", ":BufferPrevious<Enter>", {silent = true})
-- nvim-tree
map("n", "<Leader>e", ":NvimTreeToggle<Enter>", { silent = true })
-- terminal
map("n", "<C-t>", ":ToggleTerm<Enter>")
