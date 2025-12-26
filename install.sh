#!/bin/bash

set -e  # 遇到错误立即退出

# 获取脚本所在目录的绝对路径
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 备份函数
backup_if_exists() {
    local target="$1"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        local backup="${target}_bak_$(date +%Y%m%d_%H%M%S)"
        echo "备份现有配置: $target -> $backup"
        mv "$target" "$backup" || {
            echo "错误: 备份失败"
            return 1
        }
    elif [ -L "$target" ]; then
        echo "移除旧符号链接: $target"
        rm "$target"
    fi
}

# 创建必要的目录
echo "创建必要的目录..."
mkdir -p ~/.claude
mkdir -p ~/.config

# 备份并创建符号链接
echo "开始安装配置文件..."

# Claude 配置
backup_if_exists ~/.claude/CLAUDE.md
ln -sf "$SCRIPT_DIR/claude/CLAUDE.md" ~/.claude/CLAUDE.md
echo "✓ Claude 配置已链接"

# Claude commands
backup_if_exists ~/.claude/commands
ln -sf "$SCRIPT_DIR/claude/commands" ~/.claude/commands
echo "✓ Claude commands 已链接"

# Kitty 配置
backup_if_exists ~/.config/kitty
ln -sf "$SCRIPT_DIR/kitty" ~/.config/kitty
echo "✓ Kitty 配置已链接"

# Wezterm 配置
backup_if_exists ~/.config/wezterm
ln -sf "$SCRIPT_DIR/wezterm" ~/.config/wezterm
echo "✓ Wezterm 配置已链接"

echo "配置已链接完成"
