---
title: HIRO
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [Data-Efficient Hierarchical Reinforcement Learning]
tags: [分层强化学习, Goal, 非平稳问题, Off-policy, 深度强化学习]
---

# HIRO (Data-Efficient Hierarchical Reinforcement Learning)

## 基本信息

- 类型：基于Goal的分层强化学习算法
- 特点：Off-policy方法
- 核心创新：解决非平稳问题

## Goal定义

- 直接定义在**状态空间**
- 语义信息：**特征空间中的有利转移方向**
- 下层控制器策略需尽可能让状态朝目标方向转移

## 非平稳问题 (Non-stationary Problem)

### 问题描述

- 上层控制器的状态转移概率取决于下层策略
- Off-policy算法中，上层策略更新时，下层策略已变化
- 回放池中的样本无法准确反映当前环境

### 解决方案

对经验回放池中的样本进行修正：
1. 将原始goal替换成新goal
2. 新goal能最大化该样本对应轨迹的出现概率
3. 选取概率最大的目标作为修订值

## 与FeUdal的比较

| 方面 | FeUdal | HIRO |
|------|--------|------|
| Goal定义 | 隐层特征空间 | 状态空间 |
| 网络结构 | 复杂（LSTM、CNN） | 标准RL算法 |
| 实现难度 | 较大 | 较小 |

## 评价

- 实现难度比FeUdal小很多
- 针对非平稳问题的解决方案具有现实意义
- 是一篇很不错的论文

## 来源

- [[XuanAxuan]] - 知乎回答

## 相关概念

- [[分层强化学习]]
- [[FeUdal]]
- 非平稳问题
