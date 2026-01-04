/*
  Typst Resume Template
  Inspired by a LaTeX template by Anubhav Singh
  Adapted for Typst by a helpful AI assistant
  Current Date: 2025/10/22
*/

#set document(
  author: "Yujiu Yang",
  title: "Yujiu Yang's Resume",
)
#set page(
  paper: "a4",
  margin: (left: 1.5cm, right: 1.5cm, top: 2cm, bottom: 2cm),
  numbering: "1"
)
#set text(
  font: "Linux Libertine", // A good open-source font with a professional feel
  size: 11pt,
)

// Custom function for underlined links, similar to the LaTeX version
// #let myul(content) = link(content.body, underline(stroke: 0.5pt, content.body))

// Custom function for section titles with a rule
#let section-title(title) = {
  // v(-10pt) // Reduce space above the section
  text(15pt, weight: "bold", smallcaps(title))
  v(-8pt)
  line(length: 100%)
  // v(-4pt) // Reduce space below the rule
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
  // v(-8pt)
}

// --- DOCUMENT STARTS HERE ---

// ==== HEADING ====
#grid(
  columns: (1fr, auto), // One row, two columns
  // --- Left Column Content ---
  // We create a vertical block here.
  [
    #text(22pt, weight: "bold")[Yujiu Yang] \
    #v(1pt) // <-- Larger vertical space for the left side
    Professor, PhD/Master Advisor of Tsinghua University
  ],
  // --- Right Column Content ---
  // We align the entire right block to the top.
  align(bottom + right)[
    // This inner block handles the right side's content.
    #block[
      Email: #link("mailto:yang.yujiu@sz.tsinghua.edu.cn", "yang.yujiu@sz.tsinghua.edu.cn")\
      // #v(1pt) // <-- Smaller vertical space for the right side
      Mobile: +86 (0755) 2603-2552\
      Homepage: #link("https://iigroup.github.io/about/")[#text(fill: blue)[https://iigroup.github.io/about/]]
    ]
  ]
)

// ==== BIOGRAPHY ====
#section-title("Biography")
Dr. Yujiu Yang is currently a professor at Tsinghua University. He received his Ph.D. degree from the Chinese Academy of Sciences. His research interests include Human-Computer Interaction, basic research in its applications in image optimization, visual content creation, and image understanding.

// ==== EDUCATION ====
#section-title("Education")
#entry(
  "Chinese Academy of Sciences", "Beijing, China",
  "Ph.D. in Pattern Recognition", "2002-2008"
)
#entry(
  "China University of Mining and Technology", "Beijing, China",
  "M.Eng in Control Engineering", "1999-2002"
)
#entry(
  "China University of Mining and Technology", "Beijing, China",
  "B.Eng in Applied Geophysics", "1995-1999"
)

// ==== WORK EXPERIENCE ====
#section-title("Work Experience")
#entry(
  "Tsinghua University", "Beijing, China",
  "Professor", "12/2023 - Present"
)
#entry(
  "Tsinghua University", "Beijing, China",
  "Associate Professor", "12/2016 - 11/2023"
)
#entry(
  "Tsinghua University", "Beijing, China",
  "Lecturer / Associate Professor", "10/2010 - 12/2016"
)
#entry(
  "Tsinghua University", "Beijing, China",
  "Postdoctoral Researcher", "07/2008 - 09/2010"
)
#entry(
  "Chinese Academy of Sciences", "Beijing, China",
  "Assistant Researcher", "07/2002 - 07/2008"
)
// Custom function for a publication entry
#let publication(title, authors, details) = {
  // The box ensures the content takes the full width and handles wrapping correctly.
  box(width: 100%)[
    // Format the title in bold
    #{
      title = if title.ends-with(".") {title} else {title+"."}
    }
    #text(weight: "bold")[#title] 
    // Process the author string to bold the target name
    // #let author-list = authors.replace("Yujiu Yang", [#text(weight: "bold")[Yujiu Yang]])
    // #author-list
    // #authors
    #{
      let has-dot = authors.ends-with(".")
      let authors = if has-dot { authors.slice(0, -1) } else { authors }
      // Split authors string by commas and process each author
      let processed-authors = authors.split(", ").map(author => {
        if author == "Yujiu Yang" {
          text(weight: "bold")[Yujiu Yang]
        } else {
          author
        }
      })
      // Join the processed authors back with commas
      processed-authors.join(", ")
    }
    // Add a line break before the details
    \ 
    // Format the details (conference/journal)
    #text(style: "italic")[#details]
  ]
}

// ==== TAUGHT COURSES ====
#section-title("Taught Courses")
// #set list(indent: 1.5em)
- Information Processing
- Open FIESTA Rotation Program
- Distributed System Architecture

// ==== AWARDS AND HONORS ====
#section-title("Awards and Honors")
#let award-entry(award, details, year) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    [#text(weight: "bold")[#award] #details],
    [#year]
  )
}
#award-entry("NeurIPS Best Paper Runner-up", "The Thirty-eighth Annual Conference on Neural Information Processing Systems", "2024")
#award-entry("First Prize of Natural Science Award", "Grade 1 of Xinjiang Uygur Autonomous Region, China", "2024")
#award-entry("First Prize of Scientific and Technological Progress Award", "Grade 1 of Guangdong Province, China", "2022")
#award-entry("Second Prize of Scientific and Technological Progress Award", "Grade 2 of Shenzhen City, Guangdong Province, China", "2021")
#award-entry("First Prize of WU Wenjun AI Science and Technology Award", "Grade 1, Chinese Association for Artificial Intelligence, China", "2020")
#award-entry("Scientific and Technological Progress Award", "Grade 3 of Guangdong Province, China", "2018")
#award-entry("Teaching Achievement Award", "Grade 2 of Tsinghua University, China", "2021")
#award-entry("Outstanding Mentor Award", "Tencent's Rhino-Bird Elite Talent Program", "2023")
#award-entry("Excellent Mentor Award", "Tencent's Rhino-Bird Elite Talent Program", "2023")
#award-entry("First Prize in CAAI Wu Wenjun Artificial Intelligence Science and Technology Award", "Ranked 2nd in the awardee list", "2020")
#award-entry("Guangdong Science and Technology Progress Award", "Third Prize, Ranked 1st in the awardee list", "2016")
#award-entry("Guangdong Science and Technology Progress Award", "First Prize", "2014")
#award-entry("Shenzhen Science and Technology Progress Award", "Second Prize, Ranked 1st in the awardee list", "2015")
#award-entry("Best Paper Honorable Mention", "ICIST", "2014")

// ==== ACADEMIC SERVICES ====
#section-title("Academic Services")

== Guest Editor
#set list(indent: 1.5em)
- Neurocomputing

== Conference Chair
- The Third International Conference on Cognitive Computing (ICCC 2020)
- International Conference on AI and Mobile Services (AIMS 2019)
- The 16th International Conference on Bioinformatics

== Reviewer
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    #text(weight: "bold")[Conference]
    - CVPR
    - ICCV
    - ACL
    - EMNLP
    - AAAI
    - NeurIPS
  ],
  [
    #text(weight: "bold")[Journal]
    - IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI)
    - IEEE Transactions on Image Processing (TIP)
    - IEEE Transactions on Multimedia (TMM)
  ]
)


// ==== FULL LIST OF PUBLICATIONS ====
#section-title("Full List of Publications")

// #set list(indent: 1.5em)
// - - #publication(
//   "Learning High-Quality Dynamic Memory for Video Object Segmentation",
//   "Yong Liu, Ran Yu, Fei Yin, Xinyuan Zhao, Wei Zhao, Weihao Xia, Jiahao Wang, Yitong Wang, Yansong Tang, Yujiu Yang",
//   "IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), 2024"
// )

// - - #publication(
//   "HermesFlow: Seamlessly Closing the Gap in Multimodal Understanding and Generation",
//   "Ling Yang, Xinchen Zhang, Ye Tian, Chenming Shang, Minghao Xu, Wentao Zhang, Bin Cui, Yujiu Yang",
//   "The Thirty-Nine Annual Conference on Neural Information Processing Systems (NeurIPS 2025)"
// )

