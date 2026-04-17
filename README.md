# 个人知识库 (Personal Knowledge Base)

基于 LLM Wiki 模式的个人知识管理系统。

## 核心理念

- **持久化积累**：知识被编译并保持最新，不需要每次查询时重新推导
- **LLM 维护**：AI 负责所有繁琐的总结、交叉引用、归档工作
- **三层架构**：原始来源 → Wiki → Schema

## 目录结构

```
wiki/
├── raw/                    # 原始来源（不可变）
│   ├── articles/           # 文章
│   ├── books/              # 书籍
│   ├── notes/              # 个人笔记
│   └── assets/             # 资源文件
├── wiki/                   # LLM 生成的维基页面
│   ├── entities/          # 实体页面
│   ├── concepts/          # 概念页面
│   ├── summaries/          # 来源摘要
│   ├── analyses/          # 分析页面
│   └── synthesis/          # 综合页面
├── scripts/               # 辅助脚本
├── index.md           # 内容索引（必须保持更新）
├── log.md             # 操作日志（追加）
└── CLAUDE.md             # Schema 定义
```

## 快速开始

### 1. 添加新来源

将源文件放入 `raw/` 对应目录，然后告诉我处理，例如：
> 请处理这个新来源：raw/articles/xxx.md

### 2. 查询知识库

直接向我提问：
> 关于 [主题]，我知道些什么？

### 3. 健康检查

定期进行：
> 请对知识库进行健康检查

## 工作流程

1. **Ingest（摄入）**：来源 → 提取信息 → 更新页面 → 记录日志
2. **Query（查询）**：搜索页面 → 综合回答 → 可选保存为新页面
3. **Lint（检查）**：检查矛盾、过期内容、孤立页面

## 推荐工具

- **Obsidian** - 知识库 IDE，支持图谱视图、双链
- **Obsidian Web Clipper** - 网页剪藏插件
- **Dataview** - 动态查询插件
- **Marp** - Markdown 幻灯片

---

查看 `CLAUDE.md` 了解详细维护规范。
