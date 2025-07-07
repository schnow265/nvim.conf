return {
  {
    "pluffie/neoproj",
    cmd = { "ProjectOpen", "ProjectNew" },
    config = function()
      local neoproj = require("neoproj")

      local function register(nme, cmd)
        neoproj.register_template({
          name = nme,
          expand = cmd,
        })
      end

      neoproj.setup({
        -- Directory which contains all of your projects
        project_path = vim.fn.expand(vim.env.PROJ_PATH or "~/projects"),
      })

      register("Empty project (Git)", "git init")
      register(".NET console application", "dotnet new console --use-program-main")
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true,
        },
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },

        exclude_dirs = { ".cargo" },
      })
    end,
  },
}
