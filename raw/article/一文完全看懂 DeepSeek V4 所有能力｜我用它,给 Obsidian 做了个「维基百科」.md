---
title: "一文完全看懂 DeepSeek V4 所有能力｜我用它,给 Obsidian 做了个「维基百科」"
source: "https://mp.weixin.qq.com/s/F1N1xZmfvlTIHwxNfaFN2g"
author:
  - "[[杉森楠]]"
published:
created: 2026-04-24
description: "发布会、没预热、没海报，DeepSeek V4 今早把 1M 上下文送给了所有人"
tags:
  - "clippings"
---
杉森楠 *2026年4月24日 11:41*

![image-20260424032154077.png](https://mmbiz.qpic.cn/sz_mmbiz_png/wGCKala2nl1crGayUlXRicFta0FFbI6EibFy4mQaT1WvBXAreA0iasHvxSe6mWGePhG7iaNoyTrpXDlOvWV8W6vy03UzmBFYpXMVWz2TyaE2U9Y/640?wx_fmt=png&from=appmsg&watermark=1&tp=webp&wxfrom=5&wx_lazy=1#imgIndex=0)

今天早上 10:56,北京。DeepSeek 又一次不打招呼地发模型了。

这次叫 V4 预览版,全新系列,上线即开源，是大家期待了非常非常久的模型。

没预热,没发布会,连海报都没怎么传。很符合它们一贯的风格,东西先甩出来,热度自己来 😊。

很符合他们在官宣文里一句话：「不诱于誉，不恐于诽，率道而行，端然正己。」

本文干两件事。

**第一件,一次性把 DeepSeek V4 的能力讲清楚。** 两个版本、1M 上下文、Agent 专项优化、API 变动、开源权重,全部串起来。

**第二件,我拿 V4 在 Obsidian 里做了一个「维基百科」。** 这是我这一年里一直想做但一直没做成的事。看完前半段,你会明白,为什么偏偏是 V4 让它变得可行。

往下看吧,信息密度比较高。

先说最直接的信息。这一波 V4,一次发了两个版本:**V4-Pro 和 V4-Flash** 。一个走性能优先,一个走快且便宜。两个版本同时上线、同时开源、同时在 API 里可以直接调。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

三端入口都已经打通。官网 chat.deepseek.com 直接登录就能用,App 更新到最新版也能用,API 的话改一下 model\_name 就能切过去:

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

base\_url 不变,接口同时兼容 OpenAI 和 Anthropic,两边的 SDK 都能直接接 🔌。

先看旗舰版 V4-Pro。

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这张性能图信息量很大,三个点值得单独拎出来看。

> **第一,Agent 能力直接拉到开源第一梯队。**
> 
> 在 Agentic Coding 评测里,V4-Pro 已经是目前所有开源模型里最强的。更有意思的是,DeepSeek 官方说,这个模型已经成了他们公司内部员工日常用的 Agentic Coding 主力模型。体感优于 Sonnet 4.5,交付质量接近 Opus 4.6 的非思考模式,距离 Opus 4.6 的思考模式还有一段差距。

> **第二,世界知识储备很多。**
> 
> 在世界知识测评里,V4-Pro 大幅领先其他所有开源模型,只稍稍落后于 Gemini-Pro-3.1。意思就是,你问它一些偏门的历史、人物、事件,它不太会瞎编。

> **第三,推理能力摸到了顶级闭源的门槛。**
> 
> 数学、STEM、竞赛型代码,V4-Pro 超过了所有公开评测过的开源模型,成绩直接对标世界顶级闭源模型。

三点放一起看,可以直接下结论：

==**这大概是开源模型第一次,在多个维度上一起追到了闭源第一梯队的门槛。**==

过去一年,开源追闭源的节奏,基本都是某一项领先、别的项拉胯,偏科生状态。V4-Pro 这次看起来是一起上线,没有明显短板。Agent、知识、推理,三样都能打。

对做 AI 应用的人来说,这件事意义不小。 **过去选模型要在闭源的贵和开源的弱之间来回掂量,现在多了一个可以认真考虑的选项。在意成本、要求私有化部署的场景里,V4-Pro 第一次给了一个不用太妥协的答案** 。

再说 V4-Flash。

很多人看到 Flash 这两个字,下意识觉得这是阉割版。并不。V4-Flash 的逻辑,是把参数和激活量砍下来,换更快的响应和更低的价格。

它走的是另一条取舍路径:

- **世界知识储备上,它比 Pro 稍弱一些。**
	一些偏门知识点,它的准确度会低一点。
- **推理能力跟 Pro 贴得很近。**
	做数学题、写代码,两者差距没你想的那么大。
- **Agent 任务上,简单任务跟 Pro 打平,复杂任务会拉开差距。**
	日常调用完全够用,真碰到复杂 Agent 才需要切 Pro。

所以如果你是做日常应用、跑量大、在意每一次 API 调用成本,Flash 就是默认选项。真碰到复杂任务的时候,再把 Pro 切出来用。

这次 V4 最狠的一个变化,其实藏在结构层。

DeepSeek 这次自己搞了一种新的注意力机制,在 token 维度上做压缩,再配合他们之前已经发过的 DSA 稀疏注意力(DeepSeek Sparse Attention)。技术细节我就不展开了,结果很直接:**长上下文的算力和显存开销,被砍下来了一大截。**

配合这个结构,他们顺手宣布了一件事:

> ==**从现在开始,1M(一百万)上下文,是 DeepSeek 所有官方服务的标配。**==

这句话的分量,得放在整个行业里看才能感受到 🌍。

过去两年,长上下文一直是 Gemini 和 Claude 的主场。Gemini 的 2M、Claude 的 1M,都是闭源巨头给出来的能力。国内开源模型在长上下文这条赛道上,其实一直是追的状态,128K、256K 已经算能打,真正跑到 1M 并且默认开放给所有服务的,V4 是第一个。

为什么 1M 上下文重要。

因为它会直接改变你用模型的方式。

- **做 Agent 的人**
	,以前最头疼的是多轮任务里上下文丢失,现在 1M 等于给了一个超长的工作记忆,Agent 可以跑更长的链条而不断片。
- **做知识库的人**
	,以前必须切片 + 向量检索 + 重新拼,现在可以考虑把整个知识库直接塞进去,让模型一次性读完。
- **做代码的人**
	,以前大项目得靠 repomap、RAG,现在可以把整个 repo 直接喂进去,让模型先理解完整结构再动手。

==这也是为什么我看到「1M 标配」的时候,脑子里立刻跳出了一件事。一个我卡了一年的项目,现在终于有工具可以试了。==

除了上下文,V4 还专门针对 Agent 做了适配优化。

![image-20260424033202367.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

DeepSeek 官方点名了几个主流 Agent 产品:**Claude Code、OpenClaw、OpenCode、CodeBuddy** 。V4 在这些框架下的代码任务和文档生成任务,都做了专门调优。

API 层面,V4 做了一件我觉得挺到位的事:

> **base\_url 不变,同时支持 OpenAI 的 ChatCompletions 接口和 Anthropic 的接口。**
> 
> 两边 SDK 无需改造,改一下 model 参数就能跑。

V4-Pro 和 V4-Flash 都同时支持 **非思考模式** 和 **思考模式** 。思考模式里还能传一个 reasoning\_effort 参数,支持 high 和 max 两档:

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

有一件事要单独提醒一下 ⚠️。

旧的 API 模型名 deepseek-chat 和 deepseek-reasoner,**会在三个月后(2026 年 7 月 24 日)正式下线** 。过渡期内,这两个名字分别指向 V4-Flash 的非思考模式和思考模式。老项目现在就可以开始迁移了,免得到时候服务直接断掉。

权重和技术报告也都放出来了:

- Hugging Face:https://huggingface.co/collections/deepseek-ai/deepseek-v4
- ModelScope:https://modelscope.cn/collections/deepseek-ai/DeepSeek-V4
- 技术报告:https://huggingface.co/deepseek-ai/DeepSeek-V4-Pro/blob/main/DeepSeek\_V4.pdf  
	![image-20260424033108442.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

以上,就是 V4 这次发布的所有关键信息。

接下来是我自己当手工老艺人的部分。

每次新模型一发布,我第一反应都是想试点什么。写诗、画 SVG、跑 Benchmark,这些其实意义不大,发布会上官方已经做过一遍了,我再做一遍,基本等于看别人吃过的饭。

所以我每次都会给自己找一个 **过去被模型能力卡住的真实场景** 。V4 这次,我选的场景是:

==**把我整个 Obsidian vault,变成一个可以被 LLM 直接读的维基百科，而且直接放进了 Obsidian 里。**==

![image-20260424032545692.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

这个念头不新,灵感来自 Karpathy。

2025 年他发过一个想法,核心意思是:**LLM 其实不该只当问答机,它更适合当编辑。** 你把自己这些年攒的笔记、日记、文档、对话记录全部丢给它,它负责读完、理解、整理,最后输出一个维基风格的知识库。每一篇就是一个词条,词条之间用链接互相跳转。

等你要回忆什么,模型先翻目录,再翻条目,像查百科一样查你自己 📖。

这个思路我之前在 Claude 上试过一版,跑通了,但体验有三个硬伤:

- **文章一多,模型就开始漏上下文。**
	读到第 30 篇的时候,第 1 篇写了什么它已经记不太清。
- **Agent 执行多轮任务容易断链。**
	编完一篇,回头编下一篇,引用关系对不上。
- **长文件读不下。**
	我 Obsidian 里有几篇上万字的长文,只能切分再拼,拼完语义基本上就废了。

这三个痛点,每一个都卡在「上下文长度」和「Agent 连续性」上。V4 这次发布,我看完公告的第一感觉就是:

==**这三个痛点,它一次全干碎了。**==

于是我立刻动手，把 DeepSeek 的 API 接入到了 Claude Code，整个项目只花了 15 Min（我已经有了一个比较成熟的 Plan 的前提下）

操作上我没搞什么花活,用的还是 Karpathy 那套三层架构:

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

raw 里面放的是我从 Obsidian、Apple Notes、各种 PDF 和 docx 里抽出来的原始记录,加起来一千多条;wiki 是模型写出来的词条,目录结构由它自己决定;CLAUDE.md 是规则文件,告诉模型哪些能改、哪些不能动、文章该用什么语气。

![image-20260424032808276.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

关键在于怎么让 V4 跑。

我把 V4-Pro 设成思考模式,reasoning\_effort 直接拉到 max。Agent 循环里,让它一次性读完 raw 下所有原始条目,然后开始编写词条。

![image-20260424032648725.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

甚至连我川藏线徒步的所有信息全部找到了，并规划了整个逻辑：

![image-20260424032709609.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

跑完一轮之后,有三个观察特别明显。

**第一,不用切片了。**

之前 Claude 跑这件事,我得先写脚本把几百条记录分批喂,每批还得重新传一次项目规则,成本高、也容易跑偏。V4 直接把一千多条记录一口气全读完,中间没再让我补什么上下文,整个过程顺得有点意外。

**第二,Agent 真的不断链。**

它编第 50 篇词条的时候,能主动引用第 3 篇里出现过的一个概念,还会回去给第 3 篇补一个反向链接。这件事在之前的模型上,我得自己手动提醒它「别忘了 XX」。

**第三,成本意外地便宜。**

我用 Flash 跑预处理(抽关键词、分类、生成摘要),用 Pro 跑关键决策(词条拆分、跨条目链接)。两个配合下来,整个项目跑完花的 API 费用,比我预估的低了一个数量级。

最后出来的效果,老实说超预期。

==我的一千多条人生碎片,被拆成了三百多篇独立词条,每一篇标题都很清爽,像真的维基百科。== 词条之间有双向链接,能点进去跳转。更关键的是,我可以直接进行检索。

![image-20260424032829033.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

比如我搜索北京关键词：

![image-20260424032919057.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

它甚至能总结我这几年的内容创作方法论：

![image-20260424032944609.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

把跨越三年的笔记拎出来,拼成了一条清晰的时间线。看完我愣了一下,因为这条主线,我自己都没这么清楚地总结过。

那一刻我意识到,V4 带来的,其实是另一件事。 **我第一次在开源模型上,拿到了一个可以处理我整个人生数据的 Agent。**

回过头看,V4 这次发布,最重要的部分不在跑分。

那些卡在「上下文太短、Agent 太笨、成本太高」的长尾场景,今天第一次变得可做。我的 Obsidian 维基百科,只是其中一个小例子而已。

我会记得今天早上 10:56,我坐在咖啡馆里打开电脑,看到 DeepSeek 又一次不声不响发了新东西。

然后我喝了口咖啡,关掉其他所有标签页,把整个 Obsidian 交给了它。

看到这里,辛苦啦。

感谢你的阅读和「在场」!

ps. 本文所引学术论文均为知网公开资料,Skill 的评分公式和手法分类经过多轮比对,但 PUA 行为高度情境化,分析结果仅作参考,不构成任何临床诊断建议。

**「杉森楠 AI H1-H5」群已满。**

**关注后,欢迎大家入第 6 个群讨论 ♥️。**

**位置先到先得 😆。**

![image-20260420105340347.png](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

继续滑动看下一个

AI Humanist by杉森楠

向上滑动看下一个