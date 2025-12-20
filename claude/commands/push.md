---
description: 自动暂存、提交并推送代码到当前分支
---

# /push 命令逻辑
请执行以下操作：
1. 运行 `git status` 和 `git diff` 检查当前更改。
2. 自动运行 `git add .` 暂存所有更改。
3. 根据代码变更内容，生成一个符合 Conventional Commits 规范的提交信息（例如 feat: 或 fix:）。
4. 运行 `git commit -m "[生成的提交信息]"`。
5. 运行 `git push` 将代码推送到远程仓库。
