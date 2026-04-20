---
title: "Claude Design 上线 24 小时：模型公司盯上的，不只是设计工具"
source: "https://mp.weixin.qq.com/s/ogJdYjgO2w5MXxjBrZpolw"
author:
  - "[[近观AI录]]"
published:
created: 2026-04-20
description: "Claude Design 上线 24 小时：模型公司盯上的，不只是设计工具"
tags:
  - "clippings"
---
近观AI录 *2026年4月18日 23:28*

2026 年 4 月 14 日，Mike Krieger 从 Figma 董事会辞职。三天后，Anthropic 发布了 Claude Design。

Krieger 现在是 Anthropic 的 CPO，也是 Instagram 的联合创始人。不到一年前，他刚进入 Figma 董事会。也就是说，在 Claude Design 公开发布之前，他大概率已经知道这件事在内部推进到什么程度了。

这前后只隔了三天。

看到这个时间差，我首先想到的，是它背后那个更现实的问题：模型公司和工具软件公司的关系，正在变得越来越难以中立。

![图片](https://mmbiz.qpic.cn/sz_mmbiz_png/Y1vBdXVTtLC6ZFzAr2knDKhcv4bXoHjxBMP5GmR0yCeJyEWUKDfXKcdrxWEfmT1jXrYQxsyp6PT3EyUzs4XjTDREyjy7iaTRH9KMqXFPKeyA/640?wx_fmt=png&from=appmsg&watermark=1&tp=webp&wxfrom=5&wx_lazy=1#imgIndex=0)

未来三到五年，很多建立在"AI 能力封装"之上的工具软件，都会面对同一个压力——以为自己在做一个完整产品，但在模型公司眼里，你很可能只是一个可以被整合进去的功能层。

我不觉得工具软件会突然被替掉，SaaS 公司也不会一下子失去存在感。但是这类压力已经来了，并且看上去不会只落在少数公司头上。

---

## Claude Design 到底发布了什么

表面看，Claude Design 做的事并不复杂：你用自然语言描述需求，它帮你生成设计稿、原型、幻灯片、落地页。你可以导入文档、图片、网页截图，也可以继续通过批注或对话去修改，最后导出到 Canva、PDF、PPTX，或者直接交给 Claude Code 做前端实现。

这些能力单看，都不算特别陌生。真正值得注意的，是另一个细节：

Claude Design 可以读取你的 codebase 和设计文件，自动识别并应用团队已有的设计系统。

如果只把它看成一次功能升级，很容易低估这件事的意义。

因为设计系统管理，本来就是设计工具最核心的护城河之一。Figma 这些年真正拉开和 Sketch、Adobe XD 差距的，不只是协作编辑，而是"组件库 + 协作 + 设计系统同步"这一整套能力。现在 Claude Design 第一版就把"理解并应用设计系统"做进去了，而且它选择的是另一条路：直接读代码库，而不是依赖 Figma 生态本身。

这说明 Anthropic 盯上的，并不只是生成设计稿这件事，它还在往原有工具层更核心的位置走。

官方给出的案例也很直接。Brilliant 的设计师说，用 Claude Design 做复杂原型，原来要 20 多轮 prompts，现在压缩到 2 轮；Datadog 的 PM 说，过去要来回沟通一周的事情，现在一段对话就能推进很多。

表面上看，缩短的是时间；再往里看，少掉的是打开 Figma 的动作。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

对工具软件来说，真正值得警惕的，往往不是收入波动，而是用户开始越来越少地打开它。因为更危险的变化，通常不是收入先掉，而是使用入口先松动。

---

## 这不是第一次，也不会是最后一次

如果把 Claude Design 单独拿出来看，很容易把它理解成 Anthropic 对 Figma 的一次"越界"。

但放在更大的背景里看，这件事其实已经发生过很多次了，只是落点不同。

Claude Code 更早切进了编程工具市场。原来这个赛道里，GitHub Copilot 是最强势的玩家，Cursor 也跑得很快。Anthropic 选择把编程能力直接放进 Claude 生态里，让它成为整个产品体验的一部分。

OpenAI 也一样。Deep Research 把原来需要专业研究工具才能完成的一部分流程，直接内置进 ChatGPT；GPT-4o 的语音能力和语音转写，也天然会和一批垂类工具形成竞争。Google 这边则在几乎同一时间推出了 Stitch，同样瞄准 AI 设计。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

每次到这种时候，官方往往都会说一句话：这是"互补"，不是替代。

Anthropic 这次也说 Claude Design 和 Canva 是互补关系。Canva CEO Melanie Perkins 的原话是，"把 Canva 带到创意开始的地方"。

这句话当然可以成立，但前提是双方都还能握住自己的核心价值。

问题在于，一旦 Claude Design 占据了"从想法到初步视觉方案"这一段，Canva 在整个链路里的角色就更像下游精修工具。那它和用户之间的关系，究竟是在增强，还是在被往后推？这个问题，恐怕没法用"互补"两个字轻轻带过。

---

## 模型公司为什么一定要往工具层走

模型公司做工具，核心目标远不止多卖一层产品。

更准确一点说，模型公司往工具层走，本质上是在抢入口。这件事当然会带来新的收入，但它指向的其实是另一件更大的事：入口控制。它们真正担心的，是自己一步步退回到底层能力层，最后只作为被工具调用的一部分存在。

因为在 AI 时代，模型本身并不天然拥有用户关系。用户真正黏住的，通常不是模型，而是工作流。

如果用户每天打开的是 Figma、Notion、Cursor，而 Claude 只是这些产品背后的一个 API，那 Anthropic 的位置就会很危险：它离用户很近，但又不够近；它很重要，但随时可以被替换。对很多工具来说，底层模型并不是不可替换的。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

所以模型公司不会满足于只做"供应商"。它们一定会想办法直接拥有用户入口，让用户在自己的产品里完成工作，而不是只在别人的工具里调用能力。

Claude Design、Claude Code，其实都在做同一件事：把模型从后台能力，变成前台产品。

这和苹果当年做垂直整合的逻辑非常像。硬件、系统、应用生态，不是为了堆功能，而是为了不把控制权交给中间层。模型公司现在警惕的，就是工具层长成新的"操作系统"。

从这个角度看，Figma Make 同时支持 Claude 和 Gemini 3 Pro，对 Figma 来说当然是理性的；但对 Anthropic 来说，这恰恰说明工具层有了议价权，也有了切换底层能力的空间——这才是它们最不想看到的事。

---

## 工具软件真正面对的是两层压力

现在很多工具公司都在说，自己已经"拥抱 AI"了。这个动作当然重要，但它解决不了全部问题。

因为工具软件正在面对的压力，其实至少有两层。

第一层：入口被慢慢截断

当用户开始在 Claude 里直接完成原来需要在 Figma 里做的一部分工作时，最先受到冲击的，通常是使用时长和打开频次。

这类变化一开始不会特别剧烈，它更像一种缓慢侵蚀。

先被影响的，往往是非专业用户；然后是初级设计师；再往后，可能会扩展到资深设计师手里那些低创意密度、但占用了大量时间的工作，比如做演示文稿、快速出原型、搭落地页、整理视觉方向。

这些工作不一定是设计师最核心的价值，但它们常常构成了一大块使用时长。而对工具产品来说，使用时长从来不是小事。

第二层：模型升级会不断重置竞争起点

这一层更隐蔽，也更麻烦。

过去两年，工具软件公司的标准防御动作基本都差不多：接大模型，上 AI 功能。Figma 有 Make 和 Weave，Notion 有 Notion AI，Adobe 有 Firefly。短期看，这些动作都有效，因为用户会觉得原有工具更聪明了。

但问题是，这些 AI 功能的能力上限，很多时候并不掌握在工具公司自己手里，而是掌握在底层模型供应商手里。

Figma Make 支持 Claude 和 Gemini，这意味着它的能力会随着底层模型进步而提升；但也意味着，当 Anthropic 直接把更新、更强的能力优先放进 Claude Design 时，Figma 拿到的很可能只是"合作伙伴可用的版本"。

很多工具这两年努力做出的差异化功能，到了下一代基础模型发布时，可能就变成了默认标配。过去已经发生过很多次：不少靠"AI 写作""AI 摘要"建立卖点的产品，就是这样迅速失去区分度的。

---

## 哪些工具更容易被挤压，哪些还留有空间？

说到这里，一个反例会很自然地跳出来：如果模型公司这么强，为什么 Cursor 还在增长？

这正是有意思的地方。

Claude Code 存在，但 Cursor 在 2026 年 3 月 ARR 三个月内翻倍，达到 2 亿美元，依然高速增长。这说明事情不是"模型公司下场，工具公司就没戏"这么简单。关键还是要看，你的价值到底建在哪里。

我更倾向用下面四个维度来看。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

维度一：你是工作流的起点，还是不可绕过的中间节点

入口型产品通常更危险。Claude Design 想做的，显然就是"从一个想法开始，不必先打开设计工具"。如果一个工具的价值主要体现在"我是最先被打开的那个界面"，那它就会更容易受到威胁。

真正相对安全的，常常不是入口，而是流程里那些已经离不开的环节。最后决定它能不能守住位置的，还是两件事：卡得有多深，换起来有多麻烦。

维度二：用户到底积累了多少迁移成本

Cursor 的韧性，很大程度上就在这里。工程师的工作流不是一个轻量界面，而是一整套深度绑定的东西：代码库历史、团队协作方式、IDE 配置、本地环境、插件习惯、审查流程。这些东西不是说换就换的。

Figma 其实也有类似的护城河：组件库、团队协作网络、历史版本、设计规范沉淀。这些才是它真正重要的部分，而不是某一个 AI 功能。

如果一个产品的核心价值只是"帮你生成一段内容"，而不是"帮你积累一套长期资产"，那迁移成本通常很低，风险也会更高。

维度三：核心操作能不能被自然语言替代

你可以问自己一个问题：用户在你产品里最核心的操作，能不能被一句自然语言比较准确地描述出来？如果可以，那它迟早会被模型吸进去。

比如贝塞尔曲线的精细控制、复杂界面的空间推敲、微交互的细节调节，这些都不是"说一句话"就能精准完成的事。在这类场景里，直接操控依然比自然语言更有效。

维度四：差异化，究竟建立在模型能力上，还是建立在场景积累上

这是最底层的问题。

如果你的差异化主要来自"我们也接了一个很强的模型"，那这层优势很脆弱，因为模型公司下一次升级，就可能把它吞掉。

但如果你的价值来自长期积累——用户历史数据、团队协作网络、深度场景上下文、组织流程中的嵌入位置，那模型升级虽然会带来压力，却不会一下子把你的价值打穿。

四维度速查

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

---

## Figma 的方向没有偏，难的是节奏不在它手里

Figma 现在大致在推进三条线：

Figma Make（2025 年 5 月测试，7 月正式发布）：AI 原型生成，同时支持 Claude 和 Gemini 3 Pro。它没有把自己绑定死在某一家模型公司身上，而是试图把自己放在"模型整合层"的位置。

Figma MCP：把设计决策更深地带进开发环境，让设计系统在代码侧也能有更明确的映射。本质上是在增强跨角色协作，把迁移成本往更深层做。

Figma Make Kits（2026 年 4 月更新）：让 AI 生成尽量约束在已有组件库和设计规范里，而不是凭空生成。这个方向正好对上了 Claude Design 的"读取 codebase 并应用设计系统"。

Figma 的核心策略用一句话概括：押注"上下文 + 控制"，不做纯生成，是让 AI 在有约束、有历史积累的环境里工作。

问题在于，方向对，不代表节奏就对。模型升级的节奏不掌握在 Figma 手里。Anthropic 可以优先把最新能力放进自己的产品，合作方拿到的往往不是同一时点、同一优先级的能力。这个差距，产品设计可以缓解一部分，但很难彻底抹平。

---

## 对工具类软件来说，更重要的是什么？

如果你在工具软件公司，有三件事要尽早想清楚：

第一，不要把"接入大模型"当成真正的护城河。这件事现在已经越来越像基础配置了。别人几周能接上的能力，不足以构成长期壁垒。

第二，要把"积累型护城河"的优先级放到"AI 功能"前面。你真正该盯住的，是用户历史数据、协作网络、深度流程绑定、组织内部沉淀下来的上下文，而不是每次模型升级后多了什么新按钮。

第三，你的核心操作，能不能被语言替代？如果能，那你应该尽快考虑往更深的专业操作、更高的场景复杂度，或者更强的组织嵌入去走。否则今天还能卖的能力，明天可能就只是别人产品里的一个默认选项。

如果你是在评估要不要进入工具类赛道，也可以先用上面的四个维度过一遍。这个赛道并没有关门，真正难的是先把自己为什么能活下来想明白：你的差异化到底来自哪里；更重要的是，下一轮基础模型升级之后，它还在不在。

---

## 结尾

现在已经没人再讨论要不要拥抱 AI 了，大家都在拥抱。真正需要想清楚的：是当核心能力来自模型公司时，你的护城河还能建在哪里？

继续滑动看下一个

近观AI录

向上滑动看下一个