return {
  -- Other plugins...
  
  {
    "vimwiki/vimwiki",
    lazy = false,       -- load immediately
    config = function()
      vim.g.vimwiki_list = {
        {
          path = "~/vimwiki/",
          syntax = "markdown",  -- or "vimwiki" if you prefer
          ext = ".wiki"
        }
      }
    end
  },
}