// - - #publication(
//   "PeRL: Permutation-Enhanced Reinforcement Learning for Interleaved Vision-Language Reasoning",
//   "Yizhen Zhang, Yang Ding, Shuoshuo Zhang, Xinchen Zhang, Haoling Li, Zhong-zhi Li, Peijie Wang, Jie Wu, Lei Ji, Yelong Shen, Yeyun Gong, Yujiu Yang",
//   "The Thirty-Nine Annual Conference on Neural Information Processing Systems (NeurIPS 2025)"
// )

// - - #publication(
//   "Improving video generation with human feedback",
//   "Jie Liu, Gongye Liu, Jiajun Liang, Ziyang Yuan, Xiaokun Liu, Mingwu Zheng, Xiele Wu, Qiulin Wang, Wenyu Qin, Menghan Xia, Xintao Wang, Xiaohong Liu, Fei Yang, Pengfei Wan, Di Zhang, Kun Gai, Yujiu Yang, Wanli Ouyang",
//   "The Thirty-Nine Annual Conference on Neural Information Processing Systems (NeurIPS 2025)"
// )

// - - #publication(
//   "Unchosen experts can contribute too: Unleashing moe models' power by self-contrast",
//   "Chufan Shi, Cheng Yang, Xinyu Zhu, Jiahao Wang, Taiqiang Wu, Siheng Li, Deng Cai, Yujiu Yang, Yu Meng",
//   "The Thirty-Eight Annual Conference on Neural Information Processing Systems (NeurIPS 2024)"
// )




// 期刊论文
== Journal Papers

- #publication(
  "Learning High-Quality Dynamic Memory for Video Object Segmentation",
  "Yong Liu, Ran Yu, Fei Yin, Xinyuan Zhao, Wei Zhao, Weihao Xia, Jiahao Wang, Yitong Wang, Yansong Tang, Yujiu Yang",
  "IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), Early Access, doi: 10.1109/TPAMI.2025.3532306, 2024 (SCI Q1 IF=23.6) [PDF]"
)

- #publication(
  "Generalizable BlackBox Adversarial Attack With Meta Learning",
  "Fei Yin, Yong Zhang, Baoyuan Wu, Yan Feng, Jingyi Zhang, Yanbo Fan, Yujiu Yang",
  "IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), vol:46(3), 1804-1818, 2024 (SCI Q1 IF=23.6) [PDF]"
)

- #publication(
  "GAN Inversion: A Survey",
  "Weihao Xia, Yulun Zhang, Yujiu Yang, Jing-Hao Xue, Bolei Zhou, Ming-Hsuan Yang",
  "IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI), vol:45(3), 3121-3138, 2023 (SCI Q1 IF=23.6) [PDF]"
)

- #publication(
  "StyleCrafter: Taming Artistic Video Diffusion with Reference-Augmented Adapter Learning",
  "Gongye Liu, Menghan Xia, Yong Zhang, Haoxin Chen, Jinbo Xing, Xintao Wang, Yujiu Yang, Ying Shan",
  "ACM Transactions on Graphics (TOG), vol:43(6), 251:1-251:10, 2024 (SCI Q1 IF=6.2) [PDF]"
)

- #publication(
  "Exploring Human-Like Translation Strategy with Large Language Models",
  "Zhiwei He, Tian Liang, Wenxiang Jiao, Zhuosheng Zhang, Yujiu Yang, Rui Wang, Zhaopeng Tu, Shuming Shi, Xing Wang",
  "Transactions of the Association for Computational Linguistics (TACL), vol:12, 229-246, 2024 (SCI Q1 IF=10.9) [PDF]"
)

- #publication(
  "An Energy-based Model for Word-level AutoCompletion in Computer-aided Translation",
  "Cheng Yang, Guoping Huang, Mo Yu, Zhirui Zhang, Siheng Li, Mingming Yang, Shuming Shi, Yujiu Yang, Lemao Liu",
  "Transactions of the Association for Computational Linguistics (TACL), vol:12, 137-156, 2024 (SCI Q1 IF=10.9) [PDF]"
)

- #publication(
  "A Survey on the Honesty of Large Language Models",
  "Siheng Li, Cheng Yang, Taiqiang Wu, Chufan Shi, Yuji Zhang, Xinyu Zhu, Zesen Cheng, Deng Cai, Mo Yu, Lemao Liu, Jie Zhou, Yujiu Yang, Ngai Wong, Xixin Wu, Wai Lam",
  "Transactions on Machine Learning Research (TMLR), March 2025 [PDF]"
)

- #publication(
  "Efficient Text-Guided 3D-Aware Generation with Score Distillation on 3D Distribution",
  "Yiji Cheng, Fei Yin, Xiaoke Huang, Xintong Yu, Jiaxiang Liu, Shikun Feng, Yujiu Yang, Yansong Tang",
  "IEEE Transactions on Circuits and Systems for Video Technology (TCSVT), Early Access (SCI Q1 IF=8.4) [PDF]"
)

- #publication(
  "Learn Stable MRI Under-Sampling Pattern With Decoupled Sampling Preference",
  "Haoze Sun, Chenyu Tian, Jing Xiao, Yujiu Yang",
  "IEEE Transactions on Computational Imaging (TCI), vol:10, 246-260, 2024 (SCI Q1 IF=5.4) [PDF]"
)

- #publication(
  "VDTR: Video Deblurring With Transformer",
  "Mingdeng Cao, Yanbo Fan, Yong Zhang, Jue Wang, Yujiu Yang",
  "IEEE Trans. Circuits Syst. Video Technol. (TCSVT), vol:33(1), 160-171, 2023 (SCI Q1 IF=8.4) [PDF]"
)

- #publication(
  "A simple and effective patch-Based method for frame-level face anti-spoofing",
  "Shengjie Chen, Gang Wu, Yujiu Yang, Zhenhua Guo",
  "Pattern Recognit. Lett. (PRL), Vol:171, 1-7, 2023 (SCI Q2 IF=5.1) [PDF]"
)

- #publication(
  "A novel 2D contactless fingerprint matching method",
  "Lei Shi, Sheng Lan, Hao Gui, Yujiu Yang, Zhenhua Guo",
  "Neurocomputing, Vol:500, 547-555, 2022 (SCI Q2 IF=6) [PDF]"
)

- #publication(
  "Real-time human-centric segmentation for complex video scenes",
  "Ran Yu, Chenyu Tian, Weihao Xia, Xinyuan Zhao, Liejun Wang, Yujiu Yang",
  "Image Vis. Comput. (IMVC), Vol:126, 104552, 2022 (SCI Q2 IF=4.7) [PDF]"
)

- #publication(
  "HSCJN: A holistic semantic constraint joint network for diverse response generation",
  "Yiru Wang, Pengda Si, Zeyang Lei, Guangxu Xun, Yujiu Yang",
  "Comput. Speech Lang., Vol:65, 101135, 2021 (SCI Q2 IF=4.3) [PDF]"
)

- #publication(
  "Cali-sketch: Stroke calibration and completion for high-quality face image generation from human-like sketches",
  "Weihao Xia, Yujiu Yang, Jing-Hao Xue",
  "Neurocomputing, Vol:460, 256-265, 2021 (SCI Q2 IF=6) [PDF]"
)

- #publication(
  "Health Status Analysis and Optimization of Load Dispatch for Power Plant Boiler",
  "Shuang Huang, Yujiu Yang, Biqing Huang",
  "Journal of Computing and Information Science and Engineering, Vol:21(1): 011004, 2021 (SCI Q3 IF=3.1) [PDF]"
)

- #publication(
  "Domain Fingerprints for No-Reference Image Quality Assessment",
  "Weihao Xia, Yujiu Yang, Jing-Hao Xue, Jing Xiao",
  "IEEE Trans. Circuits Syst. Video Technol. (TCSVT), Vol:31(4), 1332-1341, 2021 (SCI Q1 IF=8.4) [PDF]"
)

