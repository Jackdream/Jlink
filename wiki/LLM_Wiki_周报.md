---
title: "LLM Wiki 周报"
created: 2026-04-09
tags:
  - "wiki"
  - "周报"
---

# LLM Wiki 周报

> 本页汇总本周 AI/LLM 领域的重要资讯

---

## Claude Mythos：性能巅峰与安全困局

**来源**：[量子位](https://mp.weixin.qq.com/s/LWitPNXRHqnYw2QJ05pe-Q) | 2026-04-08

### 核心要点

Anthropic 发布 Claude Mythos 预览版，在多个 benchmark 上实现对 Opus 4.6 的全面碾压：

| 测试基准 | 提升幅度 |
|---------|---------|
| SWE-bench Pro | +24% |
| SWE-bench Verified | +13% |
| Terminal-Bench 2.0 | +17% |

### 价格与定位

- 价格是 Opus 4.6 的 **5 倍**
- 代号 "Mythos"（神话），定位为 Anthropic 最强模型

### 安全隐忧

Mythos 的强大能力带来显著风险：

> Mythos Preview 已经发现了数千个高危漏洞，各大主流操作系统和浏览器无一幸免。

**关键问题**：模型攻击安全漏洞的能力已超过绝大多数人类黑客，仅剩顶尖安全专家能与之抗衡。

### 玻璃翼计划（Project Glasswing）

Anthropic 采取反常措施：**暂不向公众开放** Mythos

**参与者**：Amazon、Apple、Google、Linux Foundation、Microsoft、NVIDIA 等巨头

**计划内容**：
- 让合作方利用 Mythos 主动发现自身系统的安全漏洞
- 提前建立防御措施
- 开放给 40+ 关键基础设施维护者
- 提供 **1 亿美元**使用额度
- 向开源安全组织捐赠 **400 万美元**

### 行业影响

- 网络安全格局可能因此彻底改变
- AI 安全从"杞人忧天"变为现实威胁
- 需要整个行业协作应对：AI 公司、软件厂商、安全研究员、开源社区、各国政府

---

## Harness Engineering：AI 工程化的新范式

**来源**：[沉默王二](https://mp.weixin.qq.com/s/2b6g3ym7xYJIQwXYL8kqkg) | 2026-03-31

### 背景问题

许多团队发现：模型能力足够，但 Agent 任务执行仍然问题频出——任务中断、上下文混乱、错误无法恢复。

**核心洞察**：
> Prompt Engineering 解决的是"怎么让模型听懂你的话"，Harness Engineering 解决的是"怎么让模型把事做完"。

### 核心公式

```
Agent = Model + Harness
```

- **Model**：大模型本身，负责理解和生成
- **Harness**：运行时控制系统，负责调度、约束、恢复和审计

### 六大核心组件

1. **标准化工具集成层**：统一参数校验、权限检查、异常兜底
2. **上下文工程系统**：用结构化状态替代聊天历史
3. **状态持久化与任务调度引擎**：断点续传、Checkpoint、并行调度
4. **子代理编排与隔离系统**：多 Agent 独立运行、互不干扰
5. **验证与安全防护层**：高风险操作强制人工审批
6. **可观测性与审计系统**：完整日志、追踪、告警

### 实践案例

**Claude Code 的四步执行框架**：
1. 探索代码库
2. 制定执行计划
3. 逐个执行并检查
4. 全局检查

**字节 DeerFlow 2.0**（54.7K Stars）：
- 子代理沙箱隔离
- 结构化任务状态
- 可插拔工具链

### 工程师角色转变

| 过去 | 现在 |
|------|------|
| 写业务逻辑代码 | 设计 Agent 执行框架 |
| 处理边界异常 | 配置工具接口权限 |
| 手动调试修复 | 定义状态流转机制 |

### 落地路径

```
工具层 → 框架层 → 平台层
（轻量）         （重量）
```

---

## 本周图片素材

| 路径 | 说明 |
|------|------|
| `../raw/卢麒元/` | 微博截图存档（2025.11 - 2026.04） |

> 注：卢麒元文件夹以图片形式保存，无法提取文本内容

---

## 相关链接

- [Claude Mythos 官方公告](https://www.anthropic.com/glasswing)
- [DeerFlow GitHub](https://github.com/bytedance/deer-flow)
- [PaiAgent GitHub](https://github.com/itwanger/PaiAgent)

---

*最后更新：2026-04-09*
