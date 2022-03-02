# Vi like key bindings for MacOS using right shift

[Karabiner elements](https://github.com/tekezo/Karabiner-Elements) configuration for vi like keymappings on macOS Seirra.

### Mappings

all with right shift pressed..

##### Movement/navigation
- h/j/k/l -> mapped to arrow keys
- w/b -> word forward/back
- a/e -> home/end
- ;/p -> pageup/down
- u/o -> cmd+shift+[/] (tab switch)
- +command/option/left shift/control -> apply to above

##### Editing
- s/c/v/x/z/t sent with command modifier
- m -> return
- f/d -> delete/backspace
- space -> tab
- space+left shift -> shift tab
- q/2 -> single/double quotes
- 3 -> hash
- -/= -> ->/=>
- r -> f6+shift (rename)

##### Other
- command+space -> escape
- command+enter -> command+space (spotlight default)
- g -> search focus
- y -> cmd+w (close tab)
- g -> cmd+l (address bar)
- h/l -> cmd+[/] (history back/forward)

### Installation

```
clone https://github.com/tom-power/right-shift-vi-like-karabiner.git
cd right-shift-vi-like-karabiner
./install.sh
```

Alternatively install [Karabiner elements](https://pqrs.org/osx/karabiner/) then import the [rules](https://pqrs.org/osx/karabiner/complex_modifications/#right_shift_vi_like) from it's site.

For both methods the rules will need to be loaded in the Karabiner elements UI:

```"Preferences" -> "Complex Modifications" -> "Add rule" -> "right shift vi like" -> "Enable all"```

Is better with capslock bound to left command:

```"Preferences" -> "Simple Modifications" -> "Add item" -> "from" -> "caps_lock" -> "to" -> "left_command"```