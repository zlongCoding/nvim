### neovim打造自己的IDE
完成之后的配置效果如下：

![预览](./images.gif)

卸载原来下载的依赖
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

### 初始化依赖

Packer.vim
```
-- Regenerate compiled loader file
:PackerCompile

-- Remove any disabled or unused plugins
:PackerClean

-- Clean, then install missing plugins
:PackerInstall

-- Clean, then update and install plugins
:PackerUpdate

-- Perform `PackerUpdate` and then `PackerCompile`
:PackerSync

-- Loads opt plugin immediately
:PackerLoad completion-nvim ale
```
一般我们使用`:PackerSync`


### 快捷键
| 快捷键   |  功能  |
|--------------- | --------------- |
|  leader+1  |  打开/关闭侧边栏  |
| leader+2   |   光标定位到侧边栏 |
| leader+3   |   打开代码集合 |
| leader+]   |  格式化代码 |

