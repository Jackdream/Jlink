---
title: Claude-Code-Skill
type: concept
status: seed
created: 2026-04-27
tags:
  - AI
  - Claude
  - 技能
---

# 定义

Claude Code Skill 是 Claude Code 的技能扩展机制，通过 SKILL.md 文件定义 AI 的行为模式和工作流程。

# 核心特点

- **轻量级**：只需一个 SKILL.md 文件
- **可共享**：可以复制到其他项目或全局安装
- **零依赖**：不依赖外部服务
- **可控**：用户完全掌控代码

# 安装方式

**全局安装（所有项目可用）**：
```bash
mkdir -p ~/.claude/skills/drawio
cp drawio/SKILL.md ~/.claude/skills/drawio/SKILL.md
```

**项目级安装**：
```bash
mkdir -p .claude/skills/drawio
cp drawio/SKILL.md .claude/skills/drawio/SKILL.md
```

# 使用方式

在 Claude Code 中使用斜杠命令：
```
/drawio create a flowchart for user login
/drawio sequence diagram for API auth
/drawio png class diagram for the models in src/
```

# 与 MCP 的关系

| 维度 | Skill | MCP |
|------|-------|-----|
| **定位** | 行为定义 | 工具调用 |
| **复杂度** | ~100行 MD | ~200行 CLI |
| **用途** | 判断逻辑 | 外部操作 |
| **架构角色** | 厚（90%价值） | 薄（底层连接） |

# 典型案例

- drawio skill：让 Claude Code 生成 draw.io 图表
- 符合"薄harness厚skills"理念

# 关联关系

- 相关概念：[[MCP协议]], [[Agent-Harness]], [[薄harness厚skills]]
- 相关实体：[[大模型AI之旅]]
- 相关来源：[[draw.io官方AI工具2026-04-27]], [[薄harness厚skills2026-04-27]]
