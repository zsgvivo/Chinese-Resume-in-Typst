#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// https://iconpark.oceanengine.com/official
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")
#let faWork = icon("icons/fa-work.svg")
#let faLocation = icon("icons/fa-location.svg")
#let faLanguage = icon("icons/fa-language.svg")
#let faPaper = icon("icons/fa-paper.svg")
#let LATEX = {
  [L];box(move(
    dx: -4.2pt, dy: -1.2pt,
    box(scale(65%)[A])
  ));box(move(
  dx: -5.7pt, dy: 0pt,
  [T]
));box(move(
  dx: -7.0pt, dy: 2.7pt,
  box(scale(100%)[E])
));box(move(
  dx: -8.0pt, dy: 0pt,
  [X]
));h(-8.0pt)
}

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 9.5pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.2cm,
  bottom: 1.5cm,
  left: 1.5cm,
  right: 1.5cm,

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photographWidth: 10em,
  // gutterWidth: 2em,
)[

= 丁阳

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 188-3570-9301"
  ),
  (
    icon: faEnvelope,
    content: "yangding2022@gmail.com",
    link: "mailto:yangding2022@gmail.com"
  ),
  (
    icon: faBuildingColumns,
    content: "清华大学",
  ),
  (
    icon: faGraduationCap,
    content: "人工智能",
  ),
  // (
  //   icon: faGithub,
  //   content: "github.com/orangex4",
  //   link: "https://github.com/orangex4",
  // ),
  (
    icon: faLocation,
    content: "广东 · 深圳",
  )
)
][
// #h(2em)  // 手动顶行, 2em 代表两个字的宽度

// 我是 OrangeX4，你也可以叫我 *一只方橙* 或 *方橙*。现在是南京大学人工智能学院 2020 级本科生，正深陷于学习数学、编程和英语的无边苦海中。你问为什么我的名字那么奇怪？ 大概是我喜欢吃橘子和橙子，又谐音方程，还有和我的名字谐音的缘故吧。喜欢一切新奇的东西，兴趣十分广泛。
]


== #faGraduationCap 教育背景

#timesidebar(withLine: true, sideWidth: 12%)[
  #[
    #set text(0.6em)
    （预计）
  ] 
  2027.07 ][
  2024.09
][
  *清华大学* · SIGS · 人工智能硕士
  
  - #text(0.95em, "IIGroup, 自然语言处理方向")
]

#timesidebar(withLine: true, sideWidth: 12%)[
  2024.07
][
  2020.09
][
  *清华大学* · 自动化系 · 自动化专业 · 工学学士
  
  - GPA: 3.72 / 4.0 // , ranking \~ 40%

  - #text(0.95em,
    "部分核心课程：计算机语言与程序设计(4.0/4.0)，数据结构与算法(4.0/4.0)，操作系统(4.0/4.0)， 计算机网络与应用(4.0/4.0)， 人工智能基础(4.0/4.0)， 数字视频基础与应用(4.0/4.0)")
]




// == #faAward 获奖情况

// #item(
//   [ *人民奖学金* ],
//   [ *一等奖 · 二等奖* ],
//   date[ 2021 年 11 月 – 2022 年 11 月 ]
// )

// #item(
//   [ *人工智能 +* ],
//   [ *二等奖* ],
//   date[ 2021 年 11 月 – 2022 年 11 月 ]
// )






== #faWork 实习经历

// 在这里添加你的实习经历
#item(
  [ 美团, NLP 中心 \ #text(0.9em ,"LLM算法策略实习")], //北京三快网络科技有限公司
  [ ],
  date[北京 \ 2023 年 09 月 – 2023 年 12 月  ]
)

- 基于语义分析和聚类算法，对中文预训练数据集进行了长尾知识分布分析
- 设计并实施基于知识重分布的模型与数据对齐流程，提升了基于 Llama 2 的预训练大模型在 MMLU 等知识评测任务上的表现 // 知识增强？

#item(
  [ 字节跳动, Tiktok \ #text(0.9em ," 多模态大模型科研实习")], //北京三快网络科技有限公司
  [ ],
  date[上海 \ 2025 年 01 月 – 现在  ]
)

- 对多模态大语言模型视频理解以及强化学习算法方向开展科研探索

== #faPaper 论文发表

#grid(
  columns: (1fr, auto),
  gutter: 1em,
  link("https://arxiv.org/abs/2506.14907")[[NIPS'25] PeRL: Permutation-Enhanced Reinforcement Learning for Interleaved Vision-Language Reasoning],
  align(right)[共同一作]
)

- 我们提出了 PeRL, 一种新的针对交错多图任务的强化学习训练框架, 消除多模态大模型多图推理时的位置偏差
// #item(
//   [],
//   [],
//   []
// )
// #publication(
//   [基于深度学习的自然语言处理新方法],
//   [张三, 李四, 王五],
//   [计算机学报],
//   [2023-06],
//   [https://example.com/paper1],
//   [提出了一种新的注意力机制，在多个基准测试中达到最先进性能]
// )


== #faCode 项目经历

#item(
  link(
    "https://llm-merging.github.io/",
    [*LLM Merging Competition*]
    ),
    [NIPS 2024 Challenge],
    date[ 2024 年 09 月 – 2024 年 11 月 ]
    )

