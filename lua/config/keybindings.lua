
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- normal模式下上下“翻页”
map("n", "<C-u>", "9k", opts)
map("n", "<C-d>", "9j", opts)

-- visual模式下连续缩进代码
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- 分屏相关
map("n", "sv", ":vsp<CR>", opts)  -- 水平分屏
map("n", "sh", ":sp<CR>", opts)   -- 垂直分屏
map("n", "sc", "<C-w>c", opts)    -- 关闭当前分屏
map("n", "so", "<C-w>o", opts)    -- 关闭其他分屏
-- 分屏比例控制
map("n", "s>", ":vertical resize +20<CR>", opts)
map("n", "s<", ":vertical resize -20<CR>", opts)
map("n", "s=", "<C-w>=", opts)
map("n", "sj", ":resize +10<CR>", opts)
map("n", "sk", ":resize -10<CR>", opts)
-- 分屏间跳转
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>o", ":NvimTreeFocus<CR>", opts)
map("n", "<leader>w", ":NvimTreeFindFile<CR>", opts)
map("n", "<leader>c", ":NvimTreeCollapse<CR>", opts)

-- buffer相关

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

pluginKeys = {}

pluginKeys.cmp = function(cmp)
	return {
    ['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		-- 出现补全
		['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
		['<A-,>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 确认
		-- ['<CR>'] = cmp.mapping.confirm({
		['<Tab>'] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace
		}),

		['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4),{ 'i', 'c' }),
		['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
	}
end

return pluginKeys