- #publication(
  "Unsupervised multi-domain multimodal image-to-image translation with explicit domain-constrained disentanglement",
  "Weihao Xia, Yujiu Yang, Jing-Hao Xue",
  "Neural Networks (NN), Vol:131, 50-63, 2020 (SCI Q1 IF=7.8) [PDF]"
)

- #publication(
  "FAT-RE: A faster dependency-free model for relation extraction",
  "Lifang Ding, Zeyang Lei, Guangxu Xun, Yujiu Yang",
  "J. Web Semant, Vol:65, 100598, 2020 (SCI Q3 IF=2.5) [PDF]"
)

- #publication(
  "Convolutional neural network for cell classification using microscope images of intracellular actin networks",
  "Ronald Wihal Oei, Guanqun Hou, Fuhai Liu, Jin Zhong, Jiewen Zhang, Zhaoyi An, Luping Xu, Yujiu Yang",
  "PLoS ONE, Vol 14(3): e0213626, 2019 (SCI Q2 IF=3.7) [PDF]"
)

// 会议论文
== Conference Papers

- #publication(
  "PeRL: Permutation-Enhanced Reinforcement Learning for Interleaved Vision-Language Reasoning",
  "Yizhen Zhang, Yang Ding, Shuoshuo Zhang, Xinchen Zhang, Haoling Li, Zhong-zhi Li, Peijie Wang, Jie Wu, Lei Ji, Yelong Shen, Yeyun Gong, Yujiu Yang",
  "The Thirty-Nine Annual Conference on Neural Information Processing Systems (NeurIPS 2025)"
)


- #publication(
  "InstructSeg: Unifying Instructed Visual Segmentation with Multi-modal Large Language Models",
  "Cong Wei, Yujie Zhong, Yingsen Zeng, Haoxian Tan, Yong Liu, Hongfa Wang, Yujiu Yang",
  "International Conference on Computer Vision 2025, ICCV 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "CoHD: A Counting-Aware Hierarchical Decoding Framework for Generalized Referring Expression Segmentation",
  "Zhuoyan Luo, Yinghao Wu, Tianheng Cheng, Yong Liu, Yicheng Xiao, Hongfa Wang, Xiao-Ping Zhang, Yujiu Yang",
  "International Conference on Computer Vision 2025, ICCV 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "Scalable Image Tokenization with Index Backpropagation Quantization",
  "Fengyuan Shi, Zhuoyan Luo, Yixiao Ge, Yujiu Yang, Ying Shan, Limin Wang",
  "International Conference on Computer Vision 2025, ICCV 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "Advancing Visual Large Language Model for Multi-granular Versatile Perception",
  "Wentao Xiang, Haoxian Tan, Cong Wei, Yujie Zhong, Dengjie Li, Yujiu Yang",
  "International Conference on Computer Vision 2025, ICCV 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "Chain-of-Reasoning: Towards Unified Mathematical Reasoning in Large Language Models via a Multi-Paradigm Perspective",
  "Yiyao Yu, Yuxiang Zhang, Dongdong Zhang, Xiao Liang, Hengyuan Zhang, Xingxing Zhang, Mahmoud Khademi, Hany Hassan Awadalla, Junjie Wang, Yujiu Yang, Furu Wei",
  "the main conference of the Association for Computational Linguistics, ACL 2025. (CCF-A), 2025 [PDF]"
)

- #publication(
  "MorphMark: Flexible Adaptive Watermarking for Large Language Models",
  "Zongqi Wang, Tianle Gu, Baoyuan Wu, Yujiu Yang",
  "the main conference of the Association for Computational Linguistics, ACL 2025. (CCF-A), 2025 [PDF]"
)

- #publication(
  "ShifCon: Enhancing Non-Dominant Language Capabilities with a Shift-based Multilingual Contrastive Framework",
  "Hengyuan Zhang, Chenming Shang, Sizhe Wang, Dongdong Zhang, Yiyao Yu, Feng Yao, Renliang Sun, Yujiu Yang, Furu Wei",
  "the main conference of the Association for Computational Linguistics, ACL 2025. (CCF-A), 2025 [PDF]"
)

- #publication(
  "Robust and Minimally Invasive Watermarking for EaaS",
  "Zongqi Wang, Baoyuan Wu, Jingyuan Deng, Yujiu Yang",
  "Findings of the Association for Computational Linguistics, ACL 2025. (CCF-A), 2025 [PDF]"
)

- #publication(
  "From Evasion to Concealment: Stealthy Knowledge Unlearning for LLMs",
  "Tianle Gu, Kexin Huang, Ruilin Luo, Yuanqi Yao, Xiuying Chen, Yujiu Yang, Yan Teng, Yingchun Wang",
  "Findings of the Association for Computational Linguistics, ACL 2025. (CCF-A), 2025 [PDF]"
)

- #publication(
  "Critical Tokens Matter: Token-Level Contrastive Estimation Enhances LLM's Reasoning Capability",
  "Zicheng Lin, Tian Liang, Jiahao Xu, Qiuzhi Liu, Xing Wang, Ruilin Luo, Chufan Shi, Siheng Li, Yujiu Yang, Zhaopeng Tu",
  "Forty-second International Conference on Machine Learning, ICML 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "EpiCoder: Encompassing Diversity and Complexity in Code Generation",
  "Yaoxiang Wang, Haoling Li, Xin Zhang, Jie Wu, Xiao Liu, Wenxiang Hu, Zhongxin Guo, Yangyu Huang, Ying Xin, Yujiu Yang, Jinsong Su, Qi Chen, Scarlett Li",
  "Forty-second International Conference on Machine Learning, ICML 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "HyperSeg: Hybrid Segmentation Assistant with Fine-grained Visual Perceiver",
  "Cong Wei, Haoxian Tan, Yujie Zhong, Yong Liu, Jie Hu, Dengjie Li, Zheng Zhao, Yujiu Yang",
  "Conference on Computer Vision and Pattern Recognition 2025, CVPR 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "ProReflow: Progressive Reflow with Decomposed Velocity",
  "Lei Ke, Haohang Xu, Xuefei Ning, Yu Li, Jiajun Li, Haoling Li, Yuxuan Lin, Dongsheng Jiang, Yujiu Yang, Linfeng Zhang",
  "Conference on Computer Vision and Pattern Recognition 2025, CVPR 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "DnLUT: Ultra-Efficient Color Image Denoising via Channel-Aware Lookup Tables",
  "Sidi Yang, Binxiao Huang, Yulun Zhang, Dahai Yu, Yujiu Yang, Ngai Wong",
  "Conference on Computer Vision and Pattern Recognition 2025, CVPR 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "IDOL: Instant Photorealistic 3D Human Creation from a Single Image",
  "Yiyu Zhuang, Jiaxi Lv, Hao Wen, Qing Shuai, Ailing Zeng, Hao Zhu, Shifeng Chen, Yujiu Yang, Xun Cao, Wei Liu",
  "Conference on Computer Vision and Pattern Recognition 2025, CVPR 2025, (CCF-A), 2025 [PDF]"
)

- #publication(
  "IterComp: Iterative Composition-Aware Feedback Learning from Model Gallery for Text-to-Image Generation",
  "Xinchen Zhang, Ling Yang, Guohao Li, Yaqi Cai, Xie Jiake, Yong Tang, Yujiu Yang, Mengdi Wang, Bin Cui",
  "The Thirteenth International Conference on Learning Representations, ICLR 2025, 2025 [PDF]"
)

- #publication(
  "IDA-VLM: Towards Movie Understanding via ID-Aware Large Vision-Language Model",
  "Yatai Ji, Shilong Zhang, Jie Wu, Peize Sun, Weifeng Chen, Xuefeng Xiao, Sidi Yang, Yujiu Yang, Ping Luo",
  "The Thirteenth International Conference on Learning Representations, ICLR 2025, 2025 [PDF]"
)

