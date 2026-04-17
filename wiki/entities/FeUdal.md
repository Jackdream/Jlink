---
title: FeUdal
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [FeUdal Networks, 封建网络]
tags: [分层强化学习, Goal, 隐层特征空间, Manager, Worker]
---

# FeUdal Networks for Hierarchical Reinforcement Learning

## 基本信息

- 类型：基于Goal的分层强化学习算法
- 网络结构：Manager-Worker分层结构
- 特点：复杂的分层模块化网络

## Goal定义

- 定义在**隐层特征空间（latent space）**
- 语义信息：**隐层特征空间中有利的转移方向**
- 下层控制器策略需尽可能让隐层特征朝目标方向转移

## 网络结构

```
┌─────────────────────────────────────────┐
│              Manager (上层)              │
│   输出目标 g，引导隐层特征转移方向        │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│              Worker (下层)               │
│   根据目标 g 输出 action                 │
└─────────────────────────────────────────┘
```

- 采用LSTM、CNN等复杂结构
- 可以端到端训练，但采取分层训练方法

## 训练方法

- **Manager**：输出隐层特征空间中有利的转移方向，更新规则类似策略梯度
- **Worker**：尽可能达成目标

## 评价

### 优点

- 赋予目标明确的语义信息
- 理论推导和分析巧妙
- 不同于其他论文直接沿用标准RL算法

### 缺点

- 网络结构过于复杂
- 实际效果难以验证
- 在某些任务中性能甚至比普通神经网络差
- **鲁棒性不好**

## 与HIRO的比较

| 方面 | FeUdal | HIRO |
|------|--------|------|
| Goal定义 | 隐层特征空间 | 状态空间 |
| 网络结构 | 复杂（LSTM、CNN） | 标准RL算法 |
| 实现难度 | 较大 | 较小 |

## 来源

- [[XuanAxuan]] - 知乎回答
- Vezhnevets et al. "FeUdal Networks for Hierarchical Reinforcement Learning"

## 相关概念

- [[分层强化学习]]
- [[HIRO]]
