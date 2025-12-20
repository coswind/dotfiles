# 配置文件同步

这个仓库用于同步常用的配置文件。

## 使用方法

1. 克隆仓库到新环境
2. 运行安装脚本创建符号链接

```bash
./install.sh
```

安装脚本会自动：
- 备份已存在的配置文件（添加时间戳后缀）
- 创建符号链接到项目中的配置文件
- 创建必要的目录结构

## 文件说明

- `claude/CLAUDE.md` - Claude Code 全局配置
- `claude/commands/` - Claude Code 自定义命令
  - `push.md` - 自动提交推送命令
- `kitty/kitty.conf` - Kitty 终端主配置文件
- `kitty/current-theme.conf` - Kitty 终端主题配置

## 备份机制

如果目标位置已存在配置文件（非符号链接），脚本会自动备份：
- 备份格式：`原文件名_bak_YYYYMMDD_HHMMSS`
- 只备份真实文件，不备份已存在的符号链接