- #publication(
  "ChartMimic: Evaluating LMM's Cross-Modal Reasoning Capability via Chart-to-Code Generation",
  "Cheng Yang, Chufan Shi, Yaxin Liu, Bo Shui, Junjie Wang, Mohan Jing, Linran Xu, Xinyu Zhu, Siheng Li, Yuxiang Zhang, Gongye Liu, Xiaomei Nie, Deng Cai, Yujiu Yang",
  "The Thirteenth International Conference on Learning Representations, ICLR 2025, 2025 [PDF]"
)

- #publication(
  "LLM2: Let Large Language Models Harness System 2 Reasoning",
  "Cheng Yang, Chufan Shi, Siheng Li, Bo Shui, Yujiu Yang, Wai Lam",
  "Proceedings of the 2025 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technology, NAACL 2025, (CCF-B), 2025 [PDF] [CODE]"
)

- #publication(
  "Edge-free but Structure-aware: Prototype-Guided Knowledge Distillation from GNNs to MLPs",
  "Taiqiang Wu, Zhe Zhao, Jiahao Wang, Xingyu Bai, Lei Wang, Ngai Wong, Yujiu Yang",
  "Proceedings of the 31st International Conference on Computational Linguistics, COLING 2025, (CCF-B), 2025 [PDF]"
)

- #publication(
  "Unchosen Experts Can Contribute Too: Unleashing MoE Models' Power by Self-Contrast",
  "Chufan Shi, Cheng Yang, Xinyu Zhu, Jiahao Wang, Taiqiang Wu, Siheng Li, Deng Cai, Yujiu Yang, Yu Meng",
  "The Thirty-eighth Annual Conference on Neural Information Processing Systems, NeurIPS 2024, (CCF-A), 2024 [PDF]"
)

- #publication(
  "RealCompo: Balancing Realism and Compositionality Improves Text-to-Image Diffusion Models",
  "Xinchen Zhang, Ling Yang, Yaqi Cai, Zhaochen Yu, Kai-Ni Wang, Xie Jiake, Ye Tian, Minkai Xu, Yong Tang, Yujiu Yang, Bin Cui",
  "The Thirty-eighth Annual Conference on Neural Information Processing Systems, NeurIPS 2024, (CCF-A), 2024 [PDF]"
)

- #publication(
  "Not All Tokens Are What You Need for Pretraining",
  "Zhenghao Lin, Zhibin Gou, Yeyun Gong, Xiao Liu, Yelong Shen, Ruochen Xu, Chen Lin, Yujiu Yang, Jian Jiao, Nan Duan, Weizhu Chen",
  "The Thirty-eighth Annual Conference on Neural Information Processing Systems, NeurIPS 2024 (oral), Best Paper Runner-up, (CCF-A), 2024 [PDF]"
)

- #publication(
  "AgentBoard: An Analytical Evaluation Board of Multi-turn LLM Agents",
  "Chang Ma, Junlei Zhang, Zhihao Zhu, Cheng Yang, Yujiu Yang, Yaohui Jin, Zhenzhong Lan, Lingpeng Kong, Junxian He",
  "The Thirty-eighth Annual Conference on Neural Information Processing Systems, Datasets and Benchmarks Track, NeurIPS 2024 (oral), (CCF-A), 2024 [PDF]"
)

- #publication(
  "MLLMGuard: A Multi-dimensional Safety Evaluation Suite for Multimodal Large Language Models",
  "Tianle Gu, Zeyang Zhou, Kexin Huang, Liang Dandan, Yixu Wang, Haiquan Zhao, Yuanqi Yao, Xingge Qiao, Keqing Wang, Yujiu Yang, Yan Teng, Yu Qiao, Yingchun Wang",
  "The Thirty-eighth Annual Conference on Neural Information Processing Systems, Datasets and Benchmarks Track, NeurIPS 2024 (oral), (CCF-A), 2024 [PDF]"
)

- #publication(
  "PTD-SQL: Partitioning and Targeted Drilling with LLMs in Text-to-SQL",
  "Ruilin Luo, Liyuan Wang, Binghuai Lin, Zicheng Lin, Yujiu Yang",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Main, (CCF-B), 2024 [PDF]"
)

- #publication(
  "A Thorough Examination of Decoding Methods in the Era of LLMs",
  "Chufan Shi, Haoran Yang, Deng Cai, Zhisong Zhang, Yifan Wang, Yujiu Yang, Wai Lam",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Main, (CCF-B), 2024 [PDF]"
)

- #publication(
  "ToolBeHonest: A Multi-level Hallucination Diagnostic Benchmark for Tool-Augmented Large Language Models",
  "Yuxiang Zhang, Jing Chen, Junjie Wang, Yaxin Liu, Cheng Yang, Chufan Shi, Xinyu Zhu, Zihao Lin, Hanwen Wan, Yujiu Yang, Tetsuya Sakai, Tian Feng, Hayato Yamana",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Main, (CCF-B), 2024 [PDF]"
)

- #publication(
  "HoLLMwood: Unleashing the Creativity of Large Language Models in Screenwriting via Role Playing",
  "Jing Chen, Xinyu Zhu, Cheng Yang, Chufan Shi, Yadong Xi, Yuxiang Zhang, Junjie Wang, Jiashu Pu, Rongsheng Zhang, Yujiu Yang, Tian Feng",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Findings, (CCF-B), 2024 [PDF]"
)

- #publication(
  "SciAgent: Tool-augmented Language Models for Scientific Reasoning",
  "Yubo Ma, Zhibin Gou, Junheng Hao, Ruochen Xu, Shuohang Wang, Liangming Pan, Yujiu Yang, Yixin Cao, Aixin Sun",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Main, (CCF-B), 2024 [PDF]"
)

- #publication(
  "Encouraging Divergent Thinking in Large Language Models through Multi-Agent Debate",
  "Tian Liang, Zhiwei He, Wenxiang Jiao, Xing Wang, Yan Wang, Rui Wang, Yujiu Yang, Shuming Shi, Zhaopeng Tu",
  "The 2024 Conference on Empirical Methods in Natural Language Processing, EMNLP 2024 Main, (CCF-B), 2024 [PDF]"
)

- #publication(
  "LoCa: Logit Calibration for Knowledge Distillation",
  "Runming Yang, Taiqiang Wu, Yujiu Yang",
  "The 27th European Conference on Artificial Intelligence, ECAI 2024, (CCF-B), 2024 [PDF]"
)

- #publication(
  "Taming Lookup Tables for Efficient Image Retouching",
  "Sidi Yang, Binxiao Huang, Mingdeng Cao, Yatai Ji, Hanzhong Guo, Ngai Wong, Yujiu Yang",
  "The European Conference on Computer Vision (ECCV) ECCV 2024, (CCF-B), 2024 [PDF]"
)

- #publication(
  "A Comprehensive Study of Multimodal Large Language Models for Image Quality Assessment",
  "Tianhe Wu, Kede Ma, Jie Liang, Yujiu Yang, Lei Zhang",
  "The European Conference on Computer Vision (ECCV) ECCV 2024, (CCF-B), 2024 [PDF]"
)

- #publication(
  "Prior Bilinear-Based Models for Knowledge Graph Completion",
  "Jiayi Li, Ruilin Luo, Jiaqi Sun, Jing Xiao, Yujiu Yang",
  "Machine Learning and Knowledge Discovery in Databases. Research Track - European Conference, ECML PKDD 2024, pp. 317-334. (CCF-B), 2024 [PDF]"
)

- #publication(
  "CriticBench: Benchmarking LLMs for Critique-Correct Reasoning",
  "Zicheng Lin, Zhibin Gou, Tian Liang, Ruilin Luo, Haowei Liu, Yujiu Yang",
  "Findings of the Association for Computational Linguistics, ACL 2024, pp. 1552-1587. (CCF-A), 2024 [PDF]"
)

