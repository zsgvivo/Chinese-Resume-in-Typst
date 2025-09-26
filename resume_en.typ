#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
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

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消headerCenter的注释
  //headerCenter : true,
  
  // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: "profile.jpg",
  // photographWidth: 10em,
  // gutterWidth: 2em,
)[

= Ding Yang

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 188-3570-9301",
  ),
  (
    icon: faEnvelope,
    content: "yangding2022@gmail.com",
    link: "mailto:yangding2022@gmail.com"
  ),
  (
    icon: faBuildingColumns,
    content: "Tsinghua University",
  ),
  (
    icon: faGraduationCap,
    content: "Artifical Intelligence",
  ),
  // (
  //   icon: faGithub,
  //   content: "github.com/orangex4",
  //   link: "https://github.com/orangex4",
  // ),
  (
    icon: faLocation,
    content: "Guangdong  · Shenzhen",
  )
)
][
// #h(2em)  // 手动顶行, 2em 代表两个字的宽度

// 我是 OrangeX4，你也可以叫我 *一只方橙* 或 *方橙*。现在是南京大学人工智能学院 2020 级本科生，正深陷于学习数学、编程和英语的无边苦海中。你问为什么我的名字那么奇怪？ 大概是我喜欢吃橘子和橙子，又谐音方程，还有和我的名字谐音的缘故吧。喜欢一切新奇的东西，兴趣十分广泛。
]


== #faGraduationCap EDUCATION

#timesidebar(withLine: true, sideWidth: 12%)[
  #[
    #set text(0.6em)
    (Expected)
  ] 
  2027.07 ][
  2024.09
][
  *Tsinghua University* · SIGS · Master of Artificial Intelligence
  
  IIGroup, Natural Language Processing
]

#timesidebar(withLine: true, sideWidth: 12%)[
  2024.07
][
  2020.09
][
  *Tsinghua University * · Department of Automation · Bachelor of Engineering in Automation
  
  - GPA: 3.72 / 4.0 // , ranking \~ 40%

  - #text(0.9em,  "Core Courses: Computer Language and Programming (4.0/4.0), Data Structures and Algorithms (4.0/4.0), Operating Systems (4.0/4.0), Computer Networks and Applications (4.0/4.0), Fundamentals of Artificial Intelligence (4.0/4.0), Basics and Applications of Digital Video (4.0/4.0)")
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




== #faCode PROJECTS

#item(
  link(
    "https://llm-merging.github.io/",
    [*LLM Merging Competition*]
    ),
    [NIPS 2024 Challenge],
    date[ Sept. 2024 – Nov. 2024],firstcolumnwidth: 40%
    )

- Applied the DARE-TIES merging strategy to efficiently integrate LLMs across multiple base models, enhancing multi-task generalization performance
- Ranked 1st among 150 teams on the public leaderboard and 5th in the final standings

#item(
  link(
    "https://datastudio.wps.cn/matchcenter/competition/1/introduction",
    [*Chinese Text Proofreading Competition*]
  ),
    [Kingsoft Office 2024 Algorithm Challenge], 
    date[ Sept. 2024 – Oct. 2024 ], firstcolumnwidth: 40%
)

- Completed Chinese text proofreading tasks using model fine-tuning and ensemble learning methods based on the Qwen2.5 model
-	Achieved 4th place among 53 teams


#item(
  [*Battery Life Prediction Based on Machine Learning* \ #text(0.9em,"Tsinghua University, Department of Automation")],
  [Research Project],
  date[May 2022 – Sept. 2022], firstcolumnwidth: 45%
)

- Developed an encoder model based on self-attention mechanisms to extract global degradation information from battery testing data
- Used encoded features to predict battery life, achieving higher accuracy than traditional regression models

#item(
  [*Control of Opinion Dynamics in Social Networks Based on Machine Learning*\ #text(0.9em,"Tsinghua University, Department of Automation")],
  [Research Project],
  date[May 2022 – Sept. 2022], firstcolumnwidth: 45%
)
- Proposed a method combining graph neural networks and deep reinforcement learning to estimate and control opinion dynamics in social networks
- Implemented the method in PyTorch; simulation results demonstrated significant performance improvements over traditional algorithms
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

== #faWork INTERNSHIP

// 在这里添加你的实习经历
#item(
  [ *Meituan* NLP Center \ #text(0.9em ,"LLM Algorithm Strategy Intern")], //北京三快网络科技有限公司
  [ ],
  date[ Beijing \ Sept. 2023 – Dec. 2023 ]
)
	-	Conducted long-tail knowledge distribution analysis on Chinese pre-training datasets using semantic analysis and clustering algorithms
	-	Designed alignment processes for models and data based on knowledge redistribution, improving the performance of pre-trained Llama 2 on knowledge assessment tasks like MMLU


== #faWrench PROGRAMMING SKILLS

#sidebar(withLine: false, sideWidth: 30%)[
  // *操作系统*
  
  // *掌握*
  
  // *熟悉*

  // *了解*

  *Programming Languages*

  *Machine Learning Frameworks*

  *Other Skills*
][
  // #faLinux Linux, #h(0.5em) #faWindows Windows

  // Webpack, Java

  Python, C/C++, Shell, Java, Rust, Matlab, Mathematica
  #v(0.2em)

  PyTorch, HuggingFace, vLLM, SGLang, TensorFlow, DeepSpeed
  #v(0.2em)
  
  LaTeX, Git

  // Python, C/C++; PyTorch, huggingface, vLLM, SGLang  ; LaTeX, Git 
  
  // Java, Rust, Matlab, Mathematica; TensorFlow, DeepSpeed

]
== #faLanguage LANGUAGE SKILLS
#item(
  [*TOEFL iBT*], [101/120 (Reading 29, Listening 28, Speaking 22, Writing 22)], date[ July 2023], 
  firstcolumnwidth: 20%
)
#item(
  [*GRE*], 
  [325 (Verbal 155, Quantitative 170, Writing 3.0)], 
  date[ April 2022],
  firstcolumnwidth: 20%
)