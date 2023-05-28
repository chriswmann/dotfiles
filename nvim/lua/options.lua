local o = vim.opt
local indent = 4
o.backup = false                          -- creates a backup file
o.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
o.cmdheight = 1                           -- more space in the neovim command line for displaying messages
o.completeopt = { "menuone", "noselect" } -- mostly just for cmp
o.conceallevel = 0                        -- so that `` is visible in markdown files
o.cursorline = true                       -- highlight the current line
o.expandtab = true                        -- convert tabs to spaces
o.fileencoding = "utf-8"                  -- the encoding written to a file
o.fillchars.eob = " "                     -- show empty lines at the end of a buffer as ` ` {default `~`}
o.formatoptions:remove { "c", "r", "o" }  -- This is a sequence of letters which describes how automatic formatting is to be done
o.guifont = "monospace:h17"               -- the font used in graphical neovim applications
o.hlsearch = true                         -- highlight all matches on previous search pattern
o.ignorecase = true                       -- ignore case in search patterns
o.iskeyword:append "-"                    -- treats words with `-` as single words
o.laststatus = 3                          -- only the last window will always have a status line
o.linebreak = true                        -- wrap lines at typographically-nicer characters (see h: breakat)
o.mouse = "a"                             -- allow the mouse to be used in neovim
o.number = true                           -- set numbered lines
o.numberwidth = 4                         -- minimal number of columns to use for the line number {default 4}
o.pumheight = 10                          -- pop up menu height
o.relativenumber = true
o.ruler = false                           -- hide the line and column number of the cursor position
o.scrolloff = 8                           -- minimal number of screen lines to keep above and below the cursor
o.shiftwidth = indent                     -- the number of spaces inserted for each indentation
o.shortmess:append "c"                    -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"
o.showcmd = false                         -- hide (partial) command in the last line of the screen (for performance)
o.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 0                         -- always show tabs
o.sidescrolloff = 8                       -- minimal number of screen columns to keep to the left and right of the cursor if wrap is `false`
o.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
o.smartcase = true                        -- smart case
o.smartindent = true                      -- make indenting smarter again
o.splitbelow = true                       -- force all horizontal splits to go below current window
o.splitright = true                       -- force all vertical splits to go to the right of current window
o.swapfile = false                        -- creates a swapfile
o.tabstop = indent                        -- insert {indent} spaces for a tab
o.termguicolors = true                    -- set term gui colors (most terminals support this)
o.timeout = true
o.timeoutlen = 300                        -- time to wait for a mapped sequence to complete (in milliseconds)
o.undofile = true                         -- enable persistent undo
o.updatetime = 300                        -- faster completion (4000ms default)
o.whichwrap:append "<,>,[,],h,l"          -- keys allowed to move to the previous/next line when the beginning/end of line is reached
o.wrap = false                            -- display lines as one long line
o.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

