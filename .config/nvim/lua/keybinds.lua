function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end



-- window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
-- tab navigation
map("n", "<Right>", ":BufferNext<Enter>", {silent = true})
map("n", "<Left>", ":BufferPrevious<Enter>", {silent = true})
-- nvim-tree
map("n", "<Leader>e", ":NvimTreeToggle<Enter>", { silent = true })
-- terminal
map("n", "<C-t>", ":ToggleTerm<Enter>")
