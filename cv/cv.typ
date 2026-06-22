// Simon Meoni — CV
// Build: typst compile cv.typ ../assets/Simon_Meoni_CV.pdf

#let accent = rgb("#1f6feb")
#let muted  = rgb("#666666")
#let rule   = rgb("#e3e3e3")

#set document(title: "Simon Meoni — CV", author: "Simon Meoni")
#set page(paper: "a4", margin: (x: 1.7cm, top: 1.35cm, bottom: 1.2cm))
#set text(font: "Helvetica Neue", size: 9.7pt, fill: rgb("#1a1a1a"), lang: "en")
#set par(leading: 0.54em, justify: false)
#show link: it => text(fill: accent)[#it]

#let section(title) = {
  v(0.32em)
  text(size: 8pt, weight: "medium", tracking: 0.18em, fill: muted)[#upper(title)]
  v(-0.3em)
  line(length: 100%, stroke: 0.5pt + rule)
  v(0.1em)
}

#let entry(period, title, org, loc: none, body: none) = {
  grid(
    columns: (3.2cm, 1fr),
    column-gutter: 0.6em,
    row-gutter: 0.2em,
    text(size: 8.4pt, fill: muted)[#period],
    {
      text(weight: "semibold")[#title]
      if org != none [ #h(0.4em)#text(fill: muted)[· #org] ]
      if loc != none [ #h(0.4em)#text(size: 8pt, fill: muted)[#loc] ]
      if body != none {
        v(0.15em)
        set text(size: 9pt, fill: rgb("#333333"))
        body
      }
    },
  )
  v(0.45em)
}

#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  {
    text(size: 22pt, weight: "bold", tracking: -0.01em)[Simon Meoni]
    h(0.4em)
    text(size: 13pt, fill: muted)[PhD]
    v(0.1em)
    text(size: 10.5pt, fill: accent)[NLP Researcher — Synthetic Clinical Data & Privacy]
  },
  text(size: 8.6pt, fill: muted)[
    #link("mailto:simonmeoni@aol.com")[simonmeoni\@aol.com]\
    #link("https://simonmeoni.github.io")[simonmeoni.github.io]\
    #link("https://github.com/simonmeoni")[github.com/simonmeoni]\
    #link("https://www.linkedin.com/in/smeoni/")[linkedin.com/in/smeoni]
  ],
)
#v(0.4em)
#line(length: 100%, stroke: 0.8pt + rgb("#1a1a1a"))

#section("Profile")
PhD in Natural Language Processing, specialised in generating and evaluating
*synthetic clinical data* under privacy constraints. Research bridges large
language models, the privacy–utility trade-off, and downstream medical tasks
(clinical entity extraction, ICD coding). Open to research roles in industry or academia.

#section("Experience")

#entry(
  "May 2022 — 2026", "PhD Researcher (CIFRE)", "Arkhn / Inria Almanach", loc: "Paris, France",
  body: [
    Thesis: privacy-preserving synthetic clinical document generation with LLMs.
    Facsimile documents, DP fine-tuning and iterative DPO, linkage/proximity
    privacy attacks, ICD-9 and semantic-similarity downstream evaluation.
    Defended 17 June 2026.
  ],
)

#entry(
  "2020 — 2022", "NLP Data Scientist", "360 medics", loc: "Lyon, France",
  body: [
    Low-resource clinical NER on French medical data: semi-automatic annotation
    strategies, transformer deployment and latency optimisation, rule/classifier baselines.
  ],
)

#entry(
  "2019 — 2020", "Developer / Analyst", "Orange", loc: "Nancy, France",
  body: [
    Infrastructure test-automation software: functional specs, migration of the
    architecture to Kubernetes, continuous-integration setup.
  ],
)

#entry(
  "2019", "Research Engineer", "University of Glasgow, School of Computing Science", loc: "Glasgow, UK",
  body: [
    Natural language generation for social robotics — socially intelligent robotic agents.
  ],
)

#entry(
  "2015 — 2019", "NLP Engineer", "CNRS — ATILF", loc: "Nancy, France",
  body: [
    Linguistic pipelines for ISTEX/TermITH (terminology extraction & disambiguation,
    XML/TEI), technical lead on CoReA2D semantic-annotation tooling, Démonette web resource.
  ],
)

#section("Education")

#entry("2014 — 2015", "M.Sc. Cognitive Science & NLP", "Université de Lorraine")
#entry("2013 — 2014", "M.Sc. Cognitive Science", "Université de Lorraine")
#entry("2009 — 2012", "B.Sc. Cognitive & Computer Science", "Université de Lorraine")

#section("Selected Publications")

#set enum(numbering: n => text(fill: muted)[#n.], spacing: 0.6em)
+ *Synthetic Documents for Medical Tasks: Bridging Privacy with Knowledge Injection and Reward Mechanism.* S. Meoni, É. de la Clergerie, T. Ryffel. #text(fill: muted)[CL4Health, 2025.]
+ *Generating Synthetic Documents with Clinical Keywords: A Privacy-Sensitive Methodology.* S. Meoni, É. de la Clergerie, T. Ryffel. #text(fill: muted)[CL4Health @ LREC-COLING, 2024.] #link("https://aclanthology.org/2024.cl4health-1.14/")[acl]
+ *Large Language Models as Instructors: A Study on Multilingual Clinical Entity Extraction.* S. Meoni, T. Ryffel, É. de la Clergerie. #text(fill: muted)[BioNLP @ ACL, 2023.] #link("https://aclanthology.org/2023.bionlp-1.15/")[acl]
+ *NL-Augmenter: A Framework for Task-Sensitive Natural Language Augmentation.* K. Dhole, V. Gangal, S. Gehrmann, et al. #text(fill: muted)[NEJLT, 2023.]
+ *Adapting NLG Methods to Social Robotics.* S. Meoni, M. E. Foster. #text(fill: muted)[NLP for Conversational AI @ ACL, 2019.]

#v(0.12em)
#text(size: 8.4pt, fill: muted)[Full list: #link("https://scholar.google.com/citations?user=IM1IBPYAAAAJ")[Google Scholar] · #link("https://dblp.org/pid/351/3668.html")[DBLP]]

#section("Skills")
#grid(
  columns: (3.2cm, 1fr),
  column-gutter: 0.6em,
  row-gutter: 0.28em,
  text(size: 8.4pt, fill: muted)[Languages], [Python, Java, LaTeX/Typst, SQL],
  text(size: 8.4pt, fill: muted)[ML / NLP], [PyTorch, Lightning, Transformers, spaCy, LLM fine-tuning (SFT/DPO), differential privacy],
  text(size: 8.4pt, fill: muted)[Infra], [Docker, Kubernetes, Git, CI/CD, Google Cloud Platform],
  text(size: 8.4pt, fill: muted)[Spoken], [French (native), English (fluent)],
)
