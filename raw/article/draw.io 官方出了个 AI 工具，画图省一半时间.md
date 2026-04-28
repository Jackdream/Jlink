---
title: "draw.io 官方出了个 AI 工具，画图省一半时间"
source: "https://mp.weixin.qq.com/s/HkBDrSmvV0NTvH0cDZjRWA"
author:
  - "[[大模型AI之旅]]"
published:
created: 2026-04-27
description: "画图这件事，对很多人来说一直挺尴尬的。不画吧，工作汇报、方案演示、流程说明都得用图说话。画吧，工具再好用也得一个节点一个节点地摆，稍微复杂点的图能让你怀疑人生"
tags:
  - "clippings"
---
大模型AI之旅 *2026年4月26日 08:00*

## draw.io 官方出了个 AI 工具，画图省一半时间

你有没有遇到过这种情况，需求评审前一晚，你打开 draw.io 准备画个流程图，结果光是拖节点、连线、调布局就花了一个多小时。更崩溃的是，产品经理第二天说逻辑要改，你又得重新拖一遍。

画图这件事，对很多人来说一直挺尴尬的。不画吧，工作汇报、方案演示、流程说明都得用图说话。画吧，工具再好用也得一个节点一个节点地摆，稍微复杂点的图能让你怀疑人生。

最近 draw.io 官方发了个开源项目叫 drawio-mcp，直接让 Claude 这类 AI 工具生成 draw.io 图表。不用自己动手拖拽了，说一句话，图就出来了。GitHub 上已经 2700+ Star，是 draw.io 团队亲自做的，不是第三方野路子。

## 画图的痛点，其实一直都在

draw.io 这个工具本身没问题，免费开源，功能齐全，99% 的财富 500 强公司据说都在用。但画图这个动作本身就是麻烦的。

你想画个时序图，得先拖出几个对象，然后一条一条连线，每条线还得标注调用关系。画完发现布局不对，又得调整位置。改需求的时候更痛苦，可能整个图都得重新排版。

我自己的感受是，画图这件事占用的不只是时间，还有注意力。你本来在思考业务逻辑，结果被拖拽、对齐、调色这些操作打断，思路就断了。

