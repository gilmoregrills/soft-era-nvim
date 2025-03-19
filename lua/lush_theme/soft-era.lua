--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local background = hsl("#fbf8f8")
local backgroundDarker = hsl("#f9f5f5")
local backgroundDarkest = hsl("#f2edec")
local cursor = hsl("#f6e3e7")
local blue = hsl("#82b4e3")
local green = hsl("#25b7b8")
local greenDarker = hsl("#1f9697")
local greenFaded = hsl("#98c4ba")
local hotPink = hsl("#ec57b4")
local lightGray = hsl("#e9e4e1")
local orange = hsl("#e4846f")
local purpleDefault = hsl("#cfc9f4")
local purpleDarker = hsl("#b4addf")
local purpleDarkest = hsl("#a29acb").darken(10)
local purpleLight = hsl("#eceafa")
local red = hsl("#dd698c")
local redDarker = hsl("#b55673")
local redFaded = hsl("#db90a7")
local salmon = hsl("#eeaabe")
local text = hsl("#c8b3b3")
local textDark = hsl("#414141")
local textEmphasis = hsl("#948484")
local textFaded = hsl("#e2d1d1")
local violet = hsl("#cb8dd7")
local yellow = hsl("#ede7c5")
local yellowDarker = hsl("#cabf9a")
local yellowDarkest = hsl("#a69d7f")
local white = hsl("#ffffff")

