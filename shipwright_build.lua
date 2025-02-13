-- shipwright_build.lua
local colorscheme = require("lush_theme.soft-era")
local lushwright = require("shipwright.transform.lush")
run(colorscheme, lushwright.to_vimscript, { overwrite, "colors/soft-era.vim" })
run(colorscheme, lushwright.to_lua, { overwrite, "colors/soft-era.lua" })
