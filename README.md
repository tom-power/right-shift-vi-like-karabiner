# Vi like key bindings for MacOS

Inspired by vi like editor keybindings, these [Karabiner elements](https://github.com/tekezo/Karabiner-Elements) configurations have more or less saved my life, YMMV!

### Mappings

With **right shift** as modifier unless mentioned..

#### Movement/navigation

| From                | To                          |
| ------------------- | --------------------------- |
| h/j/k/l             | arrow keys                  |
| w/b                 | word forward/back           |
| a/e                 | home/end                    |
| p/;                 | page up/down                |
| u/o                 | cmd+shift+\[/] (tab switch) |
| +cmd/shift/opt/ctrl | send with any of above      |

#### Editing

| From             | To               |
| ---------------- | ---------------- |
| s/c/v/x/z/t/i    | send with cmd    |
| m                | return           |
| f/d              | delete/backspace |
| space            | tab              |
| space+left shift | shift tab        |

#### Other

| From                       | To                        |
| -------------------------- | ------------------------- |
| y                          | cmd+w (close)             |
| g                          | cmd+l (focus address bar) |
| cmd+space (no right_shift) | escape                    |
| cmd+enter (no right_shift) | cmd+space                 |

### Extras

Have included some extra mappings I find useful in `src/extras`, install using `--with-extras` below, some descriptions:

| From                    | To                                |
| ----------------------- | --------------------------------- |
| left_shift+double_quote | wrap selection in double quotes   |
| q                       | single quote                      |
| i                       | ./                                |
| left_shift+i            | ../                               |
| \`                      | ~/                                |
| cmd+option+h/l          | cmd+[/] \(back forward in history |

### Installation

Install [Karabiner elements](https://github.com/tekezo/Karabiner-Elements), then..

```bash
clone https://github.com/tom-power/right-shift-vi-like-karabiner.git &&
cd ./right-shift-vi-like-karabiner &&
./install.sh [--with-extras]
```

Alternatively, import the modifications from Karabiner-Elements site [rules](https://pqrs.org/osx/karabiner/complex_modifications/#right_shift_vi_like).

For both methods the rules will need to be loaded in the Karabiner elements UI:

`Preferences -> Complex Modifications -> Add rule -> right shift vi like -> Enable all`

Suggest to bind capslock to left cmd too:

`Preferences -> Simple Modifications -> Add item -> from -> caps_lock -> to -> left_cmd`
