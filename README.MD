# This is readme for my VS Code & Vim preset

## Custom settings

2077 theme with custom surrounds colors \
VSCodeVim

Terminal opens in current file folder by default

---

### VSCode default shortcuts (kinda useful)

VSC Command palette: **CMD/Ctrl + Shift + P** \
VSC Open file: **CMD/Ctrl + P** \
Open VSC terminal: **Ctrl + `** \
Search: **CMD/Ctrl + F** \
Search all files and folders: **CMD/Ctrl + Shift + F** \
Toggle sidebar visibility: **CMD+b** \
File Explorer: **CMD/Ctrl + Shift + E (gotta verify Windows)** \
Settings: **CMD/Ctrl + < (gotta verify Windows)**

---

&nbsp;

## Vim cheatsheet

&nbsp;

_"Any random key combination is a valid VIM input"_

Also for \_vimrc don't use colon infront of a shortcut (nnoremap instead of :nnoremap)

Status bar is dynamically changing colors based on the current vim mode -> possible shit performance (u might have to disable it in the settings)

&nbsp;

### Custom keybiddings (keybiddings.json) for vim that are not in \_vimrc:

<!-- switching splits (panels or whatever): CTRL+h CTRL+j CTRL+k CTRL+l
Send tab to split CTRL+CMD/ALT+h CTRL+CMD/ALT+j CTRL+CMD/ALT+k CTRL+CMD/ALT+l
SHIT IS CURRENTLY WIP -->

Switch between left/right tabs: **CMD+h CMD+L** \
Default **CTRL+1234567890** tabs are now also **CMD/WIN+123456789** \
Move tabs left or right (by one): **CTRL+CMD+h CTRL+CMD+l**

_Split movements are WIP_

Move line up or down (thru VSCode shortcut, cursor stays where it was): **Alt+j Alt+k**

Indent a line: **Shift+>** \
Deindent a line: **Shift+<**

Single symbol snake replaces: **f** (**F** to search backwards) this shortcut jumps to the next occurence of the charecter you press

---

### Movement & General

Move by char: **h j k l** \
Move by 5 char (\_vimrc): **Shift+ h j k l** \
Move by paragraph: **{ }**

Previous cursor position: **''** \
Go back to the last action cursor position: **CTRL+O** \
Go back to the previous action cursor position: **CTRL+I**

Insert infront of cursor: **i** \
Insert beginning of the line: **I** \
To go back to the last insert: **gi**

Append after cursor: **a** \
Append end of the line: **A**

Undo: **u** \
Undo changes on whole line: **U** \
Redo: **Ctrl+R**

Paste (infront): **p** \
Paste (after): **P**

Copy whole line: **yy** \
Copy only line after cursor: **Y**

Change case: **~**

Go to end of line: **$** \
Go to beginning of a line: **0** \
Swap between parenteses(they should be highlighted): **%**

Jump to definition: **gd** \
Jump to file under cursor: **gf**

Commenting: **gc** something, **gcap** - commmenting out a paragraph

Open file on which filename the cursor is: **gf**

Reopen the last insertion done: **gi**

Upper/Lowercase using motion: **gU <motion> gu <motion> gUap** (puts a whole paragraph in caps)

---

### Search

Search for selected term (go to the next one immediately as well): **\*** \
Search for selected term backwards (go to the next one immediately as well): **?\*** \
Jump to next search term occurence: **n** \
Jump to previous search term occurence: **N**

---

### VIM Surround

Vim surround in visual mode: **S** \
Use ( for spaces before/after the selection or ) if you don't want them spaces \
Add desired surround around text defined by <motion>: **ys** <motion> <desired> (eg **ys$)** ) \
Delete existing surround: **ds** <existing surround> \
Change existing surround to desired: **cs** <existing surround> <desired> \
Surround whole line: **yss**

---

### Registers

To access **a** register, you type **"a** before a command, where **a** is the name of a register. If you want to copy the current line into register **k**, you can type: **"kyy** \
Or you can append to a register by using a capital letter: **"Kyy** \
Use command **:reg** to access all registers \
Read only registers: \
Black hole register: **"\_** \
System clipboard register: **"+** \
Last keys used or something (this one is odd): **".** \
Current file path: **"%** <enter> \
Numbered registers (first yank 0, after second it moves to 1 and so on): **"0** \

---

### Vim Recording (Macros)

Vim recording (also uses the same registers as yank and such, might rewrite it): **q** + letter (qa) \
Play vim recording: **@ + same letter (@a)** \
Append recording: **q + LETTER (qA)** \
Clear recording (register): **q + letter + q (qaq)**

---

### Commands (google it lol)

Last used : command: **@:** \
Repeat the : command used above: **@@**

### Substitute (which is a command)

Substitute: **:s/asd/qwe** (substitute all _asd_ for _qwe_ in the line, use **:s/asd/qwe/g** for only the first occurence) \
Delete the occurence: **:s/asd** \
Substitute on all lines: **:%s/asd/qwe** (**%** is the motion)
Substitute within range: (select stuff first) **:'<,'>s/asd/qwe** (the **'<,'>** will be added automatically) \
Repeat the last substitute with its flags: **:&&** \
Repeat the last substitute: **&**

---

### Multi cursor & Visual Selection

Select basic: **v** \
Select lines: **V**

Put a cursor on the word: **gb** \
Reopen last Visual select: **gv**

Visual mode allows for different commands than normal mode, **i** & **a** won't work use **I** & **A**

_Commands for **Visual selection** (when selected):_

**c** change selection (delete and switch to insert mode) \
**I** insert in front of cursor \
**A** append after cursor \
**r** replace every character in selection \
**d** delete selection \
**o** toggle cursor to opposite corner

Visual select multiple things: **v** something **vip** (visually select whole paragraph)

When selecting, inside: **vip** (visually select inside paragraph)
When selecting, around: **vap** (visually select around paragraph)

_List of **Visual selection** motions or however tf they're called:_
(works for any type of surroundings)

**aw** a word (with white space) \
**iw** inner word \
**aW** a WORD (with white space) \
**iW** inner WORD \
**as** a sentence (with white space) \
**is** inner sentence \
**ap** a paragraph (with white space) \
**ip** inner paragraph \
**ab** a () block (with parenthesis) \
**ib** inner () block \
**aB** a {} block (with braces) \
**iB** inner {} block \
**at** a <tag> </tag> block (with tags) \
**it** inner <tag> </tag> block \
**a<** a <> block (with <>) \
**i<** inner <> block \
**a[** a [] block (with []), \
**i[** inner [] block \

To go to Visual block select mode: **Leader+v'** \
Motion commands to create more cursors (and then move them): **Leader+v jjjjj $** (to move to the end of the line with them)

---

### Search

Search: **/qweqweqwe** (searches for qweqweqwe) \
Search backwards: **?asdasdasd** (searches for asdasdasd) \
Next occurence: **n** \
Previous occurence: **n** \
To go to the next occurence and then delete it and do it for the next one as well and so on: **ndw n . n .** \
Select the next occurence of your last search (thru **/** or **?**): **gn** (or **gn**)

---

### Marks

Set a mark: **m** letter (**mz**) \
Go to a mark: **'** letter (**'z**) \
Use that to do stuff: **d'z** (delete from here to mark **z**) \
Access all marks: **:marks** \
Delete all marks: **:delm!**

<!-- Lowercase marks are single file, Uppercase are multifile -->

---

### The Rest:

Increase number that the cursor is on: **Ctrl+a** (123 -> 124) \
Decrease number that the cursor is on: **Ctrl+x** (123 -> 123) \
Also works in Visual select mode: **g Ctrl+a** (or **g Ctrl+x**) \
Press numbers first then use shortcut to change it by that amount: **10 Ctrl+a** (123 -> 133)

Center current line in the middle of the screen: **zz**

<!-- Remapped default Find (F3): Tab
Remapped default Find Next (Shift + F3): Shift + Tab -->