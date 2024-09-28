# Vim Commands and Notes

**Normal Mode**
```
,       Leader
,vs     Split into columns
,hs     Split into rows
,p      Search for File
,be     Buffer Explorer
,n      Toggle line numbers
,u      Undo Tree
,V      Select the just vim-pasted text
,gb     Open the current file on github.com (for github repos)
,l      Open Directory Tree
    a   Create file/directory at location
    r   Rename selected file/directory
    d   Delete selected file/directory
    x   Cut
    c   Copy
    p   Paste
,mp     Run markdown to pdf converter on this file
,m      Insert a template
,g      Render this markdown file
,h      Enter full file hop mode
t <ch>  Hop forward to <ch> on this line
T <ch>  Hop back to <ch> on this line


ctrl+`  Open the terminal (use the same to close or use <esc>)

gd      Go to definition
gx      Open the link under cursor in a browser

ctrl+o  Go to previous location
ctrl+i  Go to next location

_md     Switch filetype to markdown
_sh     Switch filetype to bash

gcc     Comment line using line comment
gbc     Comment line using block comment
gcip    Toggle comment inside a paragraph
gca}    Toggle comment around curly braces
gbaf    Toggle comment around a function
gbac    Toggle comment around a class
gc5j    Toggle comment around the next 5 lines
gc8k    Toggle comment around the previous 5 lines

c+w,=   Equalize pane sizes
c+w,+/- Increase/decrease height
c+w,>/< Increase/decrease width
```

**Visual Mode**
```
,c      Copy selected to system clipboard
gc      Comment selected using line comment
gb      Comment selected using block comment
```

**Insert Mode**
```
<C-u>  Uppercase the last typed word
<C-e>  Jump to the end of the line
```

**Commands**
```
:Git <cmd>      Just like running `git <cmd` on the command line
:GBrowse        Open the current file in github (for github repos)
```

**Autocomplete and Snippets**
```
<Tab>       Go to next entry in completion menu
<S-Tab>     Go to previous entry in completion menu
<c-space>   Trigger completion menu
<c-k>       Jump to next field in snippet (if there's one)
<c-j>       Jump to previous field in snippet (if there's one)
<c-f>       Jump forward in snippet
<c-b>       Jump backwards in snippet
```

**Surround**
```
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
```
In visual mode, use `S)` to surround with `(v)`.
