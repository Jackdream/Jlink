# 【牧马人日记-20260416】Hermes 实战笔记：从 Idea File 到 LLM Wiki，如何用 AI 消化第一篇论文

## 来源信息

| 属性 | 内容 |
|------|------|
| **标题** | 【牧马人日记-20260416】Hermes 实战笔记：从 Idea File 到 LLM Wiki，如何用 AI 消化第一篇论文 |
| **作者** | [[Zen]]（给智能以文明，而非给文明以智能） |
| **来源** | [知乎专栏](https://zhuanlan.zhihu.com/p/2028238441712764853) |
| **日期** | 2026-04-16 |
| **类型** | 实战笔记/技术博客 |

---

## 核心论点

### LLM Wiki vs 传统 RAG

| 维度 | 传统 RAG | LLM Wiki |
|------|----------|----------|
| **知识形态** | 临时检索，每次从零发现 | 持久化知识库，增量构建 |
| **交叉引用** | 查询时动态计算 | 已预先建立 |
| **矛盾处理** | 无 | 已标注 |
| **综合分析** | 每次重新推导 | 已反映所读一切 |

> **核心洞察**：RAG 是「查」，Wiki 是「积累」。知识是 compounding artifact。

---

## Wiki 三层结构

```
llm_wiki/
├── CLAUDE.md       # schema，约定格式和 workflow
├── SKILL.md        # Hermes skill，包含完整的 ingest/lint 逻辑
├── wiki/
│   ├── index.md    # 页面目录，按类别组织
│   ├── log.md      # 操作日志，按时间 append
│   └── *.md        # 各个概念/论文页面
└── raw/            # 原始资料，PDF/txt，不可变
```

**Karpathy 的比喻**：Obsidian 是 IDE，LLM 是程序员，Wiki 是代码库。

---

## 四个核心命令

| 英文 | 中文 | 含义 |
|------|------|------|
| wiki ingest | wiki 消化 | 摄入源文件，生成 wiki 页面 |
| wiki query | wiki 提问 | 基于 wiki 回答问题 |
| wiki lint | wiki 体检 | 检查 wiki 健康度 |
| wiki status | wiki 状态 | 查看 wiki 状态 |

---

## 实战案例：消化《Attention Is All You Need》

### 处理流程

1. **PDF 提取**：使用 pymupdf，15页，39,759字
2. **自动拆分**：Hermes 自主判断生成 4 个页面
3. **交叉引用**：页面内部使用 `[[双向链接]]` 形成概念网络
4. **元数据更新**：同步更新 `index.md` 和 `log.md`

### 生成的 4 个 Wiki 页面

| 页面 | 内容 |
|------|------|
| `attention-is-all-you-need.md` | 论文总览：作者、机构、一句话总结、核心贡献、实验结果、影响力 |
| `scaled-dot-product-attention.md` | Scaled Dot-Product Attention：公式、直觉推导（为什么除以 √dk）、代码实现 |
| `multi-head-attention.md` | Multi-Head Attention：三种使用方式（Encoder Self、Decoder Cross、Decoder Masked）、与 MQA/GQA 的关系 |
| `positional-encoding.md` | Positional Encoding：正弦/余弦编码的推导、与 RoPE/ALiBi/相对位置编码的对比 |

---

## 协作模式

| 任务 | Zen（用户） | Hermes（AI） |
|------|-------------|--------------|
| 选论文 | ✅ | - |
| 定方向 | ✅ | - |
| 读 PDF | - | ✅ |
| 提炼概念 | - | ✅ |
| 写页面 | - | ✅ |
| Review | ✅ | - |
| 维护索引 | - | ✅ |

---

## 局限与下一步

### 当前局限
- 半自动流程，需要用户确认
- 长论文（100+页）分 chunk 读取较繁琐
- 提炼质量取决于 LLM 对论文的理解深度

### 下一步计划
- 继续消化更多论文（目标 5 篇以上）
- 执行第一次 Lint，检查矛盾、孤儿页面、缺失链接
- 优化 Query 和 Lint 操作的价值

---

## 关键引用

> "人类维护 wiki 的痛苦不是阅读或思考，而是繁琐的 bookkeeping——更新交叉引用、保持摘要最新、标注矛盾。人类放弃 wiki 是因为维护负担增长比价值更快。LLM 不会厌倦、不会忘记更新交叉引用、可以一次改动 15 个文件。维护成本接近零。"
> —— Karpathy

---

## 相关链接

- 系列文章：
  - 第一篇：Hermes 是什么以及用它实现联网搜索
  - 第二篇：记忆机制
  - 第三篇：如何用 Hermes 构建个人知识积累系统（本文）

---

## 标签

#LLM-Wiki #RAG #知识管理 #Hermes #Karpathy #Obsidian #AI工作流
