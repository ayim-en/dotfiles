return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local logo = [[
    ⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⣾⡳⣼⣆⠀⠀⢹⡄⠹⣷⣄⢠⠇⠻⣷⣶⢀⣸⣿⡾⡏⠀⠰⣿⣰⠏⠀⣀⡀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⣀⣀⣀⡹⣟⡪⢟⣷⠦⠬⣿⣦⣌⡙⠿⡆⠻⡌⠿⣦⣿⣿⣿⣿⣦⣿⡿⠟⠚⠉⠀⠉⠳⣄⡀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⡀⢀⣼⣟⠛⠛⠙⠛⠉⠻⢶⣮⢿⣯⡙⢶⡌⠲⢤⡑⠀⠈⠛⠟⢿⣿⠛⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀
    ⠀⠀⠀⠀⠀⡸⠯⣙⠛⢉⣉⣙⣿⣿⡳⢶⣦⣝⢿⣆⠉⠻⣄⠈⢆⢵⡈⠀⠀⢰⡆⠀⣼⠓⠀⠀⠀ N a h   ⠈⣷⠀
    ⠀⠀⠀⠖⠉⠻⣟⡿⣿⣭⢽⣽⣶⣈⢛⣾⣿⣧⠀⠙⠓⠀⠑⢦⡀⠹⣧⢂⠀⣿⡇⢀⣿⠺⠇⠀   I' d     ⣿
    ⠀⠀⠀⠀⠐⠈⠉⢛⣿⣿⣶⣤⣈⠉⣰⣗⡈⢛⣇⠀⣵⡀⠀⠘⣿⡄⢻⣤⠀⢻⡇⣼⣧⣿⡄⠀⠀ V I M   ⠀⡿⠀
    ⠀⠀⠀⠀⠀⣠⣾⣿⢍⡉⠛⠻⣷⡆⠨⣿⣭⣤⣍⠀⢹⣷⡀⠀⠹⣿⡄⠈⠀⢿⠁⣿⣿⠏          ⠀⠀⠀⣇⠀
    ⠀⠈⢻⣷⣿⣽⣿⣿⢍⣴⡏⠚⢛⣈⣍⠛⠛⠿⢦⣌⢙⠻⡆⠁⠀⠀⠀⣴⣦⠀⠀⠀⠐⢳⢻⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠮⠀⠀
    ⠀⠀⠈⠙⣿⣧⣶⣿⠿⣧⣴⣿⢻⡉⠀⢀⣠⣴⣾⡟⠿⠃⠁⣠⣤⡶⣾⡟⠅⠀⣀⡄⠀⣾⢸⣿⣏⢻⢶⣦⣤⣤⣄⢶⣾⣿⣡⣤⡄
    ⠀⠀⣠⣞⣋⣿⣿⣾⣿⡿⡛⣹⡟⣤⢰⡿⠟⠉⣀⣀⣤⣤⡠⠙⢁⣾⡿⠂⠀⣿⠟⣁⠀⣹⠀⣹⣿⡟⣼⣿⣿⣌⣿⣞⣿⣿⠁⠀⠀
    ⠀⢠⡿⢛⢟⣿⣿⣿⣿⣿⣿⡟⣼⣿⣟⢓⠛⣿⣏⣿⣵⣗⣵⣴⣿⢟⡵⣣⣼⣿⢟⣵⣶⢻⣶⣿⠀⠀⣈⢻⣿⣿⣿⢿⣾⢿⣧⠀⠀
    ⠀⠀⠀⠜⣿⣾⢿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣭⣿⣖⣿⢿⣿⡿⣿⣿⣿⡿⢡⢯⣿⣿⡵⣿⣿⡵⣿⣧⡿⣾⣷⣿⣿⢿⣿⡇⠉⠁⠀
    ⠀⠀⠀⠀⣿⣥⣾⣿⣿⣿⣿⣿⣿⣿⡟⣭⠛⢟⣿⠃⠞⠟⣸⣿⠏⣸⣧⣀⠿⢿⣿⠞⣟⣿⣿⠞⢡⣽⣿⢿⣿⣿⣿⣿⣿⠁⠀⠀⠀
    ⠀⠀⠀⠀⠟⠛⠫⣿⣿⣿⣿⣿⡿⣧⠛⣿⠛⣿⣿⣿⣷⡌⠹⡟⠀⠛⠁ ⠏⣼⣿⣿⣿⣷⡌⠛⣿⣿⣿⣿⣿⢀⣿⣿⣿⣿⣧⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠘⠋⣾⣷⣿⣿⣧⠙⠀⠙⢣⠝⠛⠋⣽⣷⢦⠇⠀⠀  ⠞⣤⠙⢣⠝⠛⠋⣽⠘⢻⣿⣿⢿⣼⣷⡟⢻⣷⠉⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠐⠟⢻⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠉  ⠀⠀⠀⠀⣾⠟⠀⢸⣷⣿⡇⠀ ⠛⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠁⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⡧⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠲⣄⠀⡄⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⣀⠀⠀⣠⣾⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⢻⣆⠀⠛⠁⠶⣶⣶⣶⣶⣶⣶⡶⠆⠘⠋⣠⡾⢫⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠛⠀⠙⣷⡀⠀⠀⠙⠛⠛⠛⠛⠋⠁⠀⢀⣴⠋⠀⣾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣰⣦⡀⠸⣿⣦⡀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠁⠀⠐⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⡄⢺⣿⡄⠹⣿⠻⢦⣤⣤⣤⣤⣶⣿⡟⢀⣀⠀⠀⢸⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣮⣿⣿⡀⠹⡷⣦⣀⡀⡀⢸⣿⠏⢠⣾⣿⠀⠀⣾⣿⣿⣿⣶⣄⣀⠀⠀⠀⠀⠀⠀⠀
    ⣀⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠘⣷⣻⡟⠀⡼⠁⣴⣿⣿⣯⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣯⣿⣤⣤⣤⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄
    ]]

    local neovim_text = [[
    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
    ]]

    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = vim.split(logo .. "\n" .. neovim_text .. "\n", "\n")

    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
      dashboard.button("n", "  New File", ":ene | startinsert<CR>"),
      dashboard.button("g", "  Grep String", ":Telescope live_grep<CR>"),
      dashboard.button("e", "  File Explorer", ":Neotree toggle position=right<CR>"),
      dashboard.button("c", "  Config", ":cd ~/.config/nvim | e init.lua<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    local function footer()
      local total_plugins = require("lazy").stats().count
      local datetime = os.date("  %Y-%m-%d   %H:%M:%S")
      local version = vim.version()
      local nvim_version = "  v" .. version.major .. "." .. version.minor .. "." .. version.patch
      return datetime .. "   " .. nvim_version .. "   󰏗 " .. total_plugins .. " plugins"
    end

    dashboard.section.footer.val = footer()
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 2

    require("alpha").setup(dashboard.opts)
    vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
  end,
}
