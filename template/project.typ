#import "components.typ": *

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
    margin: (left: 30mm, right: 30mm, top: 27mm, bottom: 27mm),
    numbering: "1",
    number-align: center,
  )

  // New content should start on the right page which is odd when printed double-sided
  set pagebreak(to: "odd")

  set text(
    font: body-font, 
    size: 11pt, 
    lang: lang
  )
  show math.equation: set text(weight: 400)
  show heading: set text(font: sans-font)

  let number-until-with(max-level, schema) = (..numbers) => {
    if numbers.pos().len() <= max-level {
      numbering(schema, ..numbers)
    } else if numbers.pos().len() > max-level {
      let reduced_numbers = numbers.pos().slice(max-level)
      numbering(schema + ".", ..reduced_numbers)
    }
  }
  set heading(numbering: number-until-with(3, "1.1"))
  let small-heading() = it => [
    #set text(
      weight: "regular",
      style: "italic"
    )
    #it
  ]
  show heading.where(level: 4) : small-heading()
  show heading.where(level: 5) : small-heading()
  show heading.where(level: 6) : small-heading()
  show heading.where(level: 7) : small-heading()

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
  bibliography("../thesis.bib")
}
