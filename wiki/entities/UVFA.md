---
title: UVFA
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [Universal Value Function Approximators, 通用值函数逼近器]
tags: [强化学习, Goal, 值函数, Goal-conditioned]
---

# UVFA (Universal Value Function Approximators)

## 基本信息

- 类型：Goal-conditioned问题的值函数扩展
- 核心贡献：将值函数扩展到目标空间

## 核心创新

### 值函数扩展

- 原值函数：V(s), Q(s,a)
- 扩展后：V(s,g), Q(s,g,a)
- 目标空间即为状态空间
- 目标 = 达到某一特定状态

### 奖励机制

- 当目标实现时奖励为1
- 否则为0

## 网络结构：Two-stream

```
┌─────────────────────────────────┐
│         ϕ(s) - 状态嵌入          │
│              ↓                   │
│              h ← 点乘            │
│              ↓                   │
│         V(s,g) 或 Q(s,g,a)      │
│              ↑                   │
│              h ← 点乘            │
│              ↓                   │
│         ψ(g) - 目标嵌入          │
└─────────────────────────────────┘
```

- ϕ 和 ψ 均为神经网络
- h 为简单的点乘操作
- two-stream结构充分利用状态与目标的结构相似性

## 训练方法

### Two-stage监督学习

1. 学习 s → ϕ(s) 和 g → ψ(g) 的映射
2. 学习 ϕ(s)、ψ(g) → V(s,g)/Q(s,g,a) 的映射
3. 使用矩阵分解与Horde算法

### 端到端强化学习

- 直接用强化学习的bootstrapping训练
- **缺点**：不够稳定

## 意义

- 将值函数扩展到目标空间的里程碑工作
- 后续许多工作基于此扩展
- HER基于UVFA建立goal-conditioned框架

## 局限性

- 涉及矩阵分解等算法，实操困难
- 端到端训练不够稳定

## 来源

- [[XuanAxuan]] - 知乎回答
- Schaul et al. "Universal Value Function Approximators"

## 相关概念

- [[HER]]
- [[HAC]]
- Goal-conditioned
