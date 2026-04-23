# Agent Harness

给大模型装上"手脚、眼睛和安全边界"的那一层基础设施。

## 核心定义

**Harness = Tools + Knowledge + Observation + Action + Permissions**

| 组件 | 功能 |
|------|------|
| **Tools** | 工具能力（文件操作、Shell 命令等） |
| **Knowledge** | 知识库 |
| **Observation** | 观察能力 |
| **Action** | 执行能力 |
| **Permissions** | 权限控制 |

## 核心职责

模型负责**思考**，Harness 负责：
- **执行**：调用工具完成实际操作
- **记忆**：保持会话上下文
- **权限控制**：拦截高风险操作
- **多 Agent 协作**：支持子 Agent 创建和任务委托

## 设计理念

> 把"信任模型"变成"信任框架"。模型可以犯错，但框架能兜住。

## 代表产品

| 产品 | 开发方 | 代码规模 |
|------|--------|----------|
| [[Claude Code]] | [[Anthropic]] | 51.2 万行 |
| [[OpenHarness]] | [[香港大学]] | 1.17 万行 |

## OpenHarness vs Claude Code

| 对比项 | Claude Code | OpenHarness |
|--------|-------------|-------------|
| 语言 | TypeScript | Python |
| 代码行数 | 51.2 万行 | 1.17 万行 |
| 工具数 | ~45 个 | 43 个 |
| Skills 兼容 | 原生 | 完全兼容 |
| 插件系统 | 官方 | 兼容 12 个官方插件 |
| 目标用户 | 开发者 | 研究者+开发者 |

## 关键能力

### 1. 权限与安全控制

| 模式 | 行为 |
|------|------|
| Default | 默认询问用户 |
| Auto | 自动执行 |
| Plan Mode | 仅规划，不执行 |

### 2. Skills 系统

- Markdown 格式的技能文件
- 按需加载
- 与 Anthropic 官方完全兼容

### 3. 多 Agent 协同

- 动态创建子 Agent
- 任务委托
- 团队注册
- 后台任务管理

## 相关概念

- [[Harness Engineering]]
- [[Skills系统]]
- [[多Agent协同]]
- [[AI编程辅助]]
- [[上下文记忆]]
