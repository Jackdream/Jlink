---
title: "香港大学开源比Claude Code轻44倍的开源Agent框架，兼容Claude全套技能和插件"
source: "https://mp.weixin.qq.com/s/b8Si_pMZbVWBf_MFAYHwAw?scene=1&click_id=36"
author:
  - "[[小G]]"
published:
created: 2026-04-22
description:
tags:
  - "clippings"
---
小G *2026年4月3日 08:03*

Claude Code被开源后，香港大学推出超轻量级替代方案，它是一个用 Python 实现的轻量级 Agent Harness（Agent 框架），核心代码只有 1.1 万多行，却实现了 Claude Code 中近 98% 的工具能力，同时完全兼容 Anthropic 的 skills 和 claude-code 的插件系统。

## 项目简介

简单来说，Agent Harness 就是给大模型装上“手脚、眼睛和安全边界”的那一层基础设施。模型负责思考，Harness 负责执行、记忆、权限控制和多 Agent 协作。

OpenHarness 的目标很明确：让研究者和开发者能更透明地理解、生产和扩展 Agent 系统，而不是把这些能力封装在黑盒里。

![Harness = Tools + Knowledge + Observation + Action + Permissions](https://mmbiz.qpic.cn/mmbiz_png/ZstIPjm4pIc52VKa9LwCPul4DRL3seMH5tia4OA9TSmVe6NbdF96ia7rHd9ZGiaQdLIh9fCQHrD9FyE8MNbB6nn1CLTUMOREscSMdnEYmBqcmw/640?wx_fmt=png&from=appmsg&watermark=1&tp=webp&wxfrom=5&wx_lazy=1#imgIndex=0)

Harness = Tools + Knowledge + Observation + Action + Permissions

### 它有多轻量？

官方给出了直观对比：

- Claude Code：51.2 万行代码，1884 个文件
- OpenHarness：1.17 万行代码，163 个文件（约轻 44 倍）

语言从 TypeScript 换成 Python，去掉了大量企业级功能（如复杂遥测、OAuth 等），专注于核心 Harness 架构。

## 核心功能解析

**1\. 43 个实用工具**  
涵盖文件读写、Shell 命令执行、网页搜索、代码搜索、Jupyter Notebook 编辑、MCP（Model Context Protocol）协议支持、后台任务管理、定时任务等。每个工具都采用 Pydantic 进行输入校验，并内置权限检查和生命周期钩子。

**2\. 灵活的技能（Skills）系统**  
支持按需加载 Markdown 格式的技能文件，与 Anthropic 官方 skills 完全兼容。只需把.md 文件放入 `~/.openharness/skills/` 目录，Agent 就能在需要时自动调用。已内置代码提交、审查、调试、规划、测试、重构等常用技能。

**3\. 插件兼容能力**  
已测试兼容 12 个 claude-code 官方插件，包括 git 提交工作流、安全检查、代码审查、多 Agent 协同等。开发者也可以轻松开发自己的插件（支持命令、钩子、Agent 三种扩展方式）。

**4\. 细粒度的权限与安全控制**  
提供 Default（默认询问）、Auto（自动执行）、Plan Mode（仅规划不执行）等多种模式。同时支持路径级规则和命令黑名单，能有效平衡安全性和使用便利性。

**5\. 多 Agent 协同能力**  
支持动态创建子 Agent、任务委托、团队注册和后台任务管理，为复杂项目和团队协作场景提供了基础。

**6\. 舒适的终端交互界面**  
基于 React Ink 开发的 TUI 界面，支持命令快速选择、交互式权限确认、会话历史恢复、实时状态展示等功能，使用体验较为友好。

## 快速上手

安装非常简单（需要 Python 3.11+ 和 uv）：

```
git clone https://github.com/HKUDS/OpenHarness.git
cd OpenHarness
uv sync --extra dev
```

配置好 API Key 后，直接运行 `oh` 即可启动。  
同时支持非交互模式，可通过管道或脚本调用，输出支持文本、JSON 和流式 JSON。

## 适合哪些人使用？

- 想深入研究 Agent 架构的开发者
- 需要高度自定义 Agent 工作流的团队
- 喜欢轻量、可控、开源方案的工程师
- 正在尝试构建领域专用 Agent 的研究者

项目目前处于 v0.1.0 早期版本，但测试覆盖较为完善（114 个单元测试 + 多个 E2E 测试套件），架构也已相对完整。

## 项目地址

https://github.com/HKUDS/OpenHarness

扫码加入技术交流群，备注「 **开发语言-城市-昵称** 」

**合作请注明**

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

如果你觉得这篇文章不错，别忘了 **点赞、在看、转发** 给更多需要的小伙伴哦！我们下期再见！

继续滑动看下一个

GitHubStore

向上滑动看下一个