![从手动拖拽到 AI 生成的转变](https://mmbiz.qpic.cn/mmbiz_jpg/meukczUWeTm24CyR0hmEFPLBLG3v2f85RTA0QrFyPz4VIRskkF1hDuo2CsJGRQ6q2XoGth5hTOjQymGXSSicYu56O4USs0uSQSnGRquCy4C4/640?wx_fmt=jpeg&from=appmsg&watermark=1&tp=webp&wxfrom=5&wx_lazy=1#imgIndex=0)

从手动拖拽到 AI 生成的转变

## MCP 协议是个什么东西

drawio-mcp 这个项目的核心是 MCP 协议。MCP 全称 Model Context Protocol，是 Anthropic 推出的一套标准，定义了 AI 模型怎么调用外部工具。

就是给 AI 接了一套接口，让它能操作真实的工具。以前 AI 只能给你生成文本，现在它可以直接调用 draw.io 的 API，生成可编辑的图表文件。

这个协议不只是 draw.io 在用，整个 Claude 生态里已经有不少工具接入了 MCP。你可以理解为，AI 正在从“聊天机器人”变成“能干活的助手”。

![MCP 协议连接 AI 和工具](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

MCP 协议连接 AI 和工具

## 四种接入方式，覆盖不同场景

drawio-mcp 提供了四种用法，针对不同的使用场景。

**方式一：嵌入聊天窗口**

这种方式用的是 MCP Apps 协议。AI 生成图表后，图直接显示在聊天界面里，不用跳转。

官方提供了一个托管服务地址： `https://mcp.draw.io/mcp` ，把这个地址加到 Claude.ai 的远程 MCP 服务器里就行，不需要装任何东西。

它提供两个工具：

- create\_diagram： 传入 draw.io XML，直接渲染成图表，支持缩放、平移、图层切换
- search\_shapes： 搜索 draw.io 内置的 10000+ 个形状，覆盖 AWS、Azure、GCP、Kubernetes、UML、BPMN 等库

注意，这个嵌入式渲染依赖 MCP Apps 扩展。如果你用的工具不支持这个扩展， `create_diagram` 还是能用，只是会以纯文本 XML 的形式返回。

使用起来很简单，在 Claude.ai 里直接说：

> 帮我画个用户注册流程图，包括邮箱验证和手机验证两个分支

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

Pasted image 20260425230000

  
  
Claude 会调用 `create_diagram` 工具，图表直接显示在聊天窗口里，可以缩放查看细节，也可以点“在 draw.io 中打开”继续编辑。

**方式二：浏览器里打开编辑器**

这是最早发布的版本，已经发布到了 npm，包名是 `@drawio/mcp` 。

一行命令启动：

```
1npx @drawio/mcp
```

生成图表后，会在浏览器里自动打开 draw.io 编辑器。支持 XML、CSV、Mermaid.js 三种格式，还有灯箱模式和深色模式。

比如你在 Claude Desktop 里说：

> 画个微服务架构图，包括 API Gateway、三个服务、Redis 缓存和 MySQL 数据库

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

Pasted image 20260425225008

  
  
Claude 会生成图表，然后自动在浏览器里打开 draw.io 编辑器，你可以直接在里面调整细节。

适合用 Claude Desktop 或者其他本地 MCP 客户端的人。

**方式三：Claude Code Skill（推荐本地使用）**

这种方式专门为 Claude Code 设计，不需要单独运行 MCP 服务器，只需要复制一个技能文件就行。

安装步骤很简单：

全局安装（所有项目都能用）：

```
12mkdir -p ~/.claude/skills/drawio
cp drawio/SKILL.md ~/.claude/skills/drawio/SKILL.md
```

仅当前项目安装：

```
12mkdir -p .claude/skills/drawio
cp drawio/SKILL.md .claude/skills/drawio/SKILL.md
```

装好之后，在 Claude Code 里直接用 `/drawio` 命令就能画图了。

使用示例：

```
123/drawio create a flowchart for user login
/drawio sequence diagram for API auth
/drawio png class diagram for the models in src/
```

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

Pasted image 20260425224634

  
  
Claude Code 会生成 draw.io 的原生 XML，写到 `.drawio` 文件里，然后自动打开。不依赖任何外部服务，也没有网络请求。

**方式四：项目指令（零安装）**

如果你用的是 Claude.ai 的项目功能，还有一种更简单的方式，把一段说明贴到项目指令里，告诉 Claude 如何生成 draw.io 的 URL。不需要安装任何东西，Claude 会通过 Python 代码执行来生成可点击的链接。

适合临时使用、不想折腾安装的场景。

![四种接入方式对比](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

四种接入方式对比

## 导出格式，内嵌 XML 可二次编辑

Claude Code Skill 方式支持把图表导出成多种格式，不只是 `.drawio` 文件。

在命令里提到格式就行：

```
123/drawio png flowchart for user login     # → login-flow.drawio.png
/drawio svg: ER diagram for e-commerce   # → er-diagram.drawio.svg
/drawio pdf architecture overview        # → architecture-overview.drawio.pdf
```

| 格式 | 文件扩展名 | 说明 |
| --- | --- | --- |
| 默认 | .drawio | 原生 XML，可直接在 draw.io 里编辑 |
| PNG | .drawio.png | 图片格式，内嵌了 XML，可以重新拖入 draw.io 编辑 |
| SVG | .drawio.svg | 矢量图，内嵌 XML，同样可以二次编辑 |
| PDF | .drawio.pdf | 可打印，内嵌 XML，可二次编辑 |

这里有个细节值得注意，导出的 PNG/SVG/PDF 文件里都内嵌了原始的 XML 数据。也就是说，即便导出成了图片，把文件拖回 draw.io 还是可以继续编辑，数据不会丢失。

## 10000+ 形状库，AI 不会把 Lambda 画成方块

draw.io 内置了大量图标库，drawio-mcp 的 `search_shapes` 工具可以搜索这些形状。云服务方面有 AWS、Azure、GCP，容器编排有 Kubernetes，行业标准覆盖 UML、BPMN、P&ID、电气图、思科网络图等。总数超过 10000 个形状。

搜索之后返回的是可以直接用在 XML 里的样式字符串，AI 调用这个工具之后能确保图标准确，不会把 Lambda 画成普通方块。

这个设计挺聪明的。AI 生成图表时，如果你提到“AWS Lambda”，它会先调用 `search_shapes` 找到对应的图标样式，然后生成带正确图标的 XML。你拿到的图，图标是对的，不需要自己再去改。

举个例子，你说：

> 画个 AWS 架构图，包括 Lambda、API Gateway、DynamoDB 和 S3

AI 会先搜索这些服务的官方图标，然后用正确的图标生成架构图。不会出现 Lambda 被画成普通方块、S3 被画成文件夹这种情况。

## 技术设计，四种方式共用一份文档

整个仓库有一个文件叫 `shared/xml-reference.md` ，是所有方式共用的 XML 生成参考手册。里面详细写了边的路由规则、容器、图层、标签、元数据、深色模式、样式属性等内容。

MCP App Server 在启动时读取这个文件，MCP Tool Server 也在启动时读取，Claude Code Skill 则在运行时通过 GitHub Raw URL 拉取它。四种方式都用这一份文档，保证生成的 XML 风格一致。

形状搜索索引是离线预构建的，从 draw.io 客户端源码里提取，提交到了仓库里。不需要联网才能搜索形状。

## 从拖拽到生成，画图方式的转变

drawio-mcp 做的事情不复杂，让 AI 直接写 draw.io 的 XML，省掉手动拖拽的步骤。但这个转变背后，其实是工作方式的变化。

以前画图，你得先想清楚要画什么，然后打开工具，一个节点一个节点地摆。现在你只需要说一句话，“画个用户登录的流程图”，图就出来了。如果不满意，再说一句“把验证码环节加上”，图就更新了。

这种方式的好处是，你的注意力可以一直停留在业务逻辑上，不会被工具操作打断。画图变成了一个自然的对话过程，而不是一个需要切换思维模式的独立任务。

MCP 协议在这里起的作用，是把 AI 和工具连接起来。以前 AI 只能给你生成文本，你还得自己复制粘贴到工具里。现在 AI 可以直接操作工具，生成可编辑的文件。这个变化看起来不大，但体验完全不一样。

## 小结

drawio-mcp 目前已有 3200+ Star，是 draw.io 官方团队维护的，更新比较积极。四种接入方式覆盖了不同场景，只用网页的，添加一个 MCP 服务器地址就行。用 Claude Desktop 的，装一个 npm 包。用 Claude Code 的，复制一个技能文件。如果不想装任何东西，贴一段项目指令就能用。

项目地址：https://github.com/jgraph/drawio-mcp

有兴趣可以去看看。

---

**觉得有用的话，点个「在看」「赞」「转发」三连吧，这对我真的很重要。**

**记得给公众号加星标⭐，不然容易错过推送。**

**后台回复「skill」，获取更多 Claude Code Skills 资源。**

**我创建了一个skill分享交流群，有兴趣的可以加入。**

![图片](data:image/svg+xml,%3C%3Fxml version='1.0' encoding='UTF-8'%3F%3E%3Csvg width='1px' height='1px' viewBox='0 0 1 1' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'%3E%3Ctitle%3E%3C/title%3E%3Cg stroke='none' stroke-width='1' fill='none' fill-rule='evenodd' fill-opacity='0'%3E%3Cg transform='translate(-249.000000, -126.000000)' fill='%23FFFFFF'%3E%3Crect x='249' y='126' width='1' height='1'%3E%3C/rect%3E%3C/g%3E%3C/g%3E%3C/svg%3E)

**微信扫一扫赞赏作者**

skills · 目录

作者提示: 个人观点，仅供参考

继续滑动看下一个

大模型AI之旅

向上滑动看下一个