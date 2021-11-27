# This is readme for my VS Code & VIM preset

## Custom settings

2077 theme with custom surrounds colors \
VSCodeVIM

Terminal opens in current file folder by default

---

## VSCode default shortcuts (kinda useful)

VSC Command palette: **CMD/Ctrl + Shift + P** \
VSC Open file: **CMD/Ctrl + P** \
Open VSC terminal: **Ctrl + `** \
Search: **CMD/Ctrl + F** \
Search all files and folders: **CMD/Ctrl + Shift + F** \
File Explorer: **CMD/Ctrl + Shift + E (gotta verify Windows)** \
Settings: **CMD/Ctrl + < (gotta verify Windows)**

---

&nbsp;

## VIM cheatsheet

&nbsp;

_"Any random key combination is a valid VIM input"_

Also for \_vimrc don't use colon infront of a shortcut (nnoremap instead of :nnoremap)

Status bar is dynamically changing colors based on the current vim mode -> possible shit performance (u might have to disable it in the settings)

&nbsp;

### Keybiddings (keybiddings.json) incl. for vim that are not in \_vimrc:

Switching splits (panels or whatever): **CTRL+h CTRL+j CTRL+k CTRL+l** \
Send tab to split **CTRL+SHIFT+h CTRL+SHIFT+j CTRL+SHIFT+k CTRL+SHIFT+l** \
Toggle sidebar visibility: **CMD+b** \
Control left menu using either arrows or: **hjkl** \
Open item: **ENTER** \
Default "rename item" is instead of **ENTER**: **SHIFT+ENTER**

Switch between left/right tabs: **CMD+h CMD+L** \
Default **CTRL+1234567890** tabs are now also **CMD/WIN+123456789** \
Move tabs left or right (by one): **CTRL+CMD+h CTRL+CMD+l**

Move line up or down (thru VSCode shortcut, cursor stays where it was): **Alt+j Alt+k**

Indent a line: **Shift+>** \
Deindent a line: **Shift+<**

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
To go back to the last insert: **gi** \
Insert mode: Delete current line (\_vimrc): **CTRL+d**

Append after cursor: **a** \
Append end of the line: **A**

Undo: **u** \
Undo changes on whole line: **U** \
Redo: **Ctrl+R**

Paste (infront): **p** \
Paste (after): **P**

Copy (yank) something: **y** \
Copy whole line: **yy** \
Copy only line after cursor (\_vimrc): **Y** \
Copy current selection (or line of nothing is selected currently) to both yank registry and to system clipboard (\_vimrc): **Leader+c**

Delete something: **d** \
Delete whole line: **dd** \
Delete only line after cursor: **D**

Change (selected), it copies changed to the register: **c** \
Change until the end of the line: **C** \
Change whole line: **cc** or **S** (tbh I should reuse S for something better)

Cut (you can cut one character under the cursor): **x** \
Cut before cursor: **X** \
Cut one character and go to Insert mode (\_vimrc): **Leader+x**

Put an empty line below or above your current line (without going to the insert mode) (\_vimrc): **Leader+o** or **Leader+O** \
Put an empty line after the cursor (without going to the insert mode) (\_vimrc): **Leader+Leader+o** \
Put a space before/after your current cursor (without going to the insert mode) (\_vimrc): **Leader+A** or **Leader+a**

Put ; on the end of the current line (without going to the insert mode) (\_vimrc): **Leader+;** \
Put , on the end of the current line (without going to the insert mode) (\_vimrc): **Leader+,** \
Put . on the end of the current line (without going to the insert mode) (\_vimrc): **Leader+.**

**_Search_** \
Single character snake replaces: **f** (**F** to search backwards) this shortcut jumps to the next occurence of the charecter you press **;** \
(I prefer easymotion to snake tbh)

Search to (non-inclusive compared to f): **t** (or **T**)

Search for selected term (go to the next one immediately as well): **\*** \
Search for selected term (WITHOUT going to the next one immediately): **Leader+\*** \
Search for selected term backwards (go to the next one immediately as well): **?\*** \
Jump to next search term occurence: **n** \
Jump to previous search term occurence: **N**

Combine search with delete, yank, paste, like **d/asd** which deletes till _asd_ occurence

**_Easymotion_** \
Jump to pressed character (\_vimrc): **s** (**sz** shows all occurences of z or Z and you press key where you want to go) \
**easymotion** for most used shortcuts (I often press spacebar too fast for mac to register it properly): \
Ez motion by word (\_vimrc): **Leader+w** \
Ez motion by word (backwards) (\_vimrc): **Leader+b** \
Ez motion by word ends (\_vimrc): **Leader+e** \
Ez motion by word ends (backwards) (\_vimrc): **Leader+ge** \
Ez motion by lines down (\_vimrc): **Leader+j** \
Ez motion by lines up (\_vimrc): **Leader+k**

---

Change case: **~**

Go to end of line: **$** \
Go to beginning of a line: **0** \
Go to the first non-blank character of a line: **^** \
Swap between parenteses(they should be highlighted): **%**

Jump to definition: **gd** \
Open file on which filename the cursor is: **gf**

Commenting: **gc** something, **gcap** - commmenting out a paragraph

Reopen the last insertion done: **gi**

Upper/Lowercase using motion: **gU <motion> gu <motion> gUap** (puts a whole paragraph in caps)

---

### VIM Surround

VIM surround in visual mode: **S** \
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

### VIM Recording (Macros)

VIM recording (also uses the same registers as yank and such, might rewrite it): **q** + letter (qa) \
Play vim recording: **@ + same letter (@a)** \
Append recording: **q + LETTER (qA)** \
Clear recording (register): **q + letter + q (qaq)**

---

### Commands (google it lol)

Write (save file): **:w** \
Write all tabs: **:wa** \
Close: **:q** \
Close (force): **:q!** \
Close all tabs: **:qa** \
Close all tabs (force): **:qa!** \
Write & Close: **:wq** \
Write & Close all tabs: **:wqa** \

Escape character in a command: **\\** \
Last used : command: **@:** \
Repeat the : command used above: **@@**

### Substitute in line (which is a command)

Substitute: **:s/asd/qwe** (substitute all _asd_ for _qwe_ in the line, use **:s/asd/qwe/g** for only the first occurence) \
Delete the occurence: **:s/asd** \
Substitute on all lines: **:%s/asd/qwe** (**%** is the motion)
Substitute within range: (select stuff first) **:'<,'>s/asd/qwe** (the **'<,'>** will be added automatically) \
Repeat the last substitute with its flags: **:&&** \
Repeat the last substitute: **&** \
Use **g** flag to replace only the first occurence (vsvim settings): **:s/asd/qwe/g** \
Use **c** flag to ask for confirmation on each replacement: **:s/asd/qwe/c**

---

### Multi cursor & Visual Selection

Select basic: **v** \
Select lines: **V** \
Select til the end of the line (\_vimrc): **Leader+V**

Put a cursor on the word: **gb** \
Reopen last Visual select: **gv** \
Select to the end of the line: **g$** \
Select to the end of the line (doesn't go to the next line): **g\_**

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

_List of **Visual selection** motions or whatever tf they're called:_
(works for any type of surroundings)

**aw** a word (with white space) \
**iw** inner word \
**aW** a WORD (with white space), all characters to space/line break \
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
**it** between current matching HTML tags \
**at** including current matching HTML tags

To go to Visual block select mode (\_vimrc): **Leader+v** \
Motion commands to create more cursors (and then move them): **Leader+v jjjjj $** (to move to the end of the line with them)

---

### Search

Search: **/qweqweqwe** (searches for qweqweqwe) \
Search backwards: **?asdasdasd** (searches for asdasdasd) \
Next occurence: **n** \
Previous occurence: **n** \
To go to the next occurence and then delete it and do it for the next one as well and so on: **ndw n . n .** \
Select the next occurence of your last search (thru **/** or **?**): **gn** (or **gn**)

Don't hesi to combine it with something else, its just a motion i ssupose

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
