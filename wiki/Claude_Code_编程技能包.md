---
title: "Andrej Karpathy 技能包：让AI写出大神级代码"
source: "https://mp.weixin.qq.com/s/RB5h5BQ-x3c78JgbjxKBtA"
author: 结构派AI
created: 2026-04-09
tags: [AI编程, Claude, Claude Code, 提示工程, 开发效率, Karpathy]
---

# Andrej Karpathy 技能包：让AI写出大神级代码

> 项目：forrestchang/andrej-karpathy-skills
> GitHub：7.9k Stars
> 发布：2026年4月9日

---

## 背景

### Karpathy 的吐槽

> **"模型会自作主张做出错误假设，然后一路错下去。它们不会管理困惑，不会寻求澄清，该反驳的时候不反驳，100行能解决的问题，要写1000行。"**

基于这一观察，有人将其做成了可执行的 `CLAUDE.md` 行为准则文件。

---

## 核心问题

### AI 写代码的常见糟心事

| 问题 | 表现 |
|------|------|
| 过度发挥 | 改一个导出函数，顺便把整个配置文件重新格式化 |
| 过度抽象 | 只加一个参数，抽出三层抽象 |
| 不问就猜 | 需求有歧义，直接选一个错的理解往下跑 |
| 越界修改 | 动不该动的代码，最后还要返工 |

---

## 四大原则

### 1. Think Before Coding — 不猜，不装懂

**帮你省**：猜错需求返工的半小时

| 规则 |
|------|
| 不确定就问，不要默默选一个解释运行 |
| 有歧义就把几种解释都列出来 |
| 发现更简单的方案就直接说出来 |
| 哪里不懂就直接指出来，停下来澄清 |

### 2. Simplicity First — 能少写，就不多写

**帮你省**：读懂和维护垃圾代码的半小时

| 规则 |
|------|
| 只做需求内的功能，不提前加"灵活性" |
| 单次调用不做抽象，不搞过度工程 |
| 不可能发生的场景，不做错误处理 |
| 200行能写完，绝不写201行 |

### 3. Surgical Changes — 只改你该改的

**帮你省**：还原无辜代码的十几分钟

| 规则 |
|------|
| 不动相邻的代码、注释、格式 |
| 没坏的地方不重构 |
| 原有风格是什么就是什么，哪怕你不喜欢 |
| 发现无关死代码，只提醒不删除 |

### 4. Goal-Driven Execution — 先想清楚什么是"做好了"

**帮你省**：反复沟通"这样对不对"的十分钟

| 规则 |
|------|
| 把模糊需求转成可验证的目标 |
| 修bug先写测试复现，再改 |
| 多步任务要写出每一步验收标准 |
| 目标越具体，AI越少瞎折腾 |

---

## 实测对比

### 之前 vs 之后

| 维度 | 之前的Claude | 之后的Claude |
|------|-------------|---------------|
| 需求理解 | 直接按错的理解跑 | 先确认："我理解的需求是XXX，如果理解错了请纠正我" |
| 代码改动 | 顺便格式化无关代码 | 只改说的那几行，无关代码碰都不碰 |
| 方案选择 | 选复杂方案直接执行 | 发现太复杂会主动说："这里可以更简单，你看行不行" |
| 角色比喻 | "热情过度帮倒忙的实习生" | "手稳不越界的资深工程师" |

### 效果数据

| 指标 | 之前 | 之后 |
|------|------|------|
| Code review一次通过率 | ~40% | ~80%+ |

---

## 使用方法

### 步骤

1. 打开项目根目录
2. 新建文件 `CLAUDE.md`
3. 粘贴以下内容并保存
4. 重启AI编辑器

### CLAUDE.md 内容

```markdown
# CLAUDE.md

Behavioral guidelines to reduce common LLM coding mistakes.

## 1. Think Before Coding
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them.
- If a simpler approach exists, push back.
- If unclear, stop and ask clarification.

## 2. Simplicity First
- No features beyond what was asked.
- No abstractions for single-use code.
- No unrequested "flexibility" or "configurability".
- If 200 lines can be 50, rewrite it.

## 3. Surgical Changes
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing project style.
- Mention dead code but don't delete it unless asked.

## 4. Goal-Driven Execution
- Transform tasks into verifiable success criteria.
- State a brief plan for multi-step tasks with checks.
```

---

## 适用工具

| 工具 | 支持情况 |
|------|----------|
| Claude Code | 原生支持 |
| Cursor | 支持 |
| GPT-4o | 支持 |
| Gemini Code Assist | 支持 |

> 在项目根目录放 `CLAUDE.md` 文件，AI一般会自动读取

---

## 三个反常识结论

### 1. 不是模型越大越好，是行为约束越好

- 不是AI能力不够，而是行为不对
- 太"热情"了，喜欢过度发挥，喜欢帮你做决定
- 给他一套清晰的边界规则，效果比换个更贵的大模型好得多
- **成本是零**

### 2. 不需要提示工程，需要"提示落地"

| 传统提示词 | CLAUDE.md |
|-----------|-----------|
| 在聊天框里写 | 放进代码仓库 |
| 关了窗口就没了 | 项目在就一直生效 |
| 每次都要重新写 | 新人自动继承 |
| 不可复用 | 可git版本管理、可团队共享 |

> **这才是可复用、可传承、可迭代的提示工程**

### 3. AI coding的终极方向：人和AI分工明确

| 角色 | 职责 |
|------|------|
| **人** | 定需求、拍方案、把边界划清楚 |
| **AI** | 按照规则干活，不越界、不多嘴 |

> 最好的工程师不是写代码最多的那个，而是最克制的那个

---

## 核心洞见

### Karpathy 本质上在说

> 模型的问题不在于"不够聪明"，而在于"**不够克制**"

### 这个项目最有意思的地方

- **没有写任何一行功能代码**
- 只是把聪明人已经验证的开发原则，整理出来交给AI
- 但就是这一页纸，解决了无数人每天都在遇到的痛点

### 启示

> **把现有的模型用好，把边界定清楚，比等一个更大的模型，回报快得多。**

---

## 项目信息

| 项目 | 信息 |
|------|------|
| 项目名 | forrestchang/andrej-karpathy-skills |
| Stars | 7.9k+ |
| 文件名 | CLAUDE.md |
| 依赖 | 无需安装任何依赖 |
| 配置 | 无需改任何配置 |

---

## 关联标签

#AI编程 #Claude #提示工程 #开发效率 #最佳实践
