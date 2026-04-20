---
title: "【牧马人日记-20260416】Hermes 实战笔记：从 Idea File 到 LLM Wiki，如何用 AI 消化第一篇论文"
source: "https://zhuanlan.zhihu.com/p/2028238441712764853"
author:
  - "[[Zen07​​给智能以文明，而非给文明以智能]]"
published:
created: 2026-04-20
description: "今天，我读到一篇关于 Karpathy 的 LLM Wiki 的文章（ https://mp.weixin.qq.com/s/ztnVzuPeEgNjxsfuQbaiOg）。 Karpathy 把他的 LLM Wiki 方案，做成了一个抽象版的 Idea File（想法文件）。LLMwiki.txt核心观点…"
tags:
  - "clippings"
---
[收录于 · LLM101n](https://www.zhihu.com/column/c_1986785937695475636)

目录

收起

一、RAG 的局限，和 Wiki 的思路

二、先问三个问题

三、Wiki 的三层结构

四、一套约定词，三端同步

五、第一个实战：消化《Attention Is All You Need》

为什么选这篇

PDF 提取：踩了一个小坑

Hermes 自主拆分了4个 Wiki 页面

同步更新了元数据

六、三个核心操作，只有 Ingest 实战过

七、目前的协作模式

八、局限

九、下一步

写在最后

今天，我读到一篇关于 [Karpathy](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=Karpathy&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJLYXJwYXRoeSIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MzI0OTM0MSwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.fkTDA9zP8hn25rKPaXrMLfV6EhtpdhnrowMjV9BN6gk&zhida_source=entity) 的 [LLM Wiki](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=LLM+Wiki&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJMTE0gV2lraSIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MzI0OTM0MSwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.VePYL-lIKwDTkj9ZlRfHYY40F2CT-XIACUG2NI1F5ZA&zhida_source=entity) 的文章（ [mp.weixin.qq.com/s/ztnV](https://link.zhihu.com/?target=https%3A//mp.weixin.qq.com/s/ztnVzuPeEgNjxsfuQbaiOg) ）。  
Karpathy 把他的 LLM Wiki 方案，做成了一个 **抽象版的 Idea File** （想法文件）。

[![](https://pica.zhimg.com/v2-04f91784afaa60952361d195023cd539.png)](https://zhida.zhihu.com/repositories/7620327574283015650/preview/MTAwMjMwMDAwNzMzMDUxOTMxN3w6fFpISV9EQV9VU0VSX1VQTE9BRA==?previewPageCanShowFileSource=false)

核心观点就一句话： **RAG 是每次查询临时检索，Wiki 是让 LLM 增量构建一个持久化的知识库** 。

我读完就意识到，这正是我一直在找的「读完论文不白读」的方法。

于是我用 [Hermes](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=Hermes&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJIZXJtZXMiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzMyNDkzNDEsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.ZuNOu8OW-H_AjSc-z9br4Zn98UGWAf_XsJhW7ewRxWg&zhida_source=entity) 把它变成了可跑版本。以下是完整过程。

---

### 一、RAG 的局限，和 Wiki 的思路

先说说我之前的痛点。

我每天读 AI 论文，读的时候觉得懂了，过几天忘光。再读一遍，时间成本太高；不读，知识就断了。

我试过 RAG（检索增强生成）：把论文扔进向量数据库，query 的时候检索相关段落。效果还行，但根本问题没解决——RAG 本质上是「查」，不是「积累」。每次问问题，LLM 都要从零发现知识，没有复用。

Karpathy 说的 LLM Wiki 不一样：

> 知识是「积累」的，不是「重找」的。Wiki 是一个 compounding artifact——交叉引用已经建立，矛盾已经标注，综合分析已经反映了你所读的一切。新文档进来，LLM 主动更新所有相关页面、维护交叉引用。

这正是我想要的。

---

### 二、先问三个问题

读完文章，我没有直接动手。先确认了三件事：

**1\. 原始资料是什么？** 我每天读 AI 论文，论文最合适作为起点。博客、推文也可以，但论文的消化价值最高。

**2\. Wiki 存哪？** 纯文件方案。本地一个文件夹，LLM 直接读写 markdown。不需要 Obsidian 插件、不需要向量数据库、不需要额外基础设施。

**3\. 谁来维护？** Hermes 主导处理，我负责策展和 review。分工明确：我是策展人，AI 是执行者。

这三个问题的答案，决定了整套方案的基础架构。

---

### 三、Wiki 的三层结构

基于 Karpathy 的 Idea File，我搭建了这样的结构：

```
llm_wiki/
├── CLAUDE.md       # schema，约定格式和 workflow
├── SKILL.md       # Hermes skill，包含完整的 ingest/lint 逻辑
├── wiki/
│   ├── index.md   # 页面目录，按类别组织
│   ├── log.md     # 操作日志，按时间append
│   └── *.md       # 各个概念/论文页面
└── raw/           # 原始资料，PDF/txt，不可变
```

**raw/** 是原始资料，Hermes 只读不写； **wiki/** 是 Hermes 生成的消化页面，是这次的核心产物； **CLAUDE.md** 是 schema，告诉 Hermes 页面格式、命名规范、workflow 怎么跑。

Karpathy 有一个比喻很准确： **Obsidian 是 IDE，LLM 是程序员，Wiki 是代码库。**

---

### 四、一套约定词，三端同步

为了让 Hermes 理解「我要启动 Wiki 工作流」，我定义了一套命令约定：

| 英文 | 中文 | 含义 |
| --- | --- | --- |
| wiki ingest | wiki 消化 | 摄入源文件，生成 wiki 页面 |
| wiki query | wiki 提问 | 基于 wiki 回答问题 |
| wiki lint | wiki 体检 | 检查 wiki 健康度 |
| wiki status | wiki 状态 | 查看 wiki 状态 |

这四个命令同步到了三个地方：

- `llm_wiki/CLAUDE.md` （Wiki 本地 schema）
- `llm_wiki/SKILL.md` （Wiki 内的 skill 文件）
- `~/.hermes/skills/research/llm-wiki/SKILL.md` （系统级 skill）

这样无论哪个 session 启动，只要说「wiki 消化」或「wiki ingest」，Hermes 都知道该做什么。

---

### 五、第一个实战：消化《Attention Is All You Need》

### 为什么选这篇

我很喜欢 [Transformer](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=Transformer&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJUcmFuc2Zvcm1lciIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MzI0OTM0MSwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.WMG4Oory3OkQzAwqKiTyLSrFD5AJdrf-k7PpFP6bvoc&zhida_source=entity) 论文，但读过几遍没有真正消化。用它练手最合适。

### PDF 提取：踩了一个小坑

论文 PDF 存在本地缓存目录，文件名带空格。系统 pip 和 Hermes 的 venv pip 是分开的，找错 Python 版本就会报 ModuleNotFoundError。

最后用 pymupdf 解决，提取结果： **15页，39,759字** 。

### Hermes 自主拆分了4个 Wiki 页面

我没有指定「生成几个页面」。Hermes 读完全文后，自己判断应该拆成这些：

1. **`attention-is-all-you-need.md`** ——论文总览：作者、机构、一句话总结、核心贡献、实验结果、影响力
2. **`scaled-dot-product-attention.md`** —— [Scaled Dot-Product Attention](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=Scaled+Dot-Product+Attention&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJTY2FsZWQgRG90LVByb2R1Y3QgQXR0ZW50aW9uIiwiemhpZGFfc291cmNlIjoiZW50aXR5IiwiY29udGVudF9pZCI6MjczMjQ5MzQxLCJjb250ZW50X3R5cGUiOiJBcnRpY2xlIiwibWF0Y2hfb3JkZXIiOjEsInpkX3Rva2VuIjpudWxsfQ.JhAjOPmEMtthJ8R8BOHA1PjLbc_WnyopJ8-hduO22po&zhida_source=entity) ：公式、直觉推导（为什么除以 √dk）、代码实现
3. **`multi-head-attention.md`** —— [Multi-Head Attention](https://zhida.zhihu.com/search?content_id=273249341&content_type=Article&match_order=1&q=Multi-Head+Attention&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3NzY4NDcxNTQsInEiOiJNdWx0aS1IZWFkIEF0dGVudGlvbiIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MzI0OTM0MSwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.6Q6SXQxbewGvzI44wx73htJKuV-hqc_aJ7MFmKBQYrY&zhida_source=entity) ：三种使用方式（Encoder Self、Decoder Cross、Decoder Masked）、与 MQA/GQA 的关系
4. **`positional-encoding.md`** ——Positional Encoding：正弦/余弦编码的推导、与 RoPE/ALiBi/相对位置编码的对比

每个页面内部有 `[[双向链接]]` 交叉引用，形成概念网络。

### 同步更新了元数据

- `wiki/index.md` 新增了4个页面的目录
- `wiki/log.md` 记录了本次 ingest 的操作明细

---

### 六、三个核心操作，只有 Ingest 实战过

Karpathy 提出了三个核心操作：

| 操作 | 含义 | 我做过吗 |
| --- | --- | --- |
| Ingest | 摄入源文件，LLM 更新所有相关页面 | ✅ 做过了 |
| Query | 基于 wiki 回答问题 | ⏳ 还没做 |
| Lint | 体检，检查矛盾、孤儿页面、缺失链接 | ⏳ 还没做 |

现在 wiki 里只有一篇论文，Query 和 Lint 的价值还不明显。等消化了 10 篇、20 篇论文之后，这俩操作才会真正发挥作用——概念多了，交叉引用才有意义，矛盾才会出现，体检才有价值。

---

### 七、目前的协作模式

现在的分工是这样的：

|  | Zen（我） | Hermes |
| --- | --- | --- |
| 选论文 | ✅ | \- |
| 定方向 | ✅ | \- |
| 读 PDF | \- | ✅ |
| 提炼概念 | \- | ✅ |
| 写页面 | \- | ✅ |
| Review | ✅ | \- |
| 维护索引 | \- | ✅ |

我不需要做重复劳动。读完论文扔给 Hermes，它负责消化、写页面、维护索引。我只负责：选值得读的论文、确认 Hermes 的输出、把控方向。

---

### 八、局限

现阶段还是半自动的。「wiki ingest」不是一个真正的一键命令，Hermes 读论文、提炼、写页面之间需要我确认。不是完全无人值守。

另外，提炼和写作的质量取决于 Hermes 对论文的理解深度。简单的论文（如这篇）处理很顺畅；如果是 100+ 页的长论文，分 chunk 读取的过程会更繁琐。

这些是下一步要优化的方向。

---

### 九、下一步

继续消化论文是主线。下一批候选：

等 wiki 里有 5 篇以上论文之后，我会做第一次 Lint——看看 Hermes 会发现什么问题。

---

### 写在最后

Karpathy 在文章结尾说了一句话，我很喜欢：

> 人类维护 wiki 的痛苦不是阅读或思考，而是繁琐的 bookkeeping——更新交叉引用、保持摘要最新、标注矛盾。人类放弃 wiki 是因为维护负担增长比价值更快。LLM 不会厌倦、不会忘记更新交叉引用、可以一次改动 15 个文件。维护成本接近零。

这就是 LLM Wiki 的核心价值： **让知识真正积累起来，而不是每次从零开始。**

---

*本文是 Hermes 实战笔记系列第三篇。第一篇讲 Hermes 是什么以及用它实现联网搜索，第二篇讲记忆机制，第三篇讲如何用 Hermes 构建个人知识积累系统。*

编辑于 2026-04-17 22:20・湖北[hermes-agent](https://www.zhihu.com/topic/2026281760514742234)[OpenClaw](https://www.zhihu.com/topic/1999063153082913027)[AI智能体](https://www.zhihu.com/topic/28266286)