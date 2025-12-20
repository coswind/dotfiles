#!/bin/bash

# 备份函数
backup_if_exists() {
    local target="$1"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        local backup="${target}_bak_$(date +%Y%m%d_%H%M%S)"
        echo "备份现有配置: $target -> $backup"
        mv "$target" "$backup"
    fi
}

# 创建必要的目录
mkdir -p ~/.claude
mkdir -p ~/.config

# 备份并创建符号链接
echo "开始安装配置文件..."

# Claude 配置
backup_if_exists ~/.claude/CLAUDE.md
ln -sf ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md

# Claude commands
backup_if_exists ~/.claude/commands
ln -sf ~/dotfiles/claude/commands ~/.claude/commands

# Kitty 配置
backup_if_exists ~/.config/kitty
ln -sf ~/dotfiles/kitty ~/.config/kitty

echo "配置已链接完成"