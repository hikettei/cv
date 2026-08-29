#let ink = rgb("#17212b")
#let muted = rgb("#52606d")
#let accent = rgb("#185f78")
#let rule = rgb("#cbd5dc")

#set page(
  paper: "a4",
  margin: (x: 17mm, y: 13mm),
)
#set document(
  title: "Yuma Oda - Resume",
  author: "Yuma Oda",
)
#set text(
  font: "Helvetica Neue",
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
  spacing: 0.34em,
)

#let external-link(url, label) = link(url, text(fill: accent, label))

#let section(title) = {
  v(10.5pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 8pt,
    align: horizon,
    text(size: 10.6pt, weight: "bold", fill: accent, tracking: 0.05em)[
      #upper(title)
    ],
    line(length: 100%, stroke: 0.7pt + rule),
  )
  v(4.5pt)
}

#let entry-heading(organization, role, dates: none, meta: none) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 10pt,
    align: (left, right),
    [
      #strong(organization)
      #if role != none [#text(fill: muted)[ — #role]]
    ],
    if dates != none [#text(size: 8.8pt, weight: "medium")[#dates]],
  )
  if meta != none {
    v(-0.5pt)
    text(size: 8.5pt, fill: muted)[#meta]
  }
}

#align(left, stack(
  dir: ttb,
  spacing: 4pt,
  align(left, text(size: 24pt, weight: "bold", tracking: -0.02em)[Yuma Oda]),
  align(left, text(size: 10.9pt, weight: "medium", fill: muted)[
    Research Engineer | ML Systems, Compilers, Inference
  ]),
  align(left, text(size: 8.9pt)[
    #external-link("https://github.com/hikettei", [github.com/hikettei])
  ]),
))

#v(9pt)
#text(size: 10pt)[
  Second-year undergraduate at Keio University and Research Engineer at Mirai Labs,
  focused on ML systems, compiler infrastructure, and efficient LLM inference.
  Current research spans speculative decoding, model-runtime co-design, and neural
  network quantization. Long-standing interests include compilers and Common Lisp.
]

#section("Education")
#entry-heading(
  "Keio University",
  "B.A. Candidate, Environment and Information Studies",
  dates: "Apr 2025 - Present",
)
#text(size: 8.8pt, fill: muted)[Focus: Computer Science, Transactions, and Databases]

#section("Experience")
#entry-heading(
  "Mirai Labs",
  "Research Engineer",
  dates: "Mar 2026 - Present",
  meta: [Full-time · Remote · San Francisco, CA, USA],
)
- Research model- and system-level methods for speculative decoding, including
  co-design of draft models and runtime verification, as described in this
  #external-link("https://arxiv.org/abs/2607.06763", [paper]).

#v(4pt)
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
#text(size: 8.9pt)[
  *Yuma Oda*, Ryan Mathieu, Roman Knyazhitskiy, and Artur Chakhvadze.
  “#external-link("https://arxiv.org/abs/2607.06763", [Trees from Marginals:
  Autoregressive drafting with factorized priors]).” _arXiv preprint
  arXiv:2607.06763_, 2026.
]

#section("Selected Projects & Open Source")
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

#v(4pt)
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
  [#text(size: 8.8pt, weight: "medium")[Nov 2023]],
  [*Sokan no Susume Scholarship*, Keio University · #text(fill: muted, "$15,000 scholarship")],
  [#text(size: 8.8pt, weight: "medium")[Apr 2025 - Present]],
)

#section("Languages")
*Japanese* — Native #h(18pt) *English* — Upper-intermediate (CEFR B2)
