local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)






    use "wbthomason/packer.nvim"    -- Packer
    use "joshdick/onedark.vim"      -- Onedark theme
    use 'tpope/vim-fugitive'        --
    use 'tpope/vim-commentary'      -- Better commenting
    use 'itchyny/lightline.vim'     -- Better status bar
    use 'neovim/nvim-lspconfig'     -- Language Server Protocol
    use 'williamboman/nvim-lsp-installer' -- |
    use 'hrsh7th/cmp-nvim-lsp'      -- Completions
    use 'hrsh7th/cmp-buffer'        -- |
    use 'hrsh7th/cmp-path'          -- |
    use 'hrsh7th/cmp-cmdline'       -- |
    use 'hrsh7th/nvim-cmp'          -- |
    use 'romgrk/barbar.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
              'nvim-tree/nvim-web-devicons', -- optional, for file icons
         },
         tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use({"L3MON4D3/LuaSnip", tag = "v<1>.*"})
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }





    if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

end)
