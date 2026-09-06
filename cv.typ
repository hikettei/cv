#let serif = "Libertinus Serif"
#let sans = "Helvetica Neue"
#let ink = rgb("#1b1d1f")
#let muted = rgb("#50565c")
#let accent = rgb("#234b6b")
#let rule = rgb("#aeb8c0")

#set page(
  paper: "a4",
  margin: (x: 18mm, y: 15mm),
)
#set document(
  title: "Yuma Oda - Resume",
  author: "Yuma Oda",
)
#set text(
  font: serif,
  size: 10pt,
  fill: ink,
)
#set par(
  justify: false,
  leading: 0.5em,
)
#set list(
  marker: [#text(fill: accent)[•]],
  indent: 0.85em,
  body-indent: 0.48em,
  spacing: 0.32em,
)

#let external-link(url, label) = link(url, text(fill: accent, label))
#let contact-icon(glyph) = text(
  font: "FontAwesome",
  size: 8pt,
  fill: accent,
  glyph,
)

#let section(title) = {
  v(10.5pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 9pt,
    align: horizon,
    text(font: sans, size: 8.8pt, weight: "bold", fill: accent, tracking: 0.11em)[
      #upper(title)
    ],
    line(length: 100%, stroke: 0.45pt + rule),
  )
  v(4.5pt)
}

#let entry-heading(organization, role, dates: none, meta: none) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 10pt,
    align: (left, right),
    [
      #text(size: 10.2pt, weight: "bold")[#organization]
      #if role != none [
        #h(5pt)#text(font: sans, size: 8.7pt, fill: rule)[|]#h(5pt)
        #text(font: sans, size: 9pt, style: "italic", fill: muted)[#role]
      ]
    ],
    if dates != none [#text(font: sans, size: 8.3pt, weight: "medium")[#dates]],
  )
  if meta != none {
    v(0.2pt)
    text(font: sans, size: 8.1pt, fill: muted, tracking: 0.01em)[#meta]
  }
}

#align(left, stack(
  dir: ttb,
  spacing: 2.5pt,
  align(left, text(font: serif, size: 25pt, weight: "bold", tracking: -0.01em)[Yuma Oda]),
  align(left, text(font: sans, size: 9.8pt, weight: "medium", fill: muted, tracking: 0.015em)[
    Research Engineer | ML Systems, Compilers, Inference
  ]),
  align(left, text(font: sans, size: 8.3pt)[
    #contact-icon("\u{f0e0}") #h(3pt)
    #external-link("mailto:yuma.oda@keio.jp", "yuma.oda@keio.jp")
    #h(16pt)
    #contact-icon("\u{f09b}") #h(3pt)
    #external-link("https://github.com/hikettei", [github.com/hikettei])
  ]),
))

#v(6pt)
#line(length: 100%, stroke: 0.8pt + accent)
#v(6pt)
#text(size: 10pt)[
  Research Engineer at Mirai Labs and second-year undergraduate at Keio University.
  My work spans ML systems, compilers, and efficient LLM inference, with a focus on speculative decoding for Apple devices.
  Numerical computing enjoyer and Common Lisp enthusiast.
]

#section("Education")
#entry-heading(
  "Keio University",
  "B.A. Candidate, Environment and Information Studies",
  dates: "Apr 2025 - Apr 2029 (Expected)",
)
#text(font: sans, size: 8.3pt, fill: muted)[Focus: Computer Science, Transactions, and Databases]

#section("Experience")
#entry-heading(
  "Mirai Labs",
  "Research Engineer",
  dates: "Mar 2026 - Present",
  meta: [Full-time · Remote · San Francisco, CA, USA],
)
- Co-developed #external-link("https://arxiv.org/abs/2607.06763", [DFlash-TfM]), a state-of-the-art speculative decoding method, achieving a 4.37× speedup over autoregressive decoding and 24.7% higher throughput than optimized DFlash on Qwen3.6-27B (BF16, single NVIDIA B200).
- Co-developed #external-link("https://trymirai.com/blog/speculative-decoding-in-uzu", [speculative decoding in Uzu]) for Apple M5-series Macs, achieving nearly 2× the decoding throughput of MTPLX and over 3× that of llama.cpp on Qwen3.6-27B at comparable quantization levels.

#v(3.5pt)
#entry-heading(
  "Aoha, Inc.",
  "Software Engineer",
  dates: "Dec 2023 - Aug 2026",
  meta: [Part-time · Hybrid · Minato-ku, Tokyo, Japan],
)
- Built deep-learning compiler infrastructure and neural network quantization
  methods for computer vision models.
- Researched efficient training methods for mixture-of-experts models.
- Built reinforcement learning infrastructure across 56 NVIDIA H200 GPUs for
  automated RTL design, including agent architecture, training harnesses, and
  data/evaluation pipelines.

#section("Publication")
#text(size: 9.6pt)[
  *Yuma Oda*, Ryan Mathieu, Roman Knyazhitskiy, and Artur Chakhvadze.
  “#external-link("https://arxiv.org/abs/2607.06763", [Trees from Marginals:
  Autoregressive drafting with factorized priors]).” _arXiv preprint
  arXiv:2607.06763_, 2026.
]

#section("Personal Project & Open Source Contribution")
#entry-heading(
  [#external-link("https://github.com/hikettei/Caten", [Caten])],
  "Creator and Maintainer",
)
- Created an experimental deep-learning compiler in Common Lisp using lightweight
  IRs, polyhedral compilation, and an optimizing pattern matcher.
- Designed a RISC-style graph IR that lowers computation to 26 composable
  primitive operations.
- Built lazy evaluation, Clang JIT compilation, model inference demos, and
  experimental training and automatic differentiation support.

#v(3.5pt)
#entry-heading(
  [#external-link("https://github.com/tinygrad/tinygrad", [tinygrad])],
  [Fast-math approximations, #external-link("https://github.com/tinygrad/tinygrad/pull/5187", [PR #5187])],
)
- Completed an approximation bounty by implementing SIN, LOG2, and EXP2
  approximations; merged into tinygrad.

#section("Honors & Awards")
#grid(
  columns: (1fr, auto),
  column-gutter: 10pt,
  row-gutter: 3pt,
  [*METI Minister's Award*, U-22 Programming Contest · #text(fill: muted, "$3,600 award")],
  [#text(font: sans, size: 8pt, weight: "medium")[Nov 2023]],
  [*Sokan no Susume Scholarship*, Keio University · #text(fill: muted, "$15,000 scholarship")],
  [#text(font: sans, size: 8pt, weight: "medium")[Apr 2025 - Apr 2029 (Expected)]],
)

#section("Languages")
*Japanese:* Native #h(22pt) *English:* Upper-intermediate (CEFR B2)
