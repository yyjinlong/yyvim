# yyvim
```
                     _
 _   _ _   _  __   _(_)_ __ ___
| | | | | | | \ \ / / | '_ ` _ \
| |_| | |_| |  \ V /| | | | | | |
 \__, |\__, |   \_/ |_|_| |_| |_|
 |___/ |___/
```

适合python、go、vue开发者的vim插件配置。安装简单、易用、可进行二次配置。

## 安装

### step1 安装ctags
mac:
```bash
brew install ctags
```

centos:
```bash
yum install -y ctags
```

### Step2 下载vundle
```bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

### Step3 下载yyvim
```bash
git clone https://github.com/yyjinlong/yyvim.git ~/.yyvim
```

### step4 创建软连
```bash
ln -s ~/.yyvim/vimrc ~/.vimrc
```

### step5 安装插件
```bash
vim ~/.vimrc
输入:BundleInstall

如果新增插件
输入:PluginInstall
```

### step6 vim-8 安装gruvbox主题
```bash

// vim8版本解决:
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

// 如果不好使，则使用如下主题(适用于vim-8的gruvbox主题)
Plugin 'habamax/vim-gruvbit'
set termguicolors
colorscheme gruvbit

地址: https://github.com/habamax/vim-gruvbit
```

### step7 golang处理(如果不需要go, 可忽略)
```bash
// 注: 要求go 大于1.11版本
go env -w GO111MODULE=on
go env -w GOPROXY="https://goproxy.io,direct"

# step1: 安装gotags
go get -u github.com/jstemmer/gotags

vim ~/.vimrc
输入:GoInstallBinaries
注: 安装需要几分钟, 需等待相关插件安装完成.

注: step2: 安装godef
go get -v github.com/rogpeppe/godef

vim ~/.vim/bundle/vim-godef/plugin/godef.vim
添加:
autocmd FileType go nnoremap <buffer> <C-]> :call GodefUnderCursor()<cr>

注: 确保GOBIN放入到了GOPATH目录下。export PATH=$GOBIN:$PATH
```

### 效果

![yyvim](https://github.com/yyjinlong/yyvim/blob/master/yyvim.png)

### 插件说明

| 插件                              | 说明                              |
| :---                              | ----                              |
| [gruvbox / **vim主题**]           | gruvbox 主题配色                  |
| [LeaderF / **快速搜索**]          | 文件快速搜索                      |
| [tagbar / **快速导航**]           | 大纲式快速导航                    |
| [ack / **全局搜索**]              | 全局搜索                          |
| [nerdcommenter/ **快速注释**]     | 快速注释                          |
| [vim-godef/ **代码跳转**]         | golang代码跳转                    |
| [vim-gitgutter/ **git检查**]      | git代码侧边栏检查                 |


### 快捷键映射

| 快捷键/命令                       | 说明                              |
| :---                              | ----                              |
| `<Ctrl> J`                        | 跳转到下面的窗口                  |
| `<Ctrl> K`                        | 跳转到上面的窗口                  |
| `<Ctrl> H`                        | 跳转到左侧的窗口                  |
| `<Ctrl> L`                        | 跳转到右侧的窗口                  |
| `,f`                              | 快速搜索文件(python, js)          |
| `,b`                              | 快速搜索文件(python, js)          |
| `,cc`                             | 快速注释代码                      |
| `,cu`                             | 快速解开代码                      |
| `<Ctrl> ]`                        | 跳转到对应go的代码                |
