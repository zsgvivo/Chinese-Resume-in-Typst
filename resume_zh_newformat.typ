/*
  Typst Resume Template
  Inspired by a LaTeX template by Anubhav Singh
  Adapted for Typst by a helpful AI assistant
  Current Date: auto
*/

#set document(
  author: "Yang Ding",
  title: "Yang Ding's Resume",
)
#set page(
  paper: "a4",
  margin: (left: 1.5cm, right: 1.5cm, top: 1.5cm, bottom: 1.5cm),
)
#set text(
  font: "Linux Libertine", // A good open-source font with a professional feel
  size: 11pt,
)
#set par(
  leading: 0.6em
)

// Auto-updated date for build time.
#let last-updated = datetime.today().display("[year].[month].[day]")

// Custom function for underlined links, similar to the LaTeX version
// #let myul(content) = link(content.body, underline(stroke: 0.5pt, content.body))

// Custom function for section titles with a rule
#let section-title(title) = {
  v(-4pt) // Reduce space above the section
  text(15pt, weight: "bold", smallcaps(title))
  v(-8pt)
  line(length: 100%)
  v(-4pt) // Reduce space below the rule
}

// Custom function for list items in sections like Education/Work
#let entry(title, location, role, dates) = {
  grid(
    columns: (1fr, auto),
    rows: (auto, auto),
    gutter: 0.8em,
    [#text(weight: "bold")[#title]],
    align(right)[#location],
    [#text(style: "italic",0.9em)[#role]],
    align(right)[#text(style: "italic", 0.9em)[#dates]],
  )
  // v(-8pt)
}

// 项目
#let item(
  title,
  desc,
  endnote,
  firstcolumnwidth: 40%
) = {
  v(0.25em)
  grid(
    columns: (firstcolumnwidth, 1fr, auto),
    gutter: (2em),
    title, desc, align(right, endnote)
  )
}

// --- DOCUMENT STARTS HERE ---

// ==== HEADING ====
#grid(
  columns: (1fr, auto), // One row, two columns
  // --- Left Column Content ---
  // We create a vertical block here.
  [
    #text(22pt, weight: "bold")[丁阳] \
    #v(1pt) // <-- Larger vertical space for the left side
    // Master's Student at Tsinghua University
    // 清华大学硕士研究生
  ],
  // --- Right Column Content ---
  // We align the entire right block to the top.
  align(bottom + right)[
    // This inner block handles the right side's content.
    #block[
      Email: #link("mailto:yangding2022@gmail.com", "yangding2022@gmail.com")\
      // #v(1pt) // <-- Smaller vertical space for the right side
      电话号码: +86 18835709301\
    ]
  ]
)

// #section-title("Biography")
// I'm currently a Master's student at Tsinghua University, majoring in Electronic and Information Engineering. My research is focused on multimodal understanding and reinforcement learning.
// 我目前是清华大学的二年级硕士研究生，专业为电子信息（人工智能）。我的主要研究方向包括多模态大语言模型和强化学习。

// ==== EDUCATION ====
#section-title("教育背景")
// #entry(
//   "Chinese Academy of Sciences", "Beijing, China",
//   "Ph.D. in Pattern Recognition", "2002-2008"
// )
#entry(
  "深圳国际研究生院, 清华大学", "深圳",
  "人工智能专业，硕士研究生", "2024-2027"
)
#entry(
  "自动化系, 清华大学", "北京",
  "自动化专业，工学学士 (GPA 3.72 / 4.0)", "2020-2024"
)
#section-title("实习经历")
#entry(
  "字节跳动", "上海",
  "多模态算法实习生", "2025.1- 2026.1"
)
// - #text[Conducted research in the areas of multimodal LLM reasoning and reinforcement learning, published/submitted 2 papers as first/co-first author.]
#text(0.9em)[在多模态大语言模型和强化学习领域开展科研探索，以第一/共同第一作者身份发表 2 篇论文，基于强化学习方法提升了多模态大模型在多图、长视频推理场景下的表现。]