// - 使用 DARE-TIES 融合策略在多种基座模型上实现LLM的高效融合，提升多任务泛化性能
- 调研并测试了前沿模型融合策略，在多种基座模型上实现LLM的高效融合，提升多任务泛化性能
- 在公开榜单上 150 支队伍中排名第 1，最终成绩排名第 5


#item(
  link(
    "https://datastudio.wps.cn/matchcenter/competition/1/introduction",
    [中文文本智能校对大赛]
  ),
    [金山办公 2024算法挑战赛], 
    date[ 2024 年 09 月 – 2024 年 10 月 ]
)

- 调研了前沿文本校对方法，使用基于 Qwen2.5 的模型微调和集成学习方法完成了给定的中文文本校对任务
- 在 53 支队伍中排名第 4

// #item(
//   [基于机器学习的电池寿命预测\ #text(0.9em,"清华大学，自动化系")],
//   [科研项目],
//   date[2023 年  04 月 - 2023 年 05 月]
// )

// // - 开发了一种基于 self-attention 机制的编码模型，从电池测试数据中提取全局衰减信息
// - 针对电池物理特性开发了一种基于注意力机制的编码模型，从电池测试数据中提取全局衰减信息
// - 利用编码特征实现了电池寿命预测，实验结果显示在预测精度上优于传统回归模型

// #item(
//   [基于机器学习的社交网络意见动力学的控制\ #text(0.9em,"清华大学，自动化系")],
//   [科研项目],
//   date[2022 年 05 月 - 2022 年 09 月]
// )
// - 开发了一种结合图神经网络和深度强化学习的方法，用于估计和控制社交网络中的意见动态
// - 开发并在仿真环境中测试了该方法，仿真实验结果显示其性能显著优于传统算法
// #item(
//   link(
//     "https://github.com/OrangeX4/Latex-Sympy-Calculator",
//     [ *Latex Sympy Calculator* ]
//   ),
//   [ *个人项目* ],
//   date[ 2021 年 02 月 – 2021 年 04 月 ]
// )

// #tech[ NodeJS, Python, VS Code ]

// 一个用于在 VS Code 中使用 LaTeX 数学公式进行「科学计算」的插件

// - 使用 ANTLR 将 LaTeX 语句编译为 Sympy 语句
// - 通过 Flask 搭建本地 HTTP 服务器与 VS Code 插件进行通信
// - 可以进行多种类型的科学计算，如积分求导、矩阵计算、无穷级数计算等

// #item(
//   link(
//     "https://github.com/OrangeX4/Reversi",
//     [ *黑白棋 Reversi* ]
//   ),
//   [ *课程项目* ],
//   date[ 2021 年 02 月 – 2021 年 04 月 ]
// )

// #tech[ React, Python, AI ]

// 基于 React 与 Antd 的黑白棋前端，与基于 Python 的黑白棋 AI 后端

// - 使用基于评估函数的 BFS 实现了黑白棋 AI，并实现了 Alpha-Beta 剪枝
// - 基于 React 搭建了一个黑白棋平台前端，支持玩家对战、人机对战和 AI 对战
// - 在后端使用 Flask 及 Socket.io 库，实现了玩家之间的联机对战


// == #faBuildingColumns 校园经历


// #item(
//   [ *微软学生俱乐部技术部部长* ],
//   [],
//   date[ 2021 年 09 月 – 2022 年 09 月 ]
// )

== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 15%)[
  // *操作系统*
  
  // *掌握*
  
  // *熟悉*

  // *了解*

  *编程语言*

  *机器学习框架*

  *其他技能*
][
  // #faLinux Linux, #h(0.5em) #faWindows Windows

  // Webpack, Java

  Python, C/C++, Shell, Java, Rust, Matlab, Mathematica
  #v(0.2em)

  PyTorch, HuggingFace, vLLM, SGLang, DeepSpeed, LLaMA-Factory
  #v(0.2em)

  #LATEX  , Git

  // Python, C/C++; PyTorch, huggingface, vLLM, SGLang  ; LaTeX, Git 
  
  // Java, Rust, Matlab, Mathematica; TensorFlow, DeepSpeed

]
== #faLanguage 语言能力
#item(
  [*TOEFL iBT*], [101/120 (Reading 29, Listening 28, Speaking 22, Writing 22)], date[ 2023 -年 07 月], 
  firstcolumnwidth: 20%
)
#item(
  [*GRE*], 
  [325 (Verbal 155, Quantitative 170, Writing 3.0)], 
  date[ 2022 年 04 月],
  firstcolumnwidth: 20%
)