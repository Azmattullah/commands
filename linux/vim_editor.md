
## Vim Editor

Vim (Vi IMproved) is a powerful text editor available on most Linux systems. It has a steep learning curve, but it's incredibly efficient once you get the hang of it. Unlike simpler editors like Nano, Vim operates in different modes, which you need to understand to make the most of it.

### Vim Modes:

1. **Normal Mode** (default mode): You can navigate and manipulate text (move around, delete, copy, etc.).
2. **Insert Mode**: Where you actually type text.
3. **Visual Mode**: Used to select text for cutting, copying, or formatting.
4. **Command-Line Mode**: Used to save, exit, and execute other commands.

### Opening a File:

To open a file with Vim, use:

```
vim <filename>
```

If the file doesn't exist, Vim will create it when you save.

### Switching Between Modes:

- **Normal Mode** (default): Press `Esc` to ensure you're in Normal mode.
- **Insert Mode**: Press `i` to start inserting text at the current cursor position. You can also use `I` to insert at the beginning of the line, `a` to append after the cursor, or `A` to append at the end of the line.
- **Visual Mode**: Press `v` to start selecting text. Press `V` for line-wise selection.
- **Command-Line Mode**: Press `:` to enter command-line mode.

### Basic Navigation (in Normal Mode):

- **Move cursor**:
    - `h` → Left
    - `j` → Down
    - `k` → Up
    - `l` → Right
- **Move by word**:
    - `w` → Move forward by a word
    - `b` → Move backward by a word
- **Move by line**:
    - `0` → Move to the beginning of the line
    - `$` → Move to the end of the line
    - `gg` → Move to the beginning of the document
    - `G` → Move to the end of the document
    - `nG` → Move to line number n (e.g., `10G` for line 10)

### Editing Text:

- **Insert Text**:
    - `i` → Insert before the cursor
    - `I` → Insert at the beginning of the line
    - `a` → Append after the cursor
    - `A` → Append at the end of the line
- **Delete**:
    - `x` → Delete the character under the cursor
    - `dd` → Delete the current line
    - `dw` → Delete the current word
    - `D` → Delete from the cursor to the end of the line
- **Undo/Redo**:
    - `u` → Undo the last operation
    - `Ctrl + r` → Redo the last undone operation

### Copy, Cut, and Paste (in Normal Mode):

- **Copy (yank)**:
    - `yy` → Copy (yank) the current line
    - `yw` → Yank a word
    - `y$` → Yank to the end of the line
- **Cut (delete)**:
    - `dd` → Cut the current line
    - `dw` → Cut a word
    - `d$` → Cut to the end of the line
- **Paste**:
    - `p` → Paste after the cursor
    - `P` → Paste before the cursor

### Searching:

- **Find**:
    - `/text` → Search forward for "text"
    - `?text` → Search backward for "text"
    - `n` → Jump to the next occurrence of the search term
    - `N` → Jump to the previous occurrence of the search term

### Saving and Exiting:

- **Save**:
    - `:w` → Save the file (without exiting)
- **Exit**:
    - `:q` → Quit Vim (if no changes were made)
    - `:q!` → Quit without saving changes
    - `:wq` → Save and quit
    - `ZZ` → Save and quit (shortcut)

### Visual Mode (for text selection):

- **Visual Selection**:
    - `v` → Start visual mode (move the cursor to select text)
    - `V` → Start visual line mode (select entire lines)
    - `Ctrl + v` → Start visual block mode (select a rectangular block of text)
- **Copy and Paste in Visual Mode**:
    - `y` → Copy the selected text
    - `d` → Cut the selected text
    - `p` → Paste the copied/cut text after the cursor
    - `P` → Paste the copied/cut text before the cursor

### Other Useful Commands:

- **Command-Line Mode**:
    - `:set number` → Display line numbers
    - `:set nonumber` → Hide line numbers
    - `:split` → Split the screen horizontally to open another file
    - `:vsplit` → Split the screen vertically to open another file
    - `:e <filename>` → Open another file
- **Redo / Undo**:
    - `u` → Undo
    - `Ctrl + r` → Redo
- **Replace text**:
    - `:%s/old/new/g` → Replace all instances of "old" with "new" in the file

### Quick Summary of Common Vim Commands:

| Action | Command |
| --- | --- |
| **Save** | `:w` |
| **Quit** | `:q` |
| **Quit without saving** | `:q!` |
| **Save and quit** | `:wq` or `ZZ` |
| **Undo** | `u` |
| **Redo** | `Ctrl + r` |
| **Cut line** | `dd` |
| **Copy line** | `yy` |
| **Paste** | `p` |
| **Search forward** | `/text` |
| **Search backward** | `?text` |
| **Go to line** | `nG` (e.g., `10G`) |
| **Delete word** | `dw` |
| **Insert before cursor** | `i` |
| **Insert after cursor** | `a` |
| **Insert at the beginning** | `I` |
| **Insert at the end** | `A` |

### Tips for Vim:

- Always remember to be in **Normal mode** (press `Esc` to ensure you are) when you want to navigate and edit.
- When in **Insert mode**, press `Esc` to go back to Normal mode.
- Practice using Vim's commands, as they may feel unnatural at first, but once you learn them, they greatly enhance your efficiency.
