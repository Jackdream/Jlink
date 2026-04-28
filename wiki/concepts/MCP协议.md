---
title: MCP协议
type: concept
status: seed
created: 2026-04-27
tags:
  - AI
  - 协议
  - Anthropic
---

# 定义

MCP（Model Context Protocol）是 Anthropic 推出的标准协议，定义了 AI 模型如何调用外部工具。

# 核心价值

| 以前 | 现在 |
|------|------|
| AI 只生成文本 | AI 直接操作真实工具 |
| 用户复制粘贴 | AI 生成可编辑文件 |
| 聊天机器人 | 能干活的助手 |

# 应用场景

- draw.io 图表生成（drawio-mcp）
- Claude Code 技能扩展
- AI 工具生态集成

# 技术架构

```
┌─────────────┐     MCP      ┌─────────────┐
│  AI 模型    │◄────────────►│  外部工具   │
│  (Claude)   │   标准化接口  │  (draw.io)  │
└─────────────┘              └─────────────┘
```

# 关联关系

- 相关概念：[[Claude-Code-Skill]], [[Agent-Harness]]
- 相关实体：[[大模型AI之旅]]
- 相关来源：[[draw.io官方AI工具2026-04-27]]

# 与 Skill 的关系

MCP 和 Claude Code Skill 是互补的：
- **Skill**：定义 AI 如何"说"和"做判断"
- **MCP**：定义 AI 如何"调用外部工具"
- 两者结合实现"薄harness厚skills"架构
