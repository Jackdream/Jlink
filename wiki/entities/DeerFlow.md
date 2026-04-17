---
title: DeerFlow
type: organization
created: 2026-04-17
tags: [AI, Agent, Harness, 字节跳动, 开源]
---

# DeerFlow

## 基本信息

- **开发方**：字节跳动（ByteDance）
- **类型**：开源项目
- **GitHub**：github.com/bytedance/deer-flow
- **Star**：54.7K+（2026年3月）

## 定位

**Harness Engineering** 的典型实现，为Agent提供完整的外挂控制系统。

## 核心特点

### 1. 子代理与沙箱隔离
- 每个子Agent在独立沙箱环境运行
- 有自己的文件系统、网络隔离、资源限制
- 一个子Agent出问题不影响其他

### 2. 结构化的任务状态
- 不再把所有对话塞进context
- 抽象成清晰数据结构：当前阶段、已完成步骤、待办事项、依赖关系
- 模型只需读结构化数据

### 3. 可插拔的工具链
- 工具调用封装成标准接口
- 支持热插拔
- 新增工具不需改框架代码

## 核心价值

把"写Agent"从"调模型"升级到"配置Harness"：
- 不需要关心模型怎么调度
- 不需要关心怎么恢复
- 不需要关心怎么隔离

Harness都帮你搞定。

## 来源

- [[字节开源HarnessAgent火爆全网2026-04-17]]
