# Vi like key bindings for MacOS

Inspired by vi like editor keybindings, these [Karabiner elements](https://github.com/tekezo/Karabiner-Elements) configurations have more or less saved my life, YMMV!

![demo](https://github.com/tom-power/right-shift-vi-like-karabiner/blob/main/assets/demo.gif)

### Mappings

With **right shift** as modifier unless mentioned..

#### Movement

| From    | To                |
| ------- | ----------------- |
| h/j/k/l | arrow keys        |
| w/b     | word forward/back |
| a/e     | home/end          |
| p/;     | page up/down      |

#### Editing

| From          | To               |
| ------------- | ---------------- |
| s/c/v/x/z/t/i | send with cmd    |
| m             | return           |
| f/d           | delete/backspace |
| space         | tab              |

#### Other

| From      | To                          |
| --------- | --------------------------- |
| cmd+space | escape                      |
| y         | cmd+w (close tab)           |
| u/o       | cmd+shift+\[/] (switch tab) |
| g         | cmd+l (focus address bar)   |

### Extras

Have included some extra mappings I find useful in `src/extras`, install using `--with-extras` below, some descriptions:

| From          | To                          |
| ------------- | --------------------------- |
| \"+left_shift | double quote wrap selection |
| q+left_shift  | single quote                |
| q             | single quote wrap selection |
| i             | ./                          |
| i+left_shift  | ../                         |
| \`            | ~/                          |

### Installation

Install [Karabiner elements](https://github.com/tekezo/Karabiner-Elements), then..

```bash
clone https://github.com/tom-power/right-shift-vi-like-karabiner.git &&
cd ./right-shift-vi-like-karabiner &&
sh/install.sh [--with-extras]
```

Alternatively, import the modifications from Karabiner-Elements site [rules](https://pqrs.org/osx/karabiner/complex_modifications/#right_shift_vi_like).

For both methods the rules will need to be loaded in the Karabiner elements UI:

`Preferences -> Complex Modifications -> Add rule -> right shift vi like -> Enable all`

Suggest to bind capslock to left cmd too:

`Preferences -> Simple Modifications -> Add item -> from -> caps_lock -> to -> left_cmd`
