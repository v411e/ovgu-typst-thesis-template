#import "template/components.typ": *

#let project(
  title: "",
  documentType: "",
  supervisor: "",
  secondSupervisor: "",
  advisors: (),
  author: "",
  date: none,
  lang: "en",
  body,
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: "1",
    number-align: center,
  )

  // New content should start on the right page which is odd when printed double-sided
  set pagebreak(to: "odd")

  set text(
    font: body-font, 
    size: 12pt, 
    lang: lang
  )
  show math.equation: set text(weight: 400)
  show heading: set text(font: body-font)
  set heading(numbering: "1.1")
  set par(leading: 1em)

  // Table of contents
  set outline(indent: 2em)
  show outline: outline => [
    #show heading: heading => [
      #text(font: body-font, 1.5em, weight: 700, heading.body)
      #v(15mm)
    ]
    #outline
  ]
  outline()
  
  
  v(2.4fr)
  pagebreak()


  // Main body
  set par(justify: true)

  body

  pagebreak()
  bibliography("thesis.bib")
}
