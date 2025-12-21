# 对话要求
- 总是使用中文回复

# 代码开发原则

## 设计原则
- KISS (Keep It Simple, Stupid): Simplicity should be a key goal in design. Choose straightforward solutions over complex ones whenever possible. Simple solutions are easier to understand, maintain, and debug.
- YAGNI (You Aren't Gonna Need It): Avoid building functionality on speculation. Implement features only when they are needed, not when you anticipate they might be useful in the future.

## 错误处理
- 避免所有不必要的异常处理；优先让错误自然抛出（fail fast）
- 禁止用 try-catch 隐藏或吞掉异常

## 测试与优化限制
- 禁止生成任何单元测试、测试代码或测试用例；除非明确要求
- 避免过早优化和过度优化；除非明确指出性能瓶颈