- #publication(
  "TextBind: Multi-turn Interleaved Multimodal Instruction-following in the Wild",
  "Huayang Li, Siheng Li, Deng Cai, Longyue Wang, Lemao Liu, Taro Watanabe, Yujiu Yang, Shuming Shi",
  "Findings of the Association for Computational Linguistics, ACL 2024, pp. 9053-9076. (CCF-A), 2024 [PDF]"
)

- #publication(
  "Mitigating Reversal Curse in Large Language Models via Semantic-aware Permutation Training",
  "Qingyan Guo, Rui Wang, Junliang Guo, Xu Tan, Jiang Bian, Yujiu Yang",
  "Findings of the Association for Computational Linguistics, ACL 2024, pp. 11453-11464. (CCF-A), 2024 [PDF]"
)

- #publication(
  "Addressing Entity Translation Problem via Translation Difficulty and Context Diversity",
  "Tian Liang, Xing Wang, Mingming Yang, Yujiu Yang, Shuming Shi, Zhaopeng Tu",
  "Findings of the Association for Computational Linguistics, ACL 2024, pp. 11628-11638. (CCF-A), 2024 [PDF]"
)

- #publication(
  "Accelerating Diffusion Models for Inverse Problems through Shortcut Sampling",
  "Gongye Liu, Haoze Sun, Jiayi Li, Fei Yin, Yujiu Yang",
  "Proceedings of the Thirty-third International Joint Conference on Artificial Intelligence, IJCAI 2024 (CCF-A), 2024 [PDF]"
)

- #publication(
  "Understanding Multimodal Deep Neural Networks: A Concept Selection View",
  "Chenming Shang, Hengyuan Zhang, Hao Wen, Yujiu Yang",
  "Proceedings of the Annual Meeting of the Cognitive Science Society, CogSci 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "Multimodal Prototype-Enhanced Network for Few-Shot Action Recognition",
  "Xinzhe Ni, Yong Liu, Hao Wen, Yatai Ji, Jing Xiao, Yujiu Yang",
  "Proceedings of the 2024 International Conference on Multimedia Retrieval, ICMR 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "Weight-Inherited Distillation for Task-Agnostic BERT Compression",
  "Taiqiang Wu, Cheng Hou, Shanshan Lao, Jiayi Li, Ngai Wong, Zhe Zhao, Yujiu Yang",
  "Findings of the Association for Computational Linguistics: NAACL 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "InsCL: A Data-efficient Continual Learning Paradigm for Fine-tuning Large Language Models with Instructions",
  "Yifan Wang, Yafei Liu, Chufan Shi, Haoling Li, Chen Chen, Haonan Lu, Yujiu Yang",
  "Proceedings of the 2024 Conference of the North American Chapter of the Association for Computational Linguistics: Human Language Technologies (Volume 1: Long Papers), NAACL 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "ContextVis: Envision Contextual Learning and Interaction with Generative Models",
  "Bo Shui, Chufan Shi, Yujiu Yang, Xiaomei Nie",
  "26th International Conference on Human-Computer Interaction, HCII 2024 (THU-A), 2024 [PDF]"
)

- #publication(
  "Prior Relational Schema Assists Effective Contrastive Learning for Inductive Knowledge Graph Completion",
  "Ruilin Luo, Jiayi Li, Jianghangfan Zhang, Jing Xiao, Yujiu Yang",
  "Proceedings of the 2024 Joint International Conference on Computational Linguistics, Language Resources and Evaluation, COLING 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "CoSeR: Bridging Image and Language for Cognitive Super-Resolution",
  "Haoze Sun, Wenbo Li, Jianzhuang Liu, Haoyu Chen, Renjing Pei, Xueyi Zou, Youliang Yan, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2024, pp. 25868-25878. (CCF-A), 2024 [PDF]"
)

- #publication(
  "Universal Segmentation at Arbitrary Granularity with Language Instruction",
  "Yong Liu, Cairong Zhang, Yitong Wang, Jiahao Wang, Yujiu Yang, Yansong Tang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2024, pp. 3459-3469, (CCF-A), 2024 [PDF]"
)

- #publication(
  "Bridging the Gap: A Unified Video Comprehension Framework for Moment Retrieval and Highlight Detection",
  "Yicheng Xiao, Zhuoyan Luo, Yong Liu, Yue Ma, Hengwei Bian, Yatai Ji, Yujiu Yang, Xiu Li",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2024, pp. 18709-18719, (CCF-A), 2024 [PDF]"
)

- #publication(
  "Incremental Residual Concept Bottleneck Model",
  "Chenming Shang, Shiji Zhou, Hengyuan Zhang, Xinzhe Ni, Yujiu Yang, Yuwang Wang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2024, pp. 11030-11040. (CCF-A), 2024 [PDF]"
)

- #publication(
  "Rolling Shutter Correction with Intermediate Distortion Flow Estimation",
  "Mingdeng Cao, Sidi Yang, Yujiu Yang, Yinqiang Zheng",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2024, pp. 25338-25347, (CCF-A), 2024 [PDF]"
)

- #publication(
  "Connecting Large Language Models with Evolutionary Algorithms Yields Powerful Prompt Optimizers",
  "Qingyan Guo, Rui Wang, Junliang Guo, Bei Li, Kaitao Song, Xu Tan, Guoqing Liu, Jiang Bian, Yujiu Yang",
  "The Twelfth International Conference on Learning Representations, ICLR 2024, 2024 [PDF]"
)

- #publication(
  "Spurious Feature Diversification Improves Out-of-distribution Generalization",
  "Lin Yong, Lu Tan, Yifan Hao, Ho Nam Wong, Hanze Dong, Weizhong Zhang, Yujiu Yang, Tong Zhang",
  "The Twelfth International Conference on Learning Representations, ICLR 2024, 2024 [PDF]"
)

- #publication(
  "Continuous Invariance Learning",
  "Lin Yong, Fan Zhou, Lu Tan, Lintao Ma, Jianmeng Liu, Yansu He, Yuan Yuan, Yu Liu, James Y. Zhang, Yujiu Yang, Hao Wang",
  "The Twelfth International Conference on Learning Representations, ICLR 2024, 2024 [PDF]"
)

- #publication(
  "CRITIC: Large Language Models Can Self-Correct with Tool-Interactive Critiquing",
  "Zhibin Gou, Zhihong Shao, Yeyun Gong, Yelong Shen, Yujiu Yang, Nan Duan, Weizhu Chen",
  "The Twelfth International Conference on Learning Representations, ICLR 2024, 2024 [PDF]"
)

- #publication(
  "ToRA: A Tool-Integrated Reasoning Agent for Mathematical Problem Solving",
  "Zhibin Gou, Zhihong Shao, Yeyun Gong, Yelong Shen, Yujiu Yang, Minlie Huang, Nan Duan, Weizhu Chen",
  "The Twelfth International Conference on Learning Representations, ICLR 2024, 2024 [PDF]"
)

- #publication(
  "Hint-Enhanced In-Context Learning wakes Large Language Models up for knowledge-intensive tasks",
  "Yifan Wang, Qingyan Guo, Xinzhe Ni, Chufan Shi, Lemao Liu, Haiyun Jiang, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "Deep Evolutional Instant Interest Network for CTR Prediction in Trigger-Induced Recommendation",
  "Zhibo Xiao, Luwei Yang, Tao Zhang, Wen Jiang, Wei Ning, Yujiu Yang",
  "The 17th ACM International Conference Web Search and Data Mining, Oral, WSDM 2024 (CCF-B), 2024 [PDF]"
)

- #publication(
  "Assessor360: Multi-sequence Network for Blind Omnidirectional Image Quality Assessment",
  "Tianhe Wu, Shuwei Shi, Haoming Cai, Mingdeng Cao, Jing Xiao, Yinqiang Zheng, Yujiu Yang",
  "NeurIPS 2023 (CCF-A), 2023 [PDF]"
)

- #publication(
  "SOC: Semantic-Assisted Object Cluster for Referring Video Object Segmentation",
  "Zhuoyan Luo, Yicheng Xiao, Yong Liu, Shuyan Li, Yitong Wang, Yansong Tang, Xiu Li, Yujiu Yang",
  "NeurIPS 2023 (CCF-A), 2023 [PDF]"
)

