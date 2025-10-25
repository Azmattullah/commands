## Nano Editor

Nano is a simple text editor used in the terminal on Linux. It’s great for basic text editing, especially if you're working on a server or don't have access to a GUI. Here’s how you can use it and a list of useful shortcut keys:

### Starting Nano

To start editing a file with nano, open your terminal and type:

```
nano <filename>
```

If the file doesn't exist, it will be created when you save.

### Basic Operations & Shortcut Keys

1. **Navigation:**
    - `Arrow Keys` → Move the cursor around the file (up, down, left, right).
    - `Ctrl + A` → Move to the beginning of the current line.
    - `Ctrl + E` → Move to the end of the current line.
    - `Ctrl + Y` → Move up one page (scroll up).
    - `Ctrl + V` → Move down one page (scroll down).
    - `Ctrl + _` → Go to a specific line number (useful for large files).
2. **Editing Text:**
    - **Typing** → Start typing to insert text.
    - `Backspace` → Delete the character before the cursor.
    - `Ctrl + D` → Delete the character under the cursor.
    - `Ctrl + K` → Cut the current line.
    - `Ctrl + U` → Paste the cut text at the cursor position.
    - `Ctrl + T` → Check spelling.
3. **Searching:**
    - `Ctrl + W` → Search for a text string in the file.
    - `Ctrl + \` → Search and replace (find text and replace with something else).
4. **Saving & Exiting:**
    - `Ctrl + O` → Save the current file (you will be prompted to confirm the file name).
    - `Ctrl + X` → Exit nano (if you have unsaved changes, it will ask if you want to save before exiting).
    - `Ctrl + C` → Cancel the current operation or action (useful when you want to abort something like a search).
5. **Working with Files:**
    - `Ctrl + R` → Open a file (you can read or insert another file into the current one).
    - `Ctrl + G` → Display the help menu (to show a list of all nano commands).
6. **Cut, Copy, and Paste:**
    - `Ctrl + ^` → Start marking text (move the cursor to the start of the text you want to copy/cut, then press `Ctrl + ^` to mark).
    - `Ctrl + K` → Cut the marked text.
    - `Ctrl + U` → Paste the cut text.
7. **Undo/Redo:**
    - `Alt + U` → Undo the last operation (e.g., text delete).
    - `Alt + E` → Redo the last undo operation.
8. **Help:**
    - `Ctrl + G` → Open the help screen with a list of nano commands.

---

### Quick Summary of Common Shortcuts:

| Action | Shortcut |
| --- | --- |
| **Save** | `Ctrl + O` |
| **Exit** | `Ctrl + X` |
| **Cut line** | `Ctrl + K` |
| **Paste line** | `Ctrl + U` |
| **Search** | `Ctrl + W` |
| **Go to line** | `Ctrl + _` |
| **Undo** | `Alt + U` |
| **Redo** | `Alt + E` |
| **Mark text** | `Ctrl + ^` |
| **Help** | `Ctrl + G` |

