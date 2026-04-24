---
title: "DeepSeek V4预览版发布！大幅降低了对计算和显存的需求，Agent能力实现国内和开源领先"
source: "https://wallstreetcn.com/articles/3770782#from=ios?ivk=1"
author:
  - "[[鲍奕龙]]"
published: 2026-04-24
created: 2026-04-24
description: "DeepSeek正式发布并开源全新系列模型DeepSeek-V4预览版，分为Pro和Flash两个版本。V4-Pro在Agent能力、世界知识和推理性能上达到开源领先水平，可比肩顶级闭源模型；V4-Flash参数更小，速度更快、成本更低。两款模型均支持百万字（1M）超长上下文，采用创新注意力机制，大幅降低计算与显存需求。现已上线官网、App及API服务。"
tags:
  - "clippings"
---
DeepSeek正式发布并开源全新系列模型DeepSeek-V4预览版，分为Pro和Flash两个版本。V4-Pro在Agent能力、世界知识和推理性能上达到开源领先水平，可比肩顶级闭源模型；V4-Flash参数更小，速度更快、成本更低。两款模型均支持百万字（1M）超长上下文，采用创新注意力机制，大幅降低计算与显存需求。现已上线官网、App及API服务。

全新系列模型 DeepSeek-V4 的预览版本正式上线并同步开源。

4月24日，中国人工智能公司DeepSeek再度向开源社区投下重磅，其全新系列模型DeepSeek-V4预览版正式发布并同步开源，在Agent能力、世界知识与推理性能三大维度宣称达到国内及开源领域领先水平。

DeepSeek-V4分为Pro与Flash两个版本，均支持百万（1M）token超长上下文，即日起可通过官网chat.deepseek.com及官方App直接使用。

![](https://wpimg-wscn.awtmt.com/d75137ed-54a3-4e01-a5d0-d547938ef65b.png)

API服务同步上线，开发者将model参数修改为deepseek-v4-pro或deepseek-v4-flash即可调用，接口兼容OpenAI ChatCompletions与Anthropic两套标准。

## DeepSeek-V4-Pro：性能比肩顶级闭源模型

![](https://wpimg-wscn.awtmt.com/49bb3c3c-da6d-46b8-a7e0-c9af686a7435.png)

- **Agent 能力大幅提高：** 相比前代模型，DeepSeek-V4-Pro 的 Agent 能力显著增强。在 Agentic Coding 评测中，V4-Pro 已达到当前开源模型最佳水平，并在其他 Agent 相关评测中同样表现优异。目前 DeepSeek-V4 已成为公司内部员工使用的 Agentic Coding 模型，据评测反馈使用体验优于 Sonnet 4.5，交付质量接近 Opus 4.6 非思考模式，但仍与 Opus 4.6 思考模式存在一定差距。
- **丰富的世界知识：** DeepSeek-V4-Pro 在世界知识测评中，大幅领先其他开源模型，仅稍逊于顶尖闭源模型 Gemini-Pro-3.1。
- **世界顶级推理性能：** 在数学、STEM、竞赛型代码的测评中，DeepSeek-V4-Pro 超越当前所有已公开评测的开源模型，取得了比肩世界顶级闭源模型的优异成绩。

![](https://wpimg-wscn.awtmt.com/d0680e78-735d-45d0-928c-e8a279866316.png)

## DeepSeek-V4-Flash：更快捷高效的经济之选

相比 DeepSeek-V4-Pro，DeepSeek-V4-Flash 在世界知识储备方面稍逊一筹，但展现出了接近的推理能力。而由于模型参数和激活更小，相较之下 V4-Flash 能够提供更加快捷、经济的 API 服务。

在 Agent 测评中，DeepSeek-V4-Flash 在简单任务上与 DeepSeek-V4-Pro 旗鼓相当，但在高难度任务上仍有差距。

## 结构创新和超高上下文效率

DeepSeek-V4 开创了一种全新的注意力机制，在 token 维度进行压缩，结合 DSA 稀疏注意力（DeepSeek Sparse Attention），实现了全球领先的长上下文能力，并且相比于传统方法大幅降低了对计算和显存的需求。从现在开始，1M（一百万）上下文将是 DeepSeek 所有官方服务的标配。

![](https://wpimg-wscn.awtmt.com/734fe628-ea72-4736-a943-a416597a49b1.png)

## Agent 能力专项优化

DeepSeek-V4 针对 Claude Code 、OpenClaw、OpenCode、CodeBuddy 等主流的 Agent 产品进行了适配和优化，在代码任务、文档生成任务等方面表现均有提升。下图为 V4-Pro 在某 Agent 框架下生成的 PPT 内页示例：

![](https://wpimg-wscn.awtmt.com/0f0d692a-7d5b-4b1c-8c5c-121215a899f5.png)

## API 访问

目前，DeepSeek API 已同步上线 V4-Pro 与 V4-Flash，支持 OpenAI ChatCompletions 接口与 Anthropic 接口。访问新模型时，base\_url 不变, model 参数需要改为 deepseek-v4-pro 或 deepseek-v4-flash。

![](https://wpimg-wscn.awtmt.com/247f2037-4c0c-4f28-8a2a-ae0cecd39422.png)

V4-Pro 与 V4-Flash 最大上下文长度为 1M **，** 均同时支持 **非思考模式** 与 **思考模式** ，其中思考模式支持 reasoning\_effort 参数设置思考强度（high/max）。对于复杂的 Agent 场景建议使用思考模式，并设置强度为 max。