- #publication(
  "Question Answering as Programming for Solving Time-Sensitive Questions",
  "Xinyu Zhu, Cheng Yang, Bei Chen, Siheng Li, Jian-Guang Lou, Yujiu Yang",
  "EMNLP 2023 Main (CCF-B), pp.12775-12790, 2023 [PDF]"
)

- #publication(
  "Specialist or Generalist? Instruction Tuning for Specific NLP Tasks",
  "Chufan Shi, Yixuan Su, Cheng Yang, Yujiu Yang, Deng Cai",
  "EMNLP 2023 Main (CCF-B), pp.15336-15348, 2023 [PDF]"
)

- #publication(
  "EALM: Introducing Multidimensional Ethical Alignment in Conversational Information Retrieval",
  "Yiyao Yu, Junjie Wang, Yuxiang Zhang, Lin Zhang, Yujiu Yang, Tetsuya Sakai",
  "SIGIR-AP '23, 2023 [PDF]"
)

- #publication(
  "TaleCrafter: Interactive Story Visualization with Multiple Characters",
  "Yuan Gong, Youxin Pang, Xiaodong Cun, Menghan Xia, Haoxin Chen, Longyue Wang, Yong Zhang, Xintao Wang, Ying Shan, Yujiu Yang",
  "SIGGRAPH Asia 2023 (CCF-A), 2023 [PDF]"
)

- #publication(
  "UniKD: Universal Knowledge Distillation for Mimicking Homogeneous or Heterogeneous Object Detectors",
  "Shanshan Lao, Guanglu Song, Boxiao Liu, Yu Liu, Yujiu Yang",
  "ICCV 2023, (CCF-A), 2023 [PDF]"
)

- #publication(
  "Masked Autoencoders Are Stronger Knowledge Distillers for Object Detectors",
  "Shanshan Lao, Guanglu Song, Boxiao Liu, Yu Liu, Yujiu Yang",
  "ICCV 2023, (CCF-A), 2023 [PDF]"
)

- #publication(
  "ToonTalker: Cross-Domain Face Reenactment",
  "Yuan Gong, Yong Zhang, Xiaodong Cun, Fei Yin, Yanbo Fan, Xuan Wang, Baoyuan Wu, Yujiu Yang",
  "ICCV 2023, (CCF-A), 2023 [PDF]"
)

- #publication(
  "Global Knowledge Calibration for Fast Open-Vocabulary Segmentation",
  "Kunyang Han, Yong Liu, Jun Hao Liew, Henghui Ding, Yunchao Wei, Jiajun Liu, Yitong Wang, Yansong Tang, Yujiu Yang, Jiashi Feng, Yao Zhao",
  "ICCV 2023, (CCF-A), 2023 [PDF]"
)

- #publication(
  "Solving Math Word Problems via Cooperative Reasoning induced Language Models",
  "Xinyu Zhu, Junjie Wang, Lin Zhang, Yuxiang Zhang, Yongfeng Huang, Ruyi Gan, Jiaxing Zhang, Yujiu Yang",
  "Annual Meeting of the Association for Computational Linguistics (ACL 2023), (CCF-A), pp.4471-4485, 2023 [PDF]"
)

- #publication(
  "AutoConv: Automatically Generating Information-seeking Conversations with Large Language Models",
  "Siheng Li, Cheng Yang, Yichun Yin, Xinyu Zhu, Zesen Cheng, Lifeng Shang, Xin Jiang, Qun Liu, Yujiu Yang",
  "Annual Meeting of the Association for Computational Linguistics (ACL 2023), (CCF-A), pp.1751-1762, 2023 [PDF]"
)

- #publication(
  "NewsDialogues: Towards Proactive News Grounded Conversation",
  "Siheng Li, Yichun Yin, Cheng Yang, Wangjie Jiang, Yiwei Li, Zesen Cheng, Lifeng Shang, Xin Jiang, Qun Liu, Yujiu Yang",
  "Annual Meeting of the Association for Computational Linguistics (ACL 2023), (CCF-A), pp.3634-3649, 2023 [PDF]"
)

- #publication(
  "MvP: Multi-view Prompting Improves Aspect Sentiment Tuple Prediction",
  "Zhibin Gou, Qingyan Guo, Yujiu Yang",
  "Annual Meeting of the Association for Computational Linguistics (ACL 2023), (CCF-A), pp.4380-4397, 2023 [PDF]"
)

- #publication(
  "Feature Expansion for Graph Neural Networks",
  "Jiaqi Sun, Lin Zhang, Guangyi Chen, Peng Xu, Kun Zhang, Yujiu Yang",
  "International Conference on Machine Learning (ICML23), (CCF-A), PMLR 202:33156-33176, 2023 [PDF]"
)

- #publication(
  "D2Match: Leveraging Deep Learning and Degeneracy for Subgraph Matching",
  "Xuanzhou Liu, Lin Zhang, Jiaqi Sun, Yujiu Yang, Haiqin Yang",
  "International Conference on Machine Learning (ICML23), (CCF-A), PMLR 202:22454-22472, 2023 [PDF]"
)

- #publication(
  "3D GAN Inversion with Facial Symmetry Prior",
  "Fei Yin, Yong Zhang, Xuan Wang, Tengfei Wang, Xiaoyu Li, Yuan Gong, Yanbo Fan, Xiaodong Cun, Ying Shan, Cengiz Oztireli, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2023, (CCF-A), pp.342-351, 2023 [PDF]"
)

- #publication(
  "Seeing What You Miss: Vision-Language Pre-training with Semantic Completion Learning",
  "Yatai Ji, Rongcheng Tu, Jie Jiang, Weijie Kong, Chengfei Cai, Wenzhe Zhao, Hongfa Wang, Yujiu Yang, Wei Liu",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2023, (CCF-A), pp.6789-6798, 2023 [PDF]"
)

- #publication(
  "GLeaD: Improving GANs with A Generator-Leading Task",
  "Qingyan Bai, Ceyuan Yang, Yinghao Xu, Xihui Liu, Yujiu Yang, Yujun Shen",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2023, (CCF-A), pp.12094-12104, 2023 [PDF]"
)

- #publication(
  "RIFormer: Keep Your Vision Backbone Effective But Removing Token Mixer",
  "Jiahao Wang, Songyang Zhang, Yong Liu, Taiqiang Wu, Yujiu Yang, Xihui Liu, Kai Chen, Ping Luo, Dahua Lin",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2023, (CCF-A), pp.14443-14452, 2023 [PDF]"
)

- #publication(
  "MAP: Multimodal Uncertainty-Aware Vision-Language Pre-training Model",
  "Yatai Ji, Junjie Wang, Yuan Gong, Lin Zhang, Yanru Zhu, Hongfa Wang, Jiaxing Zhang, Tetsuya Sakai, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2023, (CCF-A), pp.23262-23271, 2023 [PDF]"
)

- #publication(
  "A Two-branch Network for Video Anomaly Detection with Spatio-temporal Feature Learning",
  "Guoqiu Li, Shengjie Chen, Yujiu Yang, Zhenhua Guo",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2023, (CCF-B), 2023 [PDF]"
)

- #publication(
  "SynGen: A Syntactic Plug-and-play Module for Generative Aspect-based Sentiment Analysis",
  "Chengze Yu, Taiqiang Wu, Jiayi Li, Xingyu Bai, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2023, (CCF-B), 2023 [PDF]"
)

- #publication(
  "Recouple Event Field via Probabilistic Bias for Event Extraction",
  "Xingyu Bai, Taiqiang Wu, Han Guo, Zhe Zhao, Xuefeng Yang, Jiayi Li, Weijie Liu, Qi Ju, Weigang Guo, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2023, (CCF-B), 2023 [PDF]"
)

