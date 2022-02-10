# First Order Commands - After Learning Basic Navigation

## swtich between windows

> control + w [h,j,k,l]

## add windows

> control + w [s,v]

## remove all the slit windows at once

> control + w o

s for split, v for vertical

## view files

> : Ex - explorer
> : Vex - vertical explorer
> : Sex - split explorer

## nav with Marks

global mark - nav across buffers

> press m + [Capital Letter]

buffer mark

> press m + [lowercase letter]

to nav back to your mark, press ' + the letter

> '[letter]

## jump to last file

> control + 6 (constrol carrot)

## circling through the jump list

> control + o

> control + i

# PLUGIN COMMANDS

## vimWiki

<Leader>ww -- Open default wiki index file.
<Leader>wt -- Open default wiki index file in a new tab.
<Leader>ws -- Select and open wiki index file.
<Leader>wd -- Delete wiki file you are in.
<Leader>wr -- Rename wiki file you are in.
<Enter> -- Follow/Create wiki link.
<Shift-Enter> -- Split and follow/create wiki link.
<Ctrl-Enter> -- Vertical split and follow/create wiki link.
<Backspace> -- Go back to parent(previous) wiki link.
<Tab> -- Find next wiki link.
<Shift-Tab> -- Find previous wiki link.

:Vimwiki2HTML -- Convert current wiki link to HTML.
:VimwikiAll2HTML -- Convert all your wiki links to HTML.
:help vimwiki-commands -- List all commands.
:help vimwiki -- General vimwiki help docs.

nnoremap <leader>w <C-w>s<CR>
nnoremap <leader>q :q<CR>


" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>

<leader>w :w<CR>
<leader>r :!/usr/local/bin/node %<CR>
<Leader> <C-k> :cnext<CR>
<C-j> :cprev<CR>
<C-E> :copen<CR>
<Leader><CR> :so ~/.config/nvim/init.vim<CR>
jk <esc>
<C-p> :GFiles<CR>
<leader>pf :Files<CR>

" Telescope reaps

<leader>gs - Telescope git_status
<leader>gc <cmd>Telescope git_commits<cr>
<leader>gb <cmd>Telescope git_branches<cr>
<leader>ff <cmd>Telescope find_files<cr>
<leader>fg <cmd>Telescope live_grep<cr>
<leader>fb <cmd>Telescope buffers<cr>
<leader>fb <cmd>Telescope help_tags<cr>m




