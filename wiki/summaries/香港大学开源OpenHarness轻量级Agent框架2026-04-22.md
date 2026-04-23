---
title: "香港大学开源OpenHarness轻量级Agent框架"
source: "https://mp.weixin.qq.com/s/b8Si_pMZbVWBf_MFAYHwAw"
author:
  - "[[小G]]"
published:
created: 2026-04-22
description: "香港大学推出OpenHarness，比Claude Code轻44倍的开源Agent框架"
tags:
  - "clippings"
  - "Agent"
  - "开源"
---

## 来源信息

- **作者**: [[小G]]
- **日期**: 2026年4月3日 08:03
- **原始链接**: https://mp.weixin.qq.com/s/b8Si_pMZbVWBf_MFAYHwAw

## 核心事件

香港大学推出 **OpenHarness**，一个比 [[Claude Code]] 轻 **44 倍**的开源 [[Agent Harness]] 框架。

## 项目概述

OpenHarness 是一个用 **Python** 实现的轻量级 [[Agent Harness]]，核心代码只有 **1.1 万多行**，却实现了 Claude Code 中近 **98%** 的工具能力，同时完全兼容 Anthropic 的 [[Skills系统]] 和 claude-code 的插件系统。

## 核心定位

> Agent Harness 就是给大模型装上"手脚、眼睛和安全边界"的那一层基础设施。

| 组件 | 功能 |
|------|------|
| **Tools** | 工具能力 |
| **Knowledge** | 知识库 |
| **Observation** | 观察能力 |
| **Action** | 执行能力 |
| **Permissions** | 权限控制 |

模型负责思考，Harness 负责执行、记忆、权限控制和多 Agent 协作。

## 轻量对比

| 指标 | Claude Code | OpenHarness |
|------|-------------|-------------|
| 代码行数 | 51.2 万行 | 1.17 万行 |
| 文件数 | 1884 个 | 163 个 |
| 语言 | TypeScript | Python |
| **轻量倍数** | - | **约 44 倍** |

## 核心功能

### 1. 43 个实用工具

涵盖文件读写、Shell 命令执行、网页搜索、代码搜索、Jupyter Notebook 编辑、MCP 协议支持、后台任务管理、定时任务等。

- Pydantic 输入校验
- 内置权限检查
- 生命周期钩子

### 2. 灵活的 Skills 系统

支持按需加载 Markdown 格式的技能文件，与 Anthropic 官方 skills 完全兼容。

- 放入 `~/.openharness/skills/` 目录即可
- 内置代码提交、审查、调试、规划、测试、重构等常用技能

### 3. 插件兼容能力

已测试兼容 **12 个** claude-code 官方插件：
- git 提交工作流
- 安全检查
- 代码审查
- 多 Agent 协同

支持命令、钩子、Agent 三种扩展方式。

### 4. 细粒度权限与安全控制

| 模式 | 说明 |
|------|------|
| Default | 默认询问 |
| Auto | 自动执行 |
| Plan Mode | 仅规划不执行 |

支持路径级规则和命令黑名单。

### 5. 多 Agent 协同能力

- 动态创建子 Agent
- 任务委托
- 团队注册
- 后台任务管理

### 6. 舒适的终端交互界面

基于 React Ink 开发的 TUI 界面：
- 命令快速选择
- 交互式权限确认
- 会话历史恢复
- 实时状态展示

## 安装使用

```bash
git clone https://github.com/HKUDS/OpenHarness.git
cd OpenHarness
uv sync --extra dev
```

配置 API Key 后，运行 `oh` 即可启动。

## 适用场景

- 想深入研究 Agent 架构的开发者
- 需要高度自定义 Agent 工作流的团队
- 喜欢轻量、可控、开源方案的工程师
- 正在尝试构建领域专用 Agent 的研究者

## 技术状态

- 版本：v0.1.0（早期版本）
- 测试：114 个单元测试 + 多个 E2E 测试套件
- 架构：相对完整

## 相关实体

- [[OpenHarness]] - 开源项目
- [[Claude Code]] - 对标产品
- [[Anthropic]] - Claude Code 开发商
- [[香港大学]] - OpenHarness 开发方

## 相关概念

- [[Agent Harness]]
- [[Harness Engineering]]
- [[Skills系统]]
- [[多Agent协同]]
- [[AI编程辅助]]
