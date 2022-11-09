
# fcitx5 input Switch

> 使用 vim 输入中文时的一大痛点就是频繁的输入法切换, emacs 中有比较成熟的方案, pyim 还可以将中文分词与 vim 结合
> vim 中也有许多解决方案, 这个插件只是提供一种普遍的切换方式, 在一定限度内节省切换输入法的操作

## Install
**requirements** :
- neovim > 0.5.0
  - [Packer](https://github.com/wbthomason/packer.nvim.git)
- fcitx5 (require fcitx5-remote)

### Packer
```lua
  use {
    'welandx/fcitx5-switch.nvim',
    opt = true,
    ft = "markdown",
	event = "BufRead",
    config = function ()
      require('fcitx5-switch').Leave_enter_cmd()
    end
  }
```

### Straight
download
```shell
git clone https://github.com/welandx/fcitx5-switch.nivm ~/.config/nvim/lua/fcitx5-switch
```
add this to **init.lua**
```lua
require('fcitx5-switch').Leave_enter_cmd()
```

## Credits
- it's almost a lua fork of [vim-awheel_fcitx](https://github.com/xiaolulua/vim-awheel_fcitx)
- [ayamir](https://github.com/ayamir)


