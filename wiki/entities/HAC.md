---
title: HAC
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [Learning Multi-Level Hierarchies with Hindsight, 多层级事后分层学习]
tags: [分层强化学习, Goal, 多层级, Hindsight, 稀疏奖励]
---

# HAC (Learning Multi-Level Hierarchies with Hindsight)

## 基本信息

- 类型：多层级的分层强化学习算法
- 基于：UVFA和HER
- 核心贡献：三种transition样本设计

## Goal定义

- **目标空间 = 状态空间**
- **目标 = 达到某一特定状态**
- 当目标实现时奖励为1，否则为0

## 多层级结构

```
┌─────────────────────────────────────┐
│          层级1 (上层)                │
│   输出层级2的目标（好状态）           │
└─────────────────────────────────────┘
                ↓
┌─────────────────────────────────────┐
│          层级2 (中层)                │
│   输出层级3的目标（好状态）           │
└─────────────────────────────────────┘
                ↓
┌─────────────────────────────────────┐
│          层级3 (底层)                │
│   输出action                        │
└─────────────────────────────────────┘
```

- 除最后一层外，每一层用于输出下一层的目标
- 每个层级的目标是实现上一层所设定的较好状态

## 核心创新：三种Transition样本

### 1. Hindsight Action Transitions

- 将原样本中的action（下次目标）修正为智能体实际达到的状态
- 让样本相当于是下层策略最优时产生的样本
- **解决**：下层策略变化导致的非平稳问题

### 2. Hindsight Goal Transitions

- 将原样本中的goal（上层目标）修正为该episode最终所实现的目标
- 保证一个episode的样本中总有能获得正奖励的
- **解决**：奖励稀疏问题

### 3. Subgoal Testing Transitions

- 设定一个目标后产生样本
- 如果在特定时间步后目标未满足，反馈负奖励
- **解决**：部分goal的Q值被忽略的问题

## 解决的问题

| 问题 | 解决方案 |
|------|----------|
| 非平稳问题 | Hindsight Action Transitions |
| 奖励稀疏 | Hindsight Goal Transitions |
| Q值被忽略 | Subgoal Testing Transitions |

## 评价

- 工作比较grounded
- 针对每个问题都提出了相应解决方案
- 但针对的场景和HER一样，奖励定义较为局限

## 来源

- [[XuanAxuan]] - 知乎回答
- Levy et al. "Learning Multi-Level Hierarchies with Hindsight"

## 相关概念

- [[分层强化学习]]
- [[HER]]
- [[UVFA]]
- 非平稳问题
