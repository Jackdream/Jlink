---
title: HER
type: algorithm
created: 2026-04-17
updated: 2026-04-17
aliases: [Hindsight Experience Replay, 事后经验回放]
tags: [强化学习, 稀疏奖励, 经验回放, 深度强化学习]
---

# Hindsight Experience Replay (HER)

## 基本信息

- 类型：对抗稀疏奖励的经验回放技术
- 基于：UVFA的goal-conditioned框架
- 核心思想："事后诸葛亮"

## 解决的问题

- 环境只存在极为稀疏的二元奖励
- 只有任务完成时才获得奖励
- 策略学习极其困难

## 算法思想

### 核心机制

将经验回放池中transition的原始goal替换成对应episode已经实现过的状态。

### 为什么有效？

- 目标只会影响transition的动作，不影响状态动态转移
- 替换后奖励变成完成目标所能得到的奖励
- 保证回放池中总有足够数量的正奖励样本

### 类比

> **事后诸葛亮**：因为该目标达到过了，所以将原本设定的目标替换成已经实现的目标

## 与分层强化学习的关系

- 虽不属于分层RL，但建立的goal-conditioned框架有助于理解goal概念
- HAC将其扩展到了分层框架中

## 局限性

- 奖励只能表示目标是否实现，场景较为局限

## 来源

- [[XuanAxuan]] - 知乎回答
- Andrychowicz et al. "Hindsight Experience Replay"

## 相关概念

- [[稀疏奖励]]
- [[UVFA]]
- [[HAC]]