#entry(
  "美团", "北京",
  "大语言模型算法实习生", "2023.9-2023.12"
)
// - #text[Designed data alignment strategies to enhance the performance of pre-trained language models on knowledge-intensive benchmarks.]
#text(0.9em)[基于语义分析和聚类算法，对中文预训练数据集进行了长尾知识分布分析，设计并实施基于知识重分布的模型与数据对齐流程，提升了基于 Llama 2 的预训练大模型在 MMLU 等知识评测任务上的表现]

#section-title("科研论文")
#link("https://arxiv.org/abs/2506.14907")[[NIPS'25] *PeRL: Permutation-Enhanced Reinforcement Learning for Interleaved Vision-Language Reasoning*] ~
#text[Yizhen Zhang, *Yang Ding*,  Shuoshuo Zhang, Xinchen Zhang, Haoling Li, Zhong-zhi Li, Peijie Wang, Jie Wu, Lei Ji, Yelong Shen, Yeyun Gong, Yujiu Yang (Co-first author)]

// - We propose PeRL, a novel reinforcement learning training framework designed for interleaved multi-image tasks, which eliminates positional bias in multi-image reasoning with multimodal models.
#text(0.9em)[我们提出了一个为交错多图推理任务设计的强化学习训练算法 PeRL，旨在消除 MLLM 在多图推理任务中的位置偏差，在多个多图推理基准测试上取得了 SoTA 性能。]


[In Submission] *VideoZoomer: Reinforcement-Learned Temporal Focusing for Long Video Reasoning*  ~
#text[*Yang Ding*, Xin Lai, Yizhen Zhang, Ruihang Chu, Yujiu Yang]

// - We propose VideoZoomer, an agentic framework that learns to dynamically inspect high-frame-rate clips from long videos, achieving state-of-the-art performance on major benchmarks while using significantly fewer frame budgets than previous methods.
#text(0.9em)[我们提出了一个为长视频推理任务设计的训练和推理框架 VideoZoomer，通过工具调用动态关注长视频中的关键片段，在多项长视频推理基准测试上超越了先前效果，同时使用显著更少的帧预算。]



#section-title("项目经历")
#item(
  link(
    "https://llm-merging.github.io/",
    [*LLM Merging Competition*]
    ),
    [NIPS 2024 Challenge],
    [ 2024.9 – 2024.11],firstcolumnwidth: 40%
    )

// - Applied the DARE-TIES merging strategy to efficiently integrate LLMs across multiple base models, enhancing multi-task generalization performance
// - Ranked 1st among 150 teams on the public leaderboard and 5th in the final standings
// everaged the DARE-TIES merging strategy to create a superior multi-task model, achieving 1st place on the public leaderboard and a final ranking of 5th among over 150 teams.
// -  Propose a new model merging strategy to create a superior multi-task model, achieving 1st place on the public leaderboard and a final ranking of 5th among over 150 teams.
#text(0.9em)[提出了一种新的模型融合策略，在多种基座模型上实现LLM的高效融合，提升多任务泛化性能，在公开榜单上 150 支队伍中排名第 1，最终成绩排名第 5。]
#item(
  link(
    "https://datastudio.wps.cn/matchcenter/competition/1/introduction",
    [*Chinese Text Proofreading Competition*]
  ),
    [Kingsoft Office 2024 Algorithm Challenge], 
    [ 2024.9 – 2024.10 ], firstcolumnwidth: 40%
)

// - Completed Chinese text proofreading tasks using model fine-tuning and ensemble learning methods based on the Qwen2.5 model
// -	Achieved 4th place among 53 teams
// - Achieved 4th place among 53 teams by developing a robust proofreading solution using model fine-tuning and ensemble learning methods.
#text(0.9em)[调研了前沿文本校对方法，使用基于 Qwen2.5 的模型微调和集成学习方法完成了给定的中文文本校对任务， 在 53 支队伍中排名第 4。]

#section-title("语言能力")
#item(
  [*TOEFL iBT*], [101/120 (Reading 29, Listening 28, Speaking 22, Writing 22)], [ 2023.7], 
  firstcolumnwidth: 20%
)
#item(
  [*GRE*], 
  [325 (Verbal 155, Quantitative 170, Writing 3.0)], 
  [ 2022.4],
  firstcolumnwidth: 20%
)

// ==== LAST UPDATED ====
#place(bottom + right)[
  #text(0.8em, fill: gray)[最后更新：#last-updated]
]
