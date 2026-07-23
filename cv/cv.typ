// Simon Meoni — CV
// Build: typst compile cv.typ ../assets/Simon_Meoni_CV.pdf

#let ink    = rgb("#1a1a1a")
#let mid    = rgb("#555555")
#let faint  = rgb("#8a8a8a")
#let hair   = rgb("#e6e6e6")

#set document(title: "Simon Meoni — CV", author: "Simon Meoni")
#set page(paper: "a4", margin: (x: 1.9cm, top: 1.3cm, bottom: 1.0cm))
#set text(font: "Helvetica Neue", size: 9pt, fill: ink, lang: "en")
#set par(leading: 0.45em, justify: false)
#show link: it => underline(offset: 1.5pt, stroke: 0.4pt + faint)[#text(fill: ink)[#it]]

#let sidebar = 3.4cm
#let gut = 0.7cm

// — section: label in the left rail, content on the right —
#let section(label, content) = {
  block(above: 0.55em, below: 0em, breakable: true)[
    #grid(
      columns: (sidebar, 1fr),
      column-gutter: gut,
      align: (left + top, left + top),
      text(size: 7.6pt, weight: "bold", tracking: 0.16em, fill: faint)[#upper(label)],
      content,
    )
  ]
}

// — one entry: year column + body —
#let item(year, head, sub: none, body: none) = {
  grid(
    columns: (2.1cm, 1fr),
    column-gutter: 0.4cm,
    row-gutter: 0pt,
    text(size: 8.3pt, fill: faint)[#year],
    {
      text(weight: "medium", size: 9.7pt)[#head]
      if sub != none { text(fill: mid)[ \u{2002}#sub] }
      if body != none {
        linebreak()
        set text(size: 9pt, fill: mid)
        body
      }
    },
  )
  v(0.2em)
}

// ─────────── HEADER ───────────
#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  {
    text(size: 25pt, weight: "regular", tracking: -0.015em)[Simon Meoni]
    text(size: 11pt, fill: faint)[ \u{2002}PhD]
  },
  text(size: 8.2pt, fill: mid)[
    #link("mailto:simonmeoni@aol.com")[simonmeoni\@aol.com]\
    #link("https://simonmeoni.github.io")[simonmeoni.github.io] · #link("https://github.com/simonmeoni")[github.com/simonmeoni]
  ],
)
#v(0.45em)
#text(size: 10pt, fill: mid, tracking: 0.01em)[Research Engineer · NLP — Synthetic Clinical Data & Privacy]
#v(0.7em)
#line(length: 100%, stroke: 0.6pt + ink)

// ─────────── PROFILE ───────────
#section("Profile")[
  PhD in Natural Language Processing specialised in generating and evaluating
  *synthetic clinical data* under privacy constraints, now a Research Engineer at
  Arkhn building LLM-based clinical document generation with compact, self-hosted
  models. Work bridges large language models, the privacy–utility trade-off, and
  downstream medical tasks such as clinical entity extraction and ICD coding.
]

// ─────────── EXPERIENCE ───────────
#section("Experience")[
  #item("2026 —", "Research Engineer", sub: "Arkhn, Paris",
    body: [LLM-based clinical document generation for Arkhn's hospital assistant: agent
      architecture, structured patient-context with source traceability, human-in-the-loop
      workflows on compact, self-hosted models.])
  #item("2022 — 26", "Doctoral Researcher (CIFRE)", sub: "Arkhn × Inria Almanach, Paris",
    body: [Privacy-preserving synthetic clinical document generation with LLMs: facsimile
      documents, DP fine-tuning and iterative DPO, linkage/proximity privacy attacks,
      downstream evaluation on ICD-9 and semantic similarity.])
  #item("2022", "NLP Engineer", sub: "Arkhn, Paris",
    body: [NLP components for structuring clinical documents within Arkhn's
      health-data platform, before transitioning to the industrial PhD.])
  #item("2020 — 22", "NLP Data Scientist", sub: "360 medics, Lyon",
    body: [Low-resource clinical NER on French medical data: semi-automatic annotation,
      transformer deployment and latency optimisation, rule and classifier baselines.])
  #item("2019 — 20", "Developer / Analyst", sub: "Orange, Nancy",
    body: [Infrastructure test-automation: functional specifications, migration of the
      architecture to Kubernetes, continuous-integration setup.])
  #item("2019", "Research Engineer", sub: "University of Glasgow, Computing Science",
    body: [Natural language generation for social robotics — socially intelligent agents.])
  #item("2015 — 19", "NLP Engineer", sub: "CNRS — ATILF, Nancy",
    body: [Linguistic pipelines for ISTEX / TermITH (terminology extraction, XML/TEI),
      technical lead on CoReA2D annotation tooling, Démonette web resource.])
]

