# OpenHarness

香港大学开源的轻量级 Agent Harness 框架。

## 基本信息

| 属性 | 值 |
|------|-----|
| **开发方** | 香港大学 (HKUDS) |
| **语言** | Python |
| **代码规模** | 1.17 万行，163 个文件 |
| **发布时间** | 2026年4月 |
| **当前版本** | v0.1.0 |
| **开源地址** | https://github.com/HKUDS/OpenHarness |

## 核心定位

> Agent Harness 就是给大模型装上"手脚、眼睛和安全边界"的那一层基础设施。

OpenHarness 的目标：**让研究者和开发者能更透明地理解、生产和扩展 Agent 系统**，而不是把这些能力封装在黑盒里。

## 轻量对比

| 指标 | Claude Code | OpenHarness | 比例 |
|------|-------------|--------------|------|
| 代码行数 | 51.2 万行 | 1.17 万行 | **44:1** |
| 文件数 | 1884 个 | 163 个 | **11.6:1** |

## 核心功能

| 功能 | 说明 |
|------|------|
| 43 个工具 | 文件读写、Shell 命令、网页搜索、MCP 协议支持等 |
| Skills 系统 | 兼容 Anthropic 官方技能文件 |
| 插件兼容 | 支持 12 个 claude-code 官方插件 |
| 权限控制 | Default/Auto/Plan Mode 三种模式 |
| 多 Agent | 子 Agent 创建、任务委托、团队管理 |
| TUI 界面 | React Ink 开发的交互界面 |

## 技术特点

- **Python 实现**：相比 TypeScript 更易读、易改
- **轻量化**：去掉企业级功能（复杂遥测、OAuth），专注核心架构
- **高兼容性**：完全兼容 Anthropic 的 skills 和插件系统
- **Pydantic 校验**：所有工具输入都有严格校验
- **完善测试**：114 个单元测试 + E2E 测试套件

## 安装使用

```bash
git clone https://github.com/HKUDS/OpenHarness.git
cd OpenHarness
uv sync --extra dev
# 配置 API Key 后运行
oh
```

## 相关实体

- [[Claude Code]] - 对标的开源产品
- [[Anthropic]] - Claude Code 开发商
- [[香港大学]] - 开发方

## 相关概念

- [[Agent Harness]]
- [[Harness Engineering]]
- [[Skills系统]]
- [[多Agent协同]]
