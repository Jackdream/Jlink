---
title: draw.io官方AI工具2026-04-27
type: summary
status: seed
created: 2026-04-27
author: 大模型AI之旅
source: https://mp.weixin.qq.com/s/HkBDrSmvV0NTvH0cDZjRWA
tags:
  - AI工具
  - draw.io
  - MCP
  - 图表生成
---

# 核心观点

draw.io 官方发布开源项目 `drawio-mcp`，让 AI 直接生成 draw.io 图表，说一句话图就出来。GitHub 3200+ Star。

## 画图的痛点

- 拖拽、对齐、调色占用注意力，打断业务逻辑思考
- 改需求时整个图需要重新排版
- 99% 财富 500 强公司都在用 draw.io

## MCP 协议

- 全称 Model Context Protocol
- Anthropic 推出的标准，定义 AI 如何调用外部工具
- AI 从"聊天机器人"变成"能干活的助手"

# 四种接入方式

| 方式 | 场景 | 安装 | 特点 |
|------|------|------|------|
| **方式一** | Claude.ai 网页 | 添加远程服务器地址 | 图表嵌入聊天窗口 |
| **方式二** | Claude Desktop | `npx @drawio/mcp` | 浏览器打开编辑器 |
| **方式三** | Claude Code | 复制 SKILL.md | 本地推荐，零外部依赖 |
| **方式四** | Claude.ai 项目 | 粘贴项目指令 | 零安装 |

**方式三（推荐）** 安装命令：
```bash
mkdir -p ~/.claude/skills/drawio
cp drawio/SKILL.md ~/.claude/skills/drawio/SKILL.md
```
使用：`/drawio create a flowchart for user login`

# 导出格式

| 格式 | 扩展名 | 说明 |
|------|--------|------|
| 默认 | .drawio | 原生 XML，可直接编辑 |
| PNG | .drawio.png | 内嵌 XML，可二次编辑 |
| SVG | .drawio.svg | 矢量图，内嵌 XML |
| PDF | .drawio.pdf | 可打印，内嵌 XML |

**关键特性**：导出文件内嵌原始 XML，拖回 draw.io 仍可编辑。

# 10000+ 形状库

- 云服务：AWS、Azure、GCP
- 容器：Kubernetes
- 行业标准：UML、BPMN、P&ID、电气图、思科网络图
- AI 先调用 `search_shapes` 找到图标样式，确保图标准确

# 工作方式转变

```
以前：想清楚 → 打开工具 → 一个节点一个节点摆
现在：说一句话 → 图出来 → 不满意再改
```

- 注意力保持在业务逻辑上
- 画图变成自然对话过程

# 关键洞见

- MCP 协议让 AI 直接操作工具，不只是生成文本
- 体验变化：复制粘贴 → 直接生成可编辑文件
- drawio-mcp 是官方维护，更新积极

# 项目信息

- GitHub：https://github.com/jgraph/drawio-mcp
- Stars：3200+
- 维护方：draw.io 官方团队

# 关联关系

- 作者：[[大模型AI之旅]]
- 相关概念：[[MCP协议]], [[Claude-Code-Skill]]
- 相关来源：[[draw.io官方AI工具2026-04-27]]
