#import "components.typ": *

#let acknowledgement() = {
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "en"
  )

  set par(leading: 1em)

  align(left, text(font: sans-font, 2em, weight: 700,"Acknowledgements"))
  v(15mm)
}