- #publication(
  "ICA-Proto: Iterative Cross Alignment Prototypical Network for Incremental FewShot Relation Classification",
  "Wangjie Jiang, Zhihao Ye, Bang Liu, Ruihui Zhao, Jianguang Zheng, Mengyao Li, Zhiyong Li, Yujiu Yang, Yefeng Zheng",
  "Findings of the Association for Computational Linguistics: EACL 2023, (CCF-B), pp.2230-2239, 2023 [PDF]"
)

- #publication(
  "Enhancing Dialogue Generation with Conversational Concept Flows",
  "Siheng Li, Wangjie Jiang, Pengda Si, Cheng Yang, Yao Qiu, Jinchao Zhang, Jie Zhou, Yujiu Yang",
  "Findings of the Association for Computational Linguistics: EACL 2023, (CCF-B), pp.1484-1495, 2023 [PDF]"
)

- #publication(
  "Modeling Fine-grained Information via Knowledge-aware Hierarchical Graph for Zero-shot Entity Retrieval",
  "Taiqiang Wu, Xingyu Bai, Weigang Guo, Weijie Liu, Siheng Li, Yujiu Yang",
  "the Sixteenth ACM International Conference on Web Search and Data Mining, WSDM2023, (CCF-B), pp.1021-1029, 2023 [PDF]"
)

- #publication(
  "Rethinking Alignment in Video Super-Resolution Transformers",
  "Shuwei Shi, Jinjin Gu, Liangbin Xie, Xintao Wang, Yujiu Yang, Chao Dong",
  "NeurIPS 2022 (CCF-A), pp.36081-36093, 2022 [PDF]"
)

- #publication(
  "MCSCSet: A Specialist-annotated Dataset for Medical-domain Chinese Spelling Correction",
  "Wangjie Jiang, Zhihao Ye, Zijing Ou, Ruihui Zhao, Jianguang Zheng, Yi Liu, Bang Liu, Siheng Li, Yujiu Yang, Yefeng Zheng",
  "the 31st ACM International Conference on Information & Knowledge Management, CIKM23, (CCF-B), pp.4084-4088, 2022 [PDF]"
)

- #publication(
  "StyleHEAT: One-Shot High-Resolution Editable Talking Face Generation via Pre-trained StyleGAN",
  "Fei Yin, Yong Zhang, Xiaodong Cun, Mingdeng Cao, Yanbo Fan, Xuan Wang, Qingyan Bai, Baoyuan Wu, Jue Wang, Yujiu Yang",
  "ECCV 2022 - 17th European Conference, (CCF-B), pp.85-101, 2022 [PDF]"
)

- #publication(
  "High-Fidelity GAN Inversion with Padding Space",
  "Qingyan Bai, Yinghao Xu, Jiapeng Zhu, Weihao Xia, Yujiu Yang, Yujun Shen",
  "ECCV 2022 - 17th European Conference, (CCF-B), pp.36-53, 2022 [PDF]"
)

- #publication(
  "Learning Quality-aware Dynamic Memory for Video Object Segmentation",
  "Yong Liu, Ran Yu, Fei Yin, Xinyuan Zhao, Wei Zhao, Weihao Xia, Yujiu Yang",
  "ECCV 2022 - 17th European Conference, (CCF-B), pp.468-486, 2022 [PDF]"
)

- #publication(
  "Global Spectral Filter Memory Network for Video Object Segmentation",
  "Yong Liu, Ran Yu, Jiahao Wang, Xinyuan Zhao, Yitong Wang, Yansong Tang, Yujiu Yang",
  "ECCV 2022 - 17th European Conference, (CCF-B), pp.648-665, 2022 [PDF]"
)

- #publication(
  "Learning Adaptive Warping for RealWorld Rolling Shutter Correction",
  "Mingdeng Cao, Zhihang Zhong, Jiahao Wang, Yinqiang Zheng, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2022, (CCF-A), pp.17764-17772, 2022 [PDF]"
)

- #publication(
  "Augmenting Anchors by the Detector Itself",
  "Xiaopei Wan, Guoqiu Li, Yujiu Yang, Zhenhua Guo",
  "the Thirty-First International Joint Conference on Artificial Intelligence, IJCAI 2022, (CCF-A), pp.1371-1377, 2022 [PDF]"
)

- #publication(
  "EmpHi: Generating Empathetic Responses with Humanlike Intents",
  "Mao Yan Chen, Siheng Li, Yujiu Yang",
  "the North American Chapter of the Association for Computational Linguistics: Human Language Technologies, NAACL 2022, (CCF-B), pp.1063-1074, 2022 [PDF]"
)

- #publication(
  "MANIQA: Multi-dimension Attention Network for No-Reference Image Quality Assessment",
  "Sidi Yang, Tianhe Wu, Shuwei Shi, Shanshan Lao, Yuan Gong, Mingdeng Cao, Jiahao Wang, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition Workshops, CVPR Workshops 2022, (Champion), pp.1190-1199, 2022 [PDF]"
)

- #publication(
  "Attentions Help CNNs See Better: Attention-based Hybrid Image Quality Assessment Network",
  "Shanshan Lao, Yuan Gong, Shuwei Shi, Sidi Yang, Tianhe Wu, Jiahao Wang, Weihao Xia, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition Workshops, CVPR Workshops 2022, (Champion), pp.1139-1148, 2022 [PDF]"
)

- #publication(
  "Multi-Turn Incomplete Utterance Restoration As Object Detection",
  "Wangjie Jiang, Siheng Li, Jiayi Li, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2022, (CCF-B), pp.8052-8056, 2022 [PDF]"
)

- #publication(
  "Attention Probe: Vision Transformer Distillation in the Wild",
  "Jiahao Wang, Mingdeng Cao, Shuwei Shi, Baoyuan Wu, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2022, (CCF-B), pp.2220-2224, 2022 [PDF]"
)

- #publication(
  "TediGAN: Text-Guided Diverse Face Image Generation and Manipulation",
  "Weihao Xia, Yujiu Yang, Jing-Hao Xue, Baoyuan Wu",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2021, (CCF-A), pp.2256-2265, 2021 [PDF]"
)

- #publication(
  "Probabilistic Modeling of Semantic Ambiguity for Scene Graph Generation",
  "Gengcong Yang, Jingyi Zhang, Yong Zhang, Baoyuan Wu, Yujiu Yang",
  "IEEE/CVF Conference on Computer Vision and Pattern Recognition, CVPR 2021, (CCF-A), pp.12527-12536, 2021 [PDF]"
)

- #publication(
  "MIRTT: Learning Multimodal Interaction Representations from Trilinear Transformers for Visual Question Answering",
  "Junjie Wang, Yatai Ji, Jiaqi Sun, Yujiu Yang, Tetsuya Sakai",
  "the Association for Computational Linguistics: EMNLP 2021, (CCF-B), pp.2280-2292, 2021 [PDF]"
)

- #publication(
  "More: A Metric Learning Based Framework for Open-Domain Relation Extraction",
  "Yutong Wang, Renze Lou, Kai Zhang, Mao Yan Chen, Yujiu Yang",
  "International Conference on Acoustics, Speech and Signal Processing, ICASSP2021, (CCF-B), pp.7698-7702, 2021 [PDF]"
)

- #publication(
  "Adder Attention for Vision Transformer",
  "Han Shu, Jiahao Wang, Hanting Chen, Lin Li, Yujiu Yang, Yunhe Wang",
  "Annual Conference on Neural Information Processing Systems 2021, NeurIPS 2021, (CCF-A), pp.19899-19909, 2021 [PDF]"
)

- #publication(
  "DT-QDC: A Dataset for Question Comprehension in Online Test",
  "Sijin Wu, Yujiu Yang, Nicholas Yung, Zhengchen Shen, Zeyang Lei",
  "the 28th International Conference on Computational Linguistics, COLING 2020, (CCF-B), pp.6470-6480, 2020 [PDF]"
)

- #publication(
  "STCN: A Lightweight Sleep Staging Model with Multiple Channels",
  "Yue Wu, Yui Lo, Yujiu Yang",
  "IEEE International Conference on Bioinformatics and Biomedicine, BIBM 2020, (CCF-B), pp.1180-1183, 2020 [PDF]"
)

