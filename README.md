# yyvim
```
                     _
 _   _ _   _  __   _(_)_ __ ___
| | | | | | | \ \ / / | '_ ` _ \
| |_| | |_| |  \ V /| | | | | | |
 \__, |\__, |   \_/ |_|_| |_| |_|
 |___/ |___/
```

为python、go、js的插件配置, 安装简单、易用、可二次配置.

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
输入:PlugInstall
```

### step6 golang处理(如果不需要go, 可忽略)
```bash
// 注: 要求go 大于1.11版本
go env -w GO111MODULE=on
go env -w GOPROXY="https://goproxy.io,direct"

go get -u github.com/jstemmer/gotags

vim ~/.vimrc
输入:GoInstallBinaries
注: 安装需要几分钟, 需等待相关插件安装完成.
```

### 效果

![yyvim][screenshot]

### 插件说明

| 插件                              | 说明                  |
| [dracula / **vim主题**][color]    | dracule 主题配色      |
| [LeaderF / **快速搜索**][color]   | 文件快速搜索          |
| [tagbar / **快速导航**][color]    | 大纲式快速导航        |
| [ack / **全局搜索**][color]       | 全局搜索              |


### 快捷键映射

| 快捷键/命令                       | 说明                  |
| `<Ctrl> J`                        | 跳转到下面的窗口      |
| `<Ctrl> K`                        | 跳转到上面的窗口      |
| `<Ctrl> H`                        | 跳转到左侧的窗口      |
| `<Ctrl> L`                        | 跳转到右侧的窗口      |
| `,f`                              | 快速搜索文件          |
