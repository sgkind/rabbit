
## Short cut

### 通用
| 模式 | 快捷键 |  功能  |
| ---- | ------ | ------ |
|  n  | Ctrl+^ | 返回上一buffer|
|  n  | Ctrl+u | 光标上移9行 |
|  n  | Ctrl+d | 光标下移9行 |
|  v  |   <    | 缩进代码    |
|  v  |   >    | 缩进代码    |

分屏相关
| 模式| 快捷键 |   功能      |
| ---- | ------ | ---------- |
|  n  |   sv   | 水平分屏 |
|  n  |   sh   | 垂直分屏 |
|  n  |   sc   | 关闭当前分屏 |
|  n  |   so   | 关闭其他所有分屏 |
|  n  |   s>   | 增大当前分屏 |
|  n  |   s<   | 缩小当前分屏 |
|  n  |   s=   | 均分当前分屏 |
|  n  |   sj   | 垂直方向扩大当前分屏 |
|  n  |   sk   | 垂直方向缩小当前分屏 |
|  n  |<leader>h| 跳到左边分屏 |
|  n  |<leader>j| 跳到上边分屏 |
|  n  |<leader>k| 跳到下边分屏 |
|  n  |<leader>l| 跳到右边分屏 |

### 插件
目录树
| 模式 | 快捷键 | 功能 |
| ---- | ------ | ----- |
|  n   |<leader>e| 开启/关闭目录 |
|  n   |<leader>o| 激活目录    |
|  n   |<leader>w| 跳转到目录当前文件处|
|  n   |<leader>c| Collapse目录|

* o 打开关闭文件夹
* a 创建文件
* r 重命名
* x 剪切
* c 拷贝
* p 粘贴
* d 删除

telescope
| 模式 | 快捷键 | 功能 |
| ---- | ------ | -----|
|  n   |<leader>ff| 查找文件 |
|  n   |<leader>fg| 全文搜索 |
|  n   |<leader>fb| buffer搜索 |
|  n   |<leader>fh| 帮助搜索 |

nvim-cmp
| 快捷键 | 功能 |
| ------ | ---- |
| Ctrl+k | 选择上一个 |
| Ctrl+j | 选择下一个 |
| alt+.  | 确定选择   |
| alt+,  | 取消选择   |
| enter  | 确定选择   |
| Ctrl+u | 文档上移4行|
| Ctrl+d | 文档下移4行|

## 命令
* `:ls` 列出所有buffers
* `:bn` 切换到n号buffer

## Plugins
### Plug
* vim-plug

### Packer
* packer
* impatient
* nvim-lspconfig
* rust-tools
* nvim-tree
* nvim-web-devicons
* nvim-treesitter
* indent-blankline
* telescope
* cmp-nvim-lsp
* lualine

## 依赖
### clangd
#### required by
lsp-config
#### 安装
```
sudo apt install clangd
```

### ripgrep
#### required by
telescope
#### 安装
```
sudo apt install ripgrep
```

### sharkdp/fd
#### required by
tesescope
#### 安装
```
sudo apt install fd-find
```