- #publication(
  "Topic Enhanced Controllable CVAE for Dialogue Generation (Student Abstract)",
  "Yiru Wang, Pengda Si, Zeyang Lei, Yujiu Yang",
  "The Thirty-Fourth AAAI Conference on Artificial Intelligence, AAAI 2020, (CCF-A), pp.13955-13956, 2020 [PDF]"
)

- #publication(
  "HGCN4MeSH: Hybrid Graph Convolution Network for MeSH Indexing",
  "Miaomiao Yu, Yujiu Yang, Chenhui Li",
  "the 58th Annual Meeting of the Association for Computational Linguistics: Student Research Workshop, ACL 2020, (CCF-A), pp.20-26, 2020 [PDF]"
)

- #publication(
  "Sparse Adversarial Attack via Perturbation Factorization",
  "Yanbo Fan, Baoyuan Wu, Tuanhui Li, Yong Zhang, Mingyang Li, Zhifeng Li, Yujiu Yang",
  "ECCV 2020 - 16th European Conference, (CCF-B), pp.35-50, 2020 [PDF]"
)

- #publication(
  "Cognitive Representation Learning of Self-Media Online Article Quality",
  "Yiru Wang, Shen Huang, Gongfu Li, Qiang Deng, Dongliang Liao, Pengda Si, Yujiu Yang, Jin Xu",
  "The 28th ACM International Conference on Multimedia, ACM Multimedia 2020, (CCF-A), pp.843-851, 2020 [PDF]"
)

- #publication(
  "Controllable Continuous Gaze Redirection",
  "Weihao Xia, Yujiu Yang, Jing-Hao Xue, Wensen Feng",
  "The 28th ACM International Conference on Multimedia, ACM Multimedia 2020, (CCF-A), pp.1782-1790, 2020 [PDF]"
)

- #publication(
  "G2T: Generating Fluent Descriptions for Knowledge Graph",
  "Yunzhou Shi, Zhiling Luo, Pengcheng Zhu, Feng Ji, Wei Zhou, Haiqing Chen, Yujiu Yang",
  "the 43rd International ACM SIGIR conference on research and development in Information Retrieval, SIGIR 2020, (CCF-A), pp.1861-1864, 2020 [PDF]"
)

- #publication(
  "A Human-Like Semantic Cognition Network for Aspect-Level Sentiment Classification",
  "Zeyang Lei, Yujiu Yang, Min Yang, Wei Zhao, Jun Guo, Yi Liu",
  "The Thirty-Third AAAI Conference on Artificial Intelligence, AAAI 2019, (CCF-A), pp.6650-6657, 2019 [PDF]"
)

- #publication(
  "Compressing Convolutional Neural Networks via Factorized Convolutional Filters",
  "Tuanhui Li, Baoyuan Wu, Yujiu Yang, Yanbo Fan, Yong Zhang, Wei Liu",
  "IEEE Conference on Computer Vision and Pattern Recognition, CVPR 2019, (CCF-A), pp.3977-3986, 2019 [PDF]"
)

- #publication(
  "Residual Dilated Network with Attention for Image Blind Denoising",
  "Guanqun Hou, Yujiu Yang, Jing-Hao Xue",
  "IEEE International Conference on Multimedia and Expo, ICME 2019, (CCF-B), pp.248-253, 2019 [PDF]"
)

- #publication(
  "Self-supervised Feature Learning for 3D Medical Images by Playing a Rubik's Cube",
  "Xinrui Zhuang, Yuexiang Li, Yifan Hu, Kai Ma, Yujiu Yang, Yefeng Zheng",
  "Medical Image Computing and Computer Assisted Intervention - MICCAI 2019, (CCF-B), pp.420-428, 2019 [PDF]"
)

- #publication(
  "Sentiment Lexicon Enhanced Attention-Based LSTM for Sentiment Classification",
  "Zeyang Lei, Yujiu Yang, Min Yang",
  "the Thirty-Second AAAI Conference on Artificial Intelligence, AAAI-18, (CCF-A), pp.8105-8106, 2018 [PDF]"
)

- #publication(
  "A Multi-sentiment-resource Enhanced Attention Network for Sentiment Classification",
  "Zeyang Lei, Yujiu Yang, Min Yang",
  "the 56th Annual Meeting of the Association for Computational Linguistics, ACL 2018, (CCF-A), pp.758-763, 2018 [PDF]"
)

- #publication(
  "SAAN: A Sentiment-Aware Attention Network for Sentiment Analysis",
  "Zeyang Lei, Yujiu Yang, Min Yang",
  "The 41st International ACM SIGIR Conference on Research & Development in Information Retrieval, SIGIR 2018, (CCF-A), pp.1197-1200, 2018 [PDF]"
)

- #publication(
  "LAAN: A Linguistic-Aware Attention Network for Sentiment Analysis",
  "Zeyang Lei, Yujiu Yang, Yi Liu",
  "the The Web Conference 2018 on The Web Conference 2018, WWW 2018, (CCF-A), pp.47-48, 2018 [PDF]"
)

// 2018年之前的论文
== Before 2018

- #publication(
  "A Method of General Acceleration SRDCF Calculation via Reintroduction of Circulant Structure",
  "X. Hu, Y. Yang",
  "Chinese Conference on Computer Vision (CCCV), 2017"
)

- #publication(
  "Combining User-based and Global Lexicon Features for Sentiment Analysis in Twitter",
  "Z. Jin, Y. Yang, X. Bao, B. Huang",
  "International Joint Conference on Neural Networks (IJCNN), 2016"
)

- #publication(
  "A Framework of Joint Graph Embedding and Sparse Regression for Dimensionality Reduction",
  "X. Shi, Z. Guo, Z. Lai, Y. Yang, Z. Bao, D. Zhang",
  "IEEE Transactions on Image Processing (TIP), 2015"
)

- #publication(
  "Within-class Penalty based Multi-class Support Vector Machine",
  "X. Shi, Z. Guo, Y. Yang, L. Yang",
  "IEEE International Conference on Image Processing (ICIP), 2015"
)

- #publication(
  "Face Recognition by Sparse Discriminant Analysis via Joint L2,1-norm Minimization",
  "X. Shi, Y. Yang, Z. Guo, Z. Lai",
  "Elsevier Pattern Recognition (PR), 2014"
)

- #publication(
  "ICSRec: Interest Circle-based Recommendation System Incorporating Social Propagation",
  "B. Yin, Y. Yang, W. Liu",
  "IEEE International Conference on Information Science and Technology (ICIST, Best Paper Honourable Mentions), 2014"
)

- #publication(
  "Exploring Social Activeness and Dynamic Interest in Community-based Recommender system",
  "B. Yin, Y. Yang, W. Liu",
  "International World Wide Web Conference (WWW), 2014"
)

- #publication(
  "Node classification in social network via a factor graph model",
  "H. Xu, Y. Yang, L. Wang, W. Liu",
  "Pacific-Asia Conference on Knowledge Discovery and Data Mining (PAKDD), 2013"
)

- #publication(
  "Latent Community Discovery with Network Regularization for Core Actors Clustering",
  "G. Xun, Y. Yang, W. Liu",
  "International Conference on Computational Linguistics (COLING), 2012"
)

- #publication(
  "Trended DTW based on piecewise linear approximation for time series mining",
  "L. Sun, Y. Yang, W. Liu",
  "IEEE International Conference on Data Mining (ICDM), 2011"
)


/*
// ==== SKILLS SUMMARY (Optional Section) ====
#section-title("Skills Summary")
#grid(
  columns: (auto, 1fr),
  row-gutter: 5pt,
  column-gutter: 2em,
  [#text(weight: "bold")[Coding Languages]], [Python, PyTorch, Matlab],
  [#text(weight: "bold")[Software Skills]], [\LaTeX, PyCharm, Linux and shell, Git],
)
*/
