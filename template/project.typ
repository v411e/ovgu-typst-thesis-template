#import "components.typ": *

#let project(
  title: "",
  author: "",
  lang: "en",
  body,
) = {
  set document(title: title, author: author)
  set page(
    margin: (left: 30mm, right: 30mm, top: 27mm, bottom: 27mm),
    numbering: "1",
    number-align: center,
  )

  // New content should start on the right page which is odd when printed double-sided
  // set pagebreak(weak: true, to: "odd")

  set text(
    font: body-font, 
    size: 11pt, 
    lang: lang
  )
  show math.equation: set text(weight: 400)
  show figure.caption: emph

  show figure.where(
    kind: table
): set figure.caption(position: top)

  show figure.where(
    kind: raw
): set figure.caption(position: top)

  show heading: set text(font: sans-font)
  show heading.where(level: 1): h => [
    #pagebreak(weak: true)
    #h
  ]

  // Apply custom numbering to headings
  set heading(numbering: number-until-with(3, "1.1"))

  // Make nested headings apply small-heading style
  show heading.where(level: 4) : small-heading()
  show heading.where(level: 5) : small-heading()
  show heading.where(level: 6) : small-heading()
  show heading.where(level: 7) : small-heading()

  show par: set block(spacing: 1em) 
  set par(
    justify: true,
    leading: 1em, // Set the space between lines in text
    first-line-indent: 1em
  )

  // Table of contents
  set outline(indent: 2em)
  show outline: outline => [
    #show heading: heading => [
      #text(font: body-font, 1.5em, weight: 700, heading.body)
      #v(15mm)
    ]
    #outline
  ]
  
  body
}
