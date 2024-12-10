require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

vim.opt.clipboard = "unnamedplus"

-- vim.opt.clipboard:append { 'unnamed', 'unnamedplus'}

-- set clipboard+=unnamedplus

-- vim.api.nvim_set_option('clipboard', 'unnamed')
-- vim.api.nvim_set_option('clipboard', 'unnamedplus')

-- vim.api.nvim_set_option('clipboard', 'unnamedplus')


-- vim.api.nvim_set_keymap('v', 'y', '"+y', {noremap = true })
-- vim.api.nvim_set_keymap('v', 'x', '"+x', {noremap = true })
-- vim.api.nvim_set_keymap('n', 'p', '"+p', {noremap = true })
-- vim.api.nvim_set_keymap('n', 'P', '"+P', {noremap = true })

--local function copy_with_xsel()
  --vim.api.nvim_set_clipboard(vim.clip.get())
--  vim.fn.execute("!xsel -i")
--end

--local function paste_with_xsel()
--  vim.clip.set(vim.fn.execute("!xsel -o"))
--  vim.api.nvim_set_clipboard(vim.clip.get())
--end

--vim.keymap.set("n", "<C-c>", function() copy_with_xsel() end)
--vim.keymap.set("n", "<C-v>", function() paste_with_xsel() end)


dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"


