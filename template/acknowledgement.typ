#import "components.typ": *

#let acknowledgement(heading: true, body) = {

  if heading {
    align(
      left,
      text(
        font: sans-font,
        size: 2em,
        weight: 700,
        "Acknowledgements")
      )
  }

  set align(center + horizon)
  
  body

  pagebreak()
}