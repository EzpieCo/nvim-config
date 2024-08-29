-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\cygwin64\\tmp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\cygwin64\\tmp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\cygwin64\\tmp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\cygwin64\\tmp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\cygwin64\\tmp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-tmux-navigator"] = {
    commands = { "tmuxnavigateLeft", "tmuxnavigateDown", "tmuxnavigateUp", "tmuxnavigateRight", "tmuxnavigatePrevious" },
    keys = { { "<c-h>", "<cmd><C-U>tmuxnavigateLeft<cr>" }, { "<c-j>", "<cmd><C-U>tmuxnavigateDown<cr>" }, { "<c-k>", "<cmd><C-U>tmuxnavigateUp<cr>" }, { "<c-l>", "<cmd><C-U>tmuxnavigateRight<cr>" }, { "<c-\\>", "<cmd><C-U>tmuxnavigatePrevious<cr>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\sibri\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'tmuxnavigateRight', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'tmuxnavigateRight', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('tmuxnavigateRight ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'tmuxnavigateLeft', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'tmuxnavigateLeft', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('tmuxnavigateLeft ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'tmuxnavigatePrevious', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'tmuxnavigatePrevious', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('tmuxnavigatePrevious ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'tmuxnavigateDown', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'tmuxnavigateDown', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('tmuxnavigateDown ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'tmuxnavigateUp', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'tmuxnavigateUp', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('tmuxnavigateUp ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[<c-h>noremap <silent> <cmd><C-U>tmuxnavigateLeft<cr> <cmd>lua require("packer.load")({'vim-tmux-navigator'}, { keys = "<lt>cmd><lt>C-U>tmuxnavigateLeft<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[<c-j>noremap <silent> <cmd><C-U>tmuxnavigateDown<cr> <cmd>lua require("packer.load")({'vim-tmux-navigator'}, { keys = "<lt>cmd><lt>C-U>tmuxnavigateDown<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[<c-\>noremap <silent> <cmd><C-U>tmuxnavigatePrevious<cr> <cmd>lua require("packer.load")({'vim-tmux-navigator'}, { keys = "<lt>cmd><lt>C-U>tmuxnavigatePrevious<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[<c-k>noremap <silent> <cmd><C-U>tmuxnavigateUp<cr> <cmd>lua require("packer.load")({'vim-tmux-navigator'}, { keys = "<lt>cmd><lt>C-U>tmuxnavigateUp<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[<c-l>noremap <silent> <cmd><C-U>tmuxnavigateRight<cr> <cmd>lua require("packer.load")({'vim-tmux-navigator'}, { keys = "<lt>cmd><lt>C-U>tmuxnavigateRight<lt>cr>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
