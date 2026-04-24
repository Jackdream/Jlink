---
title: DeepSeek V4预览版发布！大幅降低了对计算和显存的需求，Agent能力实现国内和开源领先
type: source
status: seed
created: 2026-04-24
updated: 2026-04-24
source_count: 1
tags:
  - DeepSeek
  - AI大模型
  - 开源
---

# 概要

DeepSeek正式发布并开源全新系列模型DeepSeek-V4预览版，分为Pro和Flash两个版本。V4-Pro在Agent能力、世界知识和推理性能上达到开源领先水平，可比肩顶级闭源模型；V4-Flash参数更小，速度更快、成本更低。两款模型均支持百万字（1M）超长上下文，采用创新注意力机制，大幅降低计算与显存需求。

# 来源信息

- 标题：DeepSeek V4预览版发布！大幅降低了对计算和显存的需求，Agent能力实现国内和开源领先
- 作者：[[鲍奕龙]]
- 日期：2026-04-24
- 格式：微信公众号文章
- 原文链接：https://wallstreetcn.com/articles/3770782
- 摄入时间：2026-04-24

# 原始文档

> **来源文件**：[[raw/article/DeepSeek V4预览版发布！大幅降低了对计算和显存的需求，Agent能力实现国内和开源领先.md]]

# 关键要点

- **双版本策略**：V4-Pro定位高性能（比肩顶级闭源），V4-Flash定位经济快速
- **超长上下文**：1M（100万）token上下文成为标配
- **架构创新**：全新注意力机制，token维度压缩 + DSA稀疏注意力
- **效率提升**：大幅降低计算和显存需求
- **API兼容**：同时支持OpenAI ChatCompletions和Anthropic接口
- **Agent适配**：针对Claude Code、OpenClaw、OpenCode、CodeBuddy等主流Agent产品优化

# 重要事实

| 指标 | V4-Pro | V4-Flash |
|------|--------|----------|
| Agent能力 | 开源领先，优于Sonnet 4.5 | 简单任务与Pro相当，高难度有差距 |
| 世界知识 | 大幅领先开源，仅逊于Gemini-Pro-3.1 | 稍逊于Pro |
| 推理性能 | 超越所有开源，比肩顶级闭源 | 接近Pro |
| 上下文 | 1M token | 1M token |
| 思考模式 | 支持（reasoning_effort: high/max） | 支持 |
| API成本 | 较高 | 更低 |

## 性能对比

| 测试 | V4-Pro成绩 | 竞品 |
|------|------------|------|
| Agentic Coding | 开源最佳 | 优于Sonnet 4.5 |
| 世界知识 | 接近Gemini-Pro-3.1 | 顶尖闭源 |
| 数学/STEM/代码 | 比肩世界顶级闭源 | 所有开源第一 |

# 解读/意义

1. **开源LLM新标杆**：V4-Pro在Agent能力上达到开源领先水平，可比肩顶级闭源模型
2. **效率革命**：全新注意力机制，大幅降低计算和显存需求，降低部署门槛
3. **应用落地加速**：1M上下文 + Agent优化，推动AI应用开发
4. **生态兼容**：同时支持OpenAI和Anthropic接口，降低迁移成本

# 与知识库的连接

- 相关概念：[[DeepSeek-V4]]（需更新）、[[Agent能力]]
- 相关实体：[[DeepSeek]]
- 相关项目：
- 相关分析：

# 张力/冲突

- 与已有结论一致的地方：
  - DeepSeek持续推进开源策略
  - 强调效率优先，降低AI使用门槛
- 与已有结论冲突的地方：
  - 此前提到V4发布时间多次跳票，现已正式发布
- 当前仍待验证的点：
  - 实际使用体验与Sonnet 4.5、Opus 4.6的对比
  - 与Claude Mythos等竞争模型的能力对比

# 待解决问题

- V4完整版何时发布？
- 与Claude Mythos的竞争格局如何演变？
- 华为昇腾 vs 英伟达的实际性能差异？

# 建议链接

- [[DeepSeek]]
- [[DeepSeek-V4]]
- [[Agent能力]]
- [[鲍奕龙]]
