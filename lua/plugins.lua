-- 自动安装 Packer.nvim
-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  paccker_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1", -- "https://github.com/wbthomason/packer.nvim",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
  function(use)
    -- Packer 可以升级自己
    use("wbthomason/packer.nvim")
    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
    })
    -- bufferline
    use({
      "akinsho/bufferline.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })
    -- lualine
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
    })
    use("arkav/lualine-lsp-progress")
    -- telescope
    use({
      "nvim-telescope/telescope.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })
    -- telescope extensions
    use("LinArcX/telescope-env.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")
    -- dashboard-nvim
    -- use("glepnir/dashboard-nvim")
    use {
      "goolord/alpha-nvim",
     }
     use('folke/which-key.nvim')
    -- project
    use("ahmedkhalf/project.nvim")
    -- treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })
    use("p00f/nvim-ts-rainbow")
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    --------------------- LSP --------------------
    -- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
    use({ "williamboman/nvim-lsp-installer" })
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- UI 增强
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
   

    -- use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- TypeScript 增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    -- Lua 增强
    use("folke/lua-dev.nvim")
    -- JSON 增强
    use("b0o/schemastore.nvim")
    -- Rust 增强
    use("simrat39/rust-tools.nvim")
    --------------------- colorschemes --------------------
    -- tokyonight
    -- use("folke/tokyonight.nvim")
    -- OceanicNext
    -- use("mhartington/oceanic-next")
    -- gruvbox
    -- use({
    --   "ellisonleao/gruvbox.nvim",
    --   requires = { "rktjmp/lush.nvim" },
    -- })
    -- zephyr
    -- use("glepnir/zephyr-nvim")
    -- nord
    -- use("shaunsingh/nord.nvim")
    -- onedark
    use("ful1e5/onedark.nvim")
    -- nightfox
    -- use("EdenEast/nightfox.nvim")

    -------------------------------------------------------
    use({ "akinsho/toggleterm.nvim" })
    -- surround
    use("ur4ltz/surround.nvim")
    -- Comment
    use("numToStr/Comment.nvim")
    -- nvim-autopairs
    use("windwp/nvim-autopairs")
    -- git
    use({ "lewis6991/gitsigns.nvim" })
    -- vimspector
    use({'puremourning/vimspector'})
    ----------------------------------------------
    -- use("mfussenegger/nvim-dap")
    -- use("theHamsta/nvim-dap-virtual-text")
    -- use("rcarriga/nvim-dap-ui")
    -- use("Pocco81/DAPInstall.nvim")
    -- use("jbyuki/one-small-step-for-vimkind")

    use("j-hui/fidget.nvim")



  -- 方法聚焦
 
   use({
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-gps").setup()
            --  require('goto-preview').setup {}
        end
    })
      -- //go to Prevview
  use({
        "rmagatti/goto-preview",
        config = function()
            require("goto-preview").setup {}
        end
   })
    -- go 语法工具
    use( "fatih/vim-go")
   -- 代码折叠 --- h l 快捷键
  --  use( {
  --       "anuvyklack/pretty-fold.nvim",
  --       config = function()
  --           require("pretty-fold").setup {}
  --           require("pretty-fold.preview").setup()
  --       end
  --   })
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    })
        -- //拼写建议
    use("f3fora/cmp-spell")
     -- 代码格式化
     use(
        "sbdchd/neoformat"
      )
      use( {
        "AndrewRadev/switch.vim",
        event = {"BufRead", "BufNewFile"},
    })
   
    use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",

}

    use( "mg979/vim-visual-multi")
    use( {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        run = "cd app && yarn install"
    })
       -- code runner
    use({"michaelb/sniprun", run = "bash ./install.sh"})
        use('nvim-lua/plenary.nvim')
    use(
        'windwp/nvim-spectre'
  )
     -- 截图
    use({"kristijanhusak/vim-carbon-now-sh", cmd = "CarbonNowSh"})
    --   显示相同的单词
use({
        "RRethy/vim-illuminate",
        requires = "nvim-treesitter/nvim-treesitter",
    
    })
    -- 相同的单词
    use("unblevable/quick-scope")
    -- //大纲预览
use("liuchengxu/vista.vim")
    --   --- 方法高亮
    use({
        "m-demare/hlargs.nvim",
        requires = "nvim-treesitter/nvim-treesitter",
        
    })

     use {
        "phaazon/hop.nvim",
        branch = "v1", -- optional but strongly recommended
        config = function()
             require'hop'.setup {  }
        end
    }

    -- 方法吸顶
  --  use( {
  --       "romgrk/nvim-treesitter-context",
  --       requires = "nvim-treesitter/nvim-treesitter",
  --       config = function()
  --           require("plugin-config.treesitter-context")
  --           --  require('goto-preview').setup {}
  --       end
  --   })


    --  -- 精美弹窗
    -- {
    --     "rcarriga/nvim-notify",
    --     config = function()
    --         require("custom.plugins.notify")
    --     end
    -- },
    -- -- 自动恢复光标位置
    -- {
    --     "ethanholz/nvim-lastplace",
    --     config = function()
    --         --   require("conf.nvim-lastplace")
    --         require("custom.plugins.lastplace")
    --     end
    -- },
   
    if paccker_bootstrap then
      packer.sync()
    end
  end,
  config = {
    -- 最大并发数
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    -- display = {
    -- 使用浮动窗口显示
    --   open_fn = function()
    --     return require("packer.util").float({ border = "single" })
    --   end,
    -- },
  },


})

-- 每次保存 plugins.lua 自动安装插件
-- move to autocmds.lua
-- pcall(
--   vim.cmd,
--   [[
-- augroup packer_user_config
-- autocmd!
-- autocmd BufWritePost plugins.lua source <afile> | PackerSync
-- augroup end
-- ]]
-- )