// ─────────── EDUCATION ───────────
#section("Education")[
  #item("2022 — 26", "PhD, Natural Language Processing", sub: "Sorbonne Université · defended 19 June 2026")
  #item("2014 — 15", "M.Sc. Cognitive Science & NLP", sub: "Université de Lorraine")
  #item("2009 — 12", "B.Sc. Cognitive & Computer Science", sub: "Université de Lorraine")
]

// ─────────── PUBLICATIONS ───────────
#section("Selected Publications")[
  #set par(leading: 0.5em)
  #let pub(year, title, venue, url: none) = {
    grid(columns: (2.1cm, 1fr), column-gutter: 0.4cm,
      text(size: 8.3pt, fill: faint)[#year],
      {
        text(size: 9.3pt)[#title]
        text(fill: faint, size: 8.6pt)[ \u{2002}#venue]
        if url != none { text(size: 8.6pt)[ #link(url)[↗]] }
      })
    v(0.28em)
  }
  #pub("2025", [*Synthetic Documents for Medical Tasks: Bridging Privacy with Knowledge Injection and Reward Mechanism*], "CL4Health")
  #pub("2024", [*Generating Synthetic Documents with Clinical Keywords: A Privacy-Sensitive Methodology*], "CL4Health @ LREC-COLING", url: "https://aclanthology.org/2024.cl4health-1.14/")
  #pub("2023", [*Large Language Models as Instructors: A Study on Multilingual Clinical Entity Extraction*], "BioNLP @ ACL", url: "https://aclanthology.org/2023.bionlp-1.15/")
  #pub("2023", [*Annotate French Clinical Data Using Large Language Model Predictions*], "IEEE ICHI", url: "https://doi.org/10.1109/ICHI57859.2023.00099")
  #pub("2023", [NL-Augmenter: A Framework for Task-Sensitive Natural Language Augmentation], "NEJLT")
  #pub("2019", [Adapting NLG Methods to Social Robotics], "NLP for Conversational AI @ ACL")
  #v(0.05em)
  #text(size: 8.2pt, fill: faint)[Full list — #link("https://scholar.google.com/citations?user=IM1IBPYAAAAJ")[Google Scholar] · #link("https://dblp.org/pid/351/3668.html")[DBLP]]
]

// ─────────── SKILLS ───────────
#section("Skills")[
  #set par(leading: 0.55em)
  #grid(columns: (1.9cm, 1fr), column-gutter: 0.4cm, row-gutter: 0.4em,
    text(size: 8.3pt, fill: faint)[ML / NLP], text(size: 9pt, fill: mid)[LLM fine-tuning & alignment (Transformers, TRL, SFT / DPO), reward modeling, synthetic data generation, differential privacy, PyTorch, Lightning, spaCy],
    text(size: 8.3pt, fill: faint)[LLM Agents], text(size: 9pt, fill: mid)[LLM agents & orchestration (Claude SDK, LangGraph, Deep Agent), evaluation & observability (Weights & Biases, Langfuse)],
    text(size: 8.3pt, fill: faint)[Engineering], text(size: 9pt, fill: mid)[Python, Java, SQL, LaTeX / Typst, Docker, Kubernetes, vLLM, FastAPI, Git, CI/CD (GitHub Actions), GCP],
    text(size: 8.3pt, fill: faint)[Spoken], text(size: 9pt, fill: mid)[French (native), English (professional)],
  )
]
