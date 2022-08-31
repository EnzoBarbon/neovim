[1mdiff --git a/lua/user/colorscheme.lua b/lua/user/colorscheme.lua[m
[1mindex d0eeaf0..33abda6 100644[m
[1m--- a/lua/user/colorscheme.lua[m
[1m+++ b/lua/user/colorscheme.lua[m
[36m@@ -16,10 +16,13 @@[m [mgruvbox.setup({[m
   invert_tabline = false,[m
   invert_intend_guides = false,[m
   inverse = true, -- invert background for search, diffs, statuslines and errors[m
[31m-  contrast = "", -- can be "hard", "soft" or empty string[m
[32m+[m[32m  contrast = "soft", -- can be "hard", "soft" or empty string[m
   overrides = {},[m
 })[m
[32m+[m
 vim.cmd [[[m
[32m+[m
[32m+[m[32mautocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE[m
 try[m
   colorscheme gruvbox[m
 catch /^Vim\%((\a\+)\)\=:E185/[m
[1mdiff --git a/lua/user/lsp/handlers.lua b/lua/user/lsp/handlers.lua[m
[1mindex 9341c48..ec9736c 100644[m
[1m--- a/lua/user/lsp/handlers.lua[m
[1m+++ b/lua/user/lsp/handlers.lua[m
[36m@@ -84,7 +84,7 @@[m [mM.on_attach = function(client, bufnr)[m
 	-- vim.notify(client.name .. " starting...")[m
 	-- TODO: refactor this into a method that checks if string in list[m
 	if client.name == "tsserver" then[m
[31m-		client.resolved_capabilities.document_formatting = false[m
[32m+[m		[32mclient.resolved_capabilities.document_formatting = true[m
 	end[m
 	lsp_keymaps(bufnr)[m
 	lsp_highlight_document(client)[m
[1mdiff --git a/lua/user/lsp/null-ls.lua b/lua/user/lsp/null-ls.lua[m
[1mindex 874e19c..c7d40fd 100644[m
[1m--- a/lua/user/lsp/null-ls.lua[m
[1m+++ b/lua/user/lsp/null-ls.lua[m
[36m@@ -14,6 +14,6 @@[m [mnull_ls.setup({[m
 		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),[m
 		formatting.black.with({ extra_args = { "--fast" } }),[m
 		formatting.stylua,[m
[31m-    -- diagnostics.flake8[m
[32m+[m[32m    diagnostics.flake8[m
 	},[m
 })[m
[1mdiff --git a/lua/user/plugins.lua b/lua/user/plugins.lua[m
[1mindex d4c692b..9054ec0 100644[m
[1m--- a/lua/user/plugins.lua[m
[1m+++ b/lua/user/plugins.lua[m
[36m@@ -81,6 +81,10 @@[m [mreturn packer.startup(function(use)[m
 	use({ "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" }) -- simple to use language server installer[m
 	use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }) -- for formatters and linters[m
 [m
[32m+[m
[32m+[m[32m  --React[m
[32m+[m[32m  use({"https://github.com/styled-components/vim-styled-components.git",commit = "75e178916fc3e61385350933a23055927f5f60b7"})[m
[32m+[m
 	-- Telescope[m
 	use({ "nvim-telescope/telescope.nvim", commit = "d96eaa914aab6cfc4adccb34af421bdd496468b0" })[m
 [m
[36m@@ -90,7 +94,7 @@[m [mreturn packer.startup(function(use)[m
 		commit = "518e27589c0463af15463c9d675c65e464efc2fe",[m
 	})[m
   -- Rainbow parentheses for treesitter[m
[31m-  use("p00f/nvim-ts-rainbow")[m
[32m+[m[32m--  use("p00f/nvim-ts-rainbow")[m
 [m
 	-- Git[m
 	use({ "lewis6991/gitsigns.nvim", commit = "c18e016864c92ecf9775abea1baaa161c28082c3" })[m
