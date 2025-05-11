#import "@preview/versatile-apa:7.1.2": *
#import "@preview/wordometer:0.1.4": *

// Document titles should be formatted in title case (https://capitalizemytitle.com/)
#let doc-title = [Klarna, din neste bank?]

#show: word-count.with(  
  exclude: (outline, bibliography, appendix, <no-wc>),
)

#show: versatile-apa.with(
  title: doc-title,

  authors: (
  ),
  affiliations: (
  ),

  // Student-specific fields
  course: [SMC 1030: Fintech, muliggjørende teknologier og endring],
  //instructor: [Instructor Name],
  // At the moment only supports English
  due-date: "13.05.2025",

  // Professional-specific fields
  running-head: [SMC 1030],

  keywords: ("APA", "template", "Typst"),

  // Common fields
  font-family: "Times New Roman",
  font-size: 12pt,
  region: "us",
  language: "no",
  paper-size: "a4",
  implicit-introduction-heading: false,
  abstract-as-description: false,
)

#outline(title: [Innholdsfortegnelse])

// #outline(target: figure.where(kind: table), title: [Tables])
#pagebreak()
#outline(target: figure.where(kind: image), title: [Figurer])
// #pagebreak()
// #outline(target: figure.where(kind: math.equation), title: [Equations])
// #pagebreak()
// #outline(target: figure.where(kind: raw), title: [Listings])
// #pagebreak()


#pagebreak()
#include "sections/kronikk.typ"

#pagebreak()
#include "sections/innledning.typ"

#pagebreak()
#include "sections/fremtidsbilde.typ"

#pagebreak()
#include "sections/utfordringer.typ"

#pagebreak()
#include "sections/organisatoriske-utfordringer.typ"

#pagebreak()
#include "sections/løsning.typ"

#pagebreak()
#bibliography(
  "bibliography/ref.bib", // or ref.yml
  full: false,
  title: [Bibliografi],
  style: "apa",
)

#pagebreak()
#include "sections/refleksjoner.typ"

#pagebreak()
#include "sections/bruk-av-ki.typ"

#show: appendix

//#include "sections/appendix.typ"
