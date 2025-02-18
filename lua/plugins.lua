local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- 主题插件 
    -- use("folke/tokyonight.nvim")
    use("ellisonleao/gruvbox.nvim")
    -- use("mhartington/oceanic-next")
  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    -- git = {
    --   -- default_url_format = "https://hub.fastgit.xyz/%s",
    --   -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
    --   -- default_url_format = "https://gitcode.net/mirrors/%s",
    --   -- default_url_format = "https://gitclone.com/github.com/%s",
    -- },
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})
