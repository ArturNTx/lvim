local n = lvim.keys.normal_mode
local ln = lvim.lsp.buffer_mappings.normal_mode
local i = lvim.keys.insert_mode
--local li = lvim.lsp.buffer_mappings.insert_mode
local v = lvim.keys.visual_mode
local lv = lvim.lsp.buffer_mappings.visual_mode

-- Disabe Arrow Keys
--n["<Up>"] = "<Nop>"
--n["<Down>"] = "<Nop>"
n["<Left>"] = "<Nop>"
n["<Right>"] = "<Nop>"
i["<Up>"] = "<Nop>"
i["<Down>"] = "<Nop>"
i["<Left>"] = "<Nop>"
i["<Right>"] = "<Nop>"
--v["<Up>"] = "<Nop>"
--v["<Down>"] = "<Nop>"
v["<Left>"] = "<Nop>"
v["<Right>"] = "<Nop>"

-- Move Lines
n["<c-k>"] = ":m .-2<CR>"
n["<Up>"] = ":m .-2<CR>"
n["<c-j>"] = ":m .+1<CR>"
n["<Down>"] = ":m .+1<CR>"
v["<c-k>"] = ":m '<-2<CR>gv=gv"
v["<Up>"] = ":m '<-2<CR>gv=gv"
v["<c-j>"] = ":m '>+1<CR>gv=gv"
v["<Down>"] = ":m '>+1<CR>gv=gv"

-- Move Cursor in Insert Mode
i["<c-h>"] = "<Left>"
i["<c-j>"] = "<Down>"
i["<c-k>"] = "<Up>"
i["<c-l>"] = "<Right>"

-- Surround in Visual Mode
ln['<leader>"'] = { 'viw<ESC>a"<ESC>bi"<ESC>ela', 'Surround with "' }
ln["<leader>'"] = { "viw<ESC>a'<ESC>bi'<ESC>ela", "Surround with '" }
ln['<leader>('] = { 'viw<ESC>a)<ESC>bi(<ESC>ela', 'Surround with ()' }
ln['<leader>['] = { 'viw<ESC>a]<ESC>bi[<ESC>ela', 'Surround with []' }
ln['<leader>{'] = { 'viw<ESC>a}<ESC>bi{<ESC>ela', 'Surround with {}' }
ln['<leader><'] = { 'viw<ESC>a><ESC>bi<<ESC>ela', 'Surround with <>' }
lv['<leader>"'] = { 'c""<ESC>Pea', 'Surround with "' }
lv["<leader>'"] = { "c''<ESC>Pea", "Surround with '" }
lv['<leader>('] = { 'c()<ESC>Pea', 'Surround with ()' }
lv['<leader>['] = { 'c[]<ESC>Pea', 'Surround with []' }
lv['<leader>{'] = { 'c{}<ESC>Pea', 'Surround with {}' }
lv['<leader><'] = { 'c<><ESC>Pea', 'Surround with <>' }

-- Quick Exit Insert Mode
i['jk'] = '<ESC>'

-- Select All Lines
ln['<leader>a'] = { '<ESC>ggVG<CR>', 'Select All Lines of File' }

-- Remove Selection Highlight
n['<ESC>'] = ':nohlsearch<Bar>:echo<CR>'
