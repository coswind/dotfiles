---
description: 使用 uv 运行 Ruff 和 Basedpyright 进行全量代码检查，并自动修复 Lint 和类型错误
---

# /lint 命令逻辑
请严格按照以下步骤执行操作：

1. **Ruff 自动格式化与修复**
   - 运行 `uv run ruff format .` 进行代码格式化。
   - 运行 `uv run ruff check . --fix` 自动修复所有可自动处理的 Lint 错误。

2. **Basedpyright 类型检查**
   - 运行 `uv run basedpyright` 获取当前的类型错误报告。

3. **智能错误修复**
   - 如果步骤 2 输出了错误信息：
     - 请逐个分析报错的文件和原因。
     - 根据 `pyproject.toml` 中的 basedpyright 规则，修改代码以修复这些类型错误。
     - **策略**：如果是缺少类型注解，请补全；如果是类型不匹配，请修正逻辑或添加断言/类型转换。
   - 如果错误数量过多（超过 10 个），请优先修复最严重的错误或核心模块的错误，并告知用户剩余情况。

4. **验证修复**
   - 如果进行了代码修改，请再次运行 `uv run basedpyright` 验证错误是否已消除。