local debug1 = hsl("#ff0000")
local debug2 = hsl("#00ff00")
local debug3 = hsl("#0000ff")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	-- local var = nvim.("@variable")
	return {

		-- ported from soft-era-vim
		-- BASE UI
		Conceal({ fg = debug1, bg = debug2 }),
		Cursor({ fg = background, bg = cursor, ctermbg = cursor }),
		CursorIM({ fg = debug1, bg = debug2 }),
		CursorColumn({ fg = background, bg = cursor, ctermbg = cursor }),
		Directory({ fg = greenFaded }),
		DiffAdd({ bg = greenFaded }),
		DiffChange({ bg = yellow }),
		DiffDelete({ bg = redFaded }),
		DiffText({ gui = "reverse" }),
		ErrorMsg({ gui = "reverse", fg = red }),
		-- ErrorMsg({ fg = red }),
		VertSplit({ fg = background, bg = background }),
		Folded({ fg = textFaded }),
		FoldColumn({ fg = debug1, bg = debug2 }),
		ColorColumn({ bg = backgroundDarker }),
		CursorLine({ bg = backgroundDarker }),
		CursorLineNr({ fg = purpleDarker }),
		SignColumn({ bg = background }),
		-- IncSearch({ gui = "underline", bg = salmon }),
		IncSearch({ bg = salmon }),
		LineNr({ fg = textFaded }),
		MatchParen({ fg = blue }),
		ModeMsg({ fg = redFaded, bg = background }),
		MoreMsg({ fg = redFaded, bg = purpleLight }),
		NonText({ fg = textEmphasis }),
		Normal({ ctermfg = purpleDefault, guifg = purpleDefault, bg = background }),
		NormalNC({ ctermfg = purpleDefault, guifg = purpleDefault, bg = background }),
		Pmenu({ fg = purpleDarkest, bg = purpleLight }),
		PmenuSel({ fg = purpleDarkest, blend = 0, bg = purpleDefault }),
		PmenuSbar({ fg = debug1, bg = debug2 }),
		PmenuThumb({ fg = debug1, bg = debug2 }),
		Question({ fg = debug2 }),
		-- Search({ gui = "underline", bg = salmon }),
		Search({ bg = salmon }),
		SpecialKey({ fg = red, bg = background }),
		SpellBad({ fg = red, cterm = "underline", gui = "underline" }),
		SpellLocal({ fg = debug1, bg = debug2 }),
		SpellCap({ fg = debug1, bg = debug2 }),
		SpellRare({ fg = debug1, bg = debug2 }),
		StatusLine({ fg = purpleDefault, bg = purpleLight }),
		StatusLineNC({ fg = debug1, bg = purpleDefault }),
		Title({ fg = purpleDefault, bg = background }),
		Visual({ bg = purpleLight }),
		VisualNOS({ fg = redFaded, bg = purpleLight }),
		WarningMsg({ fg = redFaded, bg = background }),
		WildMenu({ fg = debug1, bg = debug2 }),
		FloatBorder({ fg = purpleDefault, bg = background }),
		NormalFloat({ fg = Normal.fg, bg = Normal.bg }),

		-- neo-tree
		NeoTreeFloatBorder({ bg = background }),
		NeoTreeNormal({ fg = purpleDefault, bg = background }),
		-- NeoTreeTitleBar({ fg = salmon, bg = salmon }),

		-- telescope
		TelescopeBorder({ fg = salmon, bg = background }),

		-- which-key
		WhichKey({ fg = purpleDarkest }),
		WhichKeyBorder({ fg = purpleDarkest, bg = background }),
		WhichKeyNormal(Normal),

		-- tabline styles
		TabLine({ fg = purpleDarkest, bg = purpleLight }),
		TabLineSel({ fg = purpleDarkest, bg = background }),
		TabLineFill({ fg = purpleDarkest, bg = purpleLight }),

		-- mini.indentscope
		MiniIndentscopeSymbol({ fg = purpleDefault }),

		-- trouble
		TroubleNormal({ fg = purpleDefault, bg = background }),
		TroubleNormalNC({ fg = purpleDefault, bg = background }),
		TroubleText({ fg = purpleDefault }),

		-- Lazy.nvim
		-- TODO: sort out lazy.nvim float window coloring
		LazyBold({ fg = purpleDefault, bg = background, bold = false }),
		LazyH2({ fg = purpleDefault, bg = background, bold = false }),

		-- FTerm

		-- BASE SYNTAX
		Comment({ fg = textFaded, cterm = "italic", gui = "italic" }),
		Constant({ fg = purpleDefault }),
		String({ fg = blue }),
		Character({ fg = blue }),
		Boolean({ fg = hotPink }),
		Number({ fg = blue }),
		Float({ fg = blue }),
		Identifier({ fg = purpleDefault }),
		Variable({ fg = purpleDefault }),
		Parameter({ fg = purpleDefault }),
		Function({ fg = greenFaded }),
		Method(Function),
		-- Statement({ fg = blue, cterm = "bold", gui = "bold" }),
		Statement({ fg = blue }),
		-- Conditional({ fg = blue, cterm = "bold", gui = "bold" }),
		Conditional({ fg = blue }),
		-- Repeat({ fg = blue, cterm = "bold", gui = "bold" }),
		Repeat({ fg = blue }),
		-- Label({ fg = blue, cterm = "bold", gui = "bold" }),
		Label({ fg = blue }),
		Operator({ fg = hotPink }),
		Keyword({ fg = purpleDarkest, cterm = "italic", gui = "italic" }),
		Exception({ fg = blue, cterm = "italic", gui = "italic" }),
		PreProc({ fg = blue, cterm = "italic", gui = "italic" }),
		Include({ fg = blue }),
		Define({ fg = blue, cterm = "italic", gui = "italic" }),
		Macro({ fg = blue, cterm = "italic", gui = "italic" }),
		PreCondit({ fg = blue, cterm = "italic", gui = "italic" }),
		Type({ fg = purpleDarker }),
		Class({ fg = purpleDarker }),
		StorageClass({ fg = purpleDarker }),
		Structure({ fg = purpleDarker }),
		TypeDef({ fg = purpleDarker }),
		Special({ fg = purpleDarker }),
		SpecialChar({ fg = textDark }),
		Tag({ fg = textDark }),
		Delimiter({ fg = green }),
		SpecialComment({ fg = textDark }),
		Debug({ fg = textDark }),
		Underlined({ gui = "underline" }),
		Ignore({ fg = textDark }),
		Error({ fg = red }),
		Todo({ fg = redFaded }),

		-- treesitter highlight group definitions
		sym("@variable")({ fg = purpleDefault }),
	}
end)
return theme
