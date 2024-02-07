#import "components.typ": *

#let disclaimer(
  city: "                    ",
) = {
  text(
    font: sans-font,
    size: 2em,
    weight: 700,
    "Selbstständigkeitserklärung"
  )

  line(
    start: (0pt, -1.5em),
    length: 100%
  )
    
  "Hiermit erkläre ich, dass ich die vorliegende Arbeit selbständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel verwendet habe."

  v(15mm)

  let signature-line = (length) => {
    box(
      line(
        length: length,
        stroke: (dash: "loosely-dotted")
      )
    )
  }

  grid(
      columns: 2,
      gutter: 0.5em,
      column-gutter: 1fr,

      city + ", den " + signature-line(3cm)," " + signature-line(5cm)
  )

  pagebreak()

}
