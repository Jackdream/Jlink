---
title: Option-Critic
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [Option-Critic Architecture]
tags: [分层强化学习, Option, 基于Option, 深度强化学习]
related_concepts: [分层强化学习, 稀疏奖励]
---

# Option-Critic Architecture

## 基本信息

- 类型：基于Option的分层强化学习算法
- 来源：Sutton的半马尔科夫过程与option框架 + 深度强化学习
- 论文：The Option-Critic Architecture

## 核心思想

Option是子策略，但本身没有具体含义，只有option的数量是超参数。

### 网络结构

- **上层控制器**：选择 policy over options（在较长时间跨度上）
- **下层控制器**：根据所选option对应的 intra-option policy 选择 action
- **训练方式**：端到端训练，上层与下层之间不传递内部奖励

### 关键概念

| 概念 | 含义 |
|------|------|
| Policy over options | 上层策略选择使用哪个option |
| Intra-option policy | 每个option对应的下层策略 |

## 创新点

1. 将Sutton的option框架与深度强化学习结合
2. 对贝尔曼方程与策略梯度定理在分层RL中重新推导
3. 对理解分层强化学习具有指导意义

## 局限性

- option的真正含义完全靠智能体自行学出来
- 人为设计option/goal被认为困难，但某些实际问题中先验知识丰富

## 来源

- [[XuanAxuan]] - 知乎回答
- Sutton et al. "Between MDPs and semi-MDPs"

## 相关概念

- [[分层强化学习]]
- Option框架
