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
#let last-updated = datetime.today().display("[year]-[month]-[day]")

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
    [#text(style: "italic")[#role]],
    align(right)[#text(style: "italic")[#dates]],
  )

}

// --- DOCUMENT STARTS HERE ---

// ==== HEADING ====
#grid(
  columns: (1fr, auto), // One row, two columns
  // --- Left Column Content ---
  // We create a vertical block here.
  [
    #text(22pt, weight: "bold")[Yang Ding] \
    #v(1pt) // <-- Larger vertical space for the left side
    Master's Student at Tsinghua University
  ],
  // --- Right Column Content ---
  // We align the entire right block to the top.
  align(bottom + right)[
    // This inner block handles the right side's content.
    #block[
      Email: #link("mailto:yangding2022@gmail.com", "yangding2022@gmail.com")\
      // #v(1pt) // <-- Smaller vertical space for the right side
      Mobile: +86 18835709301\
    ]
  ]
)

// #section-title("Biography")
// I'm currently a Master's student at Tsinghua University, majoring in Electronic and Information Engineering. My research is focused on multimodal understanding and reinforcement learning.

// ==== EDUCATION ====
#section-title("Education")
// #entry(
//   "Chinese Academy of Sciences", "Beijing, China",
//   "Ph.D. in Pattern Recognition", "2002-2008"
// )
#entry(
  "SIGS, Tsinghua University", "Shenzhen, China",
  "M.Eng in Electronic and Information Engineering", "2024-2027"
)
#entry(
  "Department of Automation, Tsinghua University", "Beijing, China",
  "B.Eng in Automation (GPA 3.72 / 4.0)", "2020-2024"
)
#section-title("Internships")
#entry(
  "Tiktok", "Shanghai, China",
  "Multimodal Algorithm", "2025.1-now"
)
- #text[Conducted research in the areas of multimodal LLM reasoning and reinforcement learning, published/submitted 2 papers as first/co-first author.]

#entry(
  "MeiTuan", "Beijing, China",
  "Algorithm Strategy", "2023.9-2023.12"
)
- #text[Designed data alignment strategies to enhance the performance of pre-trained language models on knowledge-intensive benchmarks.]

#section-title("Publications")
#link("https://arxiv.org/abs/2506.14907")[[NIPS'25] *PeRL: Permutation-Enhanced Reinforcement Learning for Interleaved Vision-Language Reasoning*] ~
Yizhen Zhang, *Yang Ding*,  Shuoshuo Zhang, Xinchen Zhang, Haoling Li, Zhong-zhi Li, Peijie Wang, Jie Wu, Lei Ji, Yelong Shen, Yeyun Gong, Yujiu Yang

- We propose PeRL, a novel reinforcement learning training framework designed for interleaved multi-image tasks, which eliminates positional bias in multi-image reasoning with multimodal models.

[In Submission] *VideoZoomer: Reinforcement-Learned Temporal Focusing for Long Video Reasoning*  ~
*Yang Ding*, Xin Lai, Yizhen Zhang, Ruihang Chu, Yujiu Yang

- We propose VideoZoomer, an agentic framework that learns to dynamically inspect high-frame-rate clips from long videos, achieving state-of-the-art performance on major benchmarks while using significantly fewer frame budgets than previous methods.


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

#section-title("Projects")
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
-  Propose a new model merging strategy to create a superior multi-task model, achieving 1st place on the public leaderboard and a final ranking of 5th among over 150 teams.
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
- Achieved 4th place among 53 teams by developing a robust proofreading solution using model fine-tuning and ensemble learning methods.

#section-title("Language Skills")
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
  #text(0.8em, fill: gray)[Last updated: #last-updated]
]
