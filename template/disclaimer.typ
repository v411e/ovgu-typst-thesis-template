#import "components.typ": *

#let disclaimer(
  title: "",
  documentType: "",
  author: "",
  submissionDate: none,
  city: "                    ",
) = {
  set document(title: title, author: author)  
  set page(
    margin: (left: 30mm, right: 30mm, top: 40mm, bottom: 40mm),
    numbering: none,
    number-align: center,
  )

  set text(
    font: body-font, 
    size: 12pt, 
    lang: "de"
  )

  set par(leading: 1em)

  
  // --- Disclaimer ---
  pagebreak()
  text("Selbstständigkeitserklärung", font: sans-font, size: 2em,weight: 700)
  line(start: (0pt, -1.5em), length: 100%)
    
  text("Hiermit erkläre ich, dass ich die vorliegende Arbeit selbständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel verwendet habe.")

  v(15mm)
  set line(stroke: (dash: "loosely-dotted"))
  grid(
      columns: 2,
      gutter: 0.5em,
      column-gutter: 1fr,

      city + ", den " + box(line(length: 3cm))," " + box(line(length: 5cm))
  )

  pagebreak(to: "odd")
}
