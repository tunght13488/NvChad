local plugins = {

  {
    "lambdalisue/suda.vim",
    lazy = false,
    config = function ()
      vim.g.suda_smart_edit = 1
    end
  },

}

return plugins
