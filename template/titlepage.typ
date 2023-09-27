#import "components.typ": *

#let titlepage(
  title: "",
  documentType: "",
  supervisor: "",
  secondSupervisor: "",
  advisors: (),
  author: "",
  city: none,
  date: none,
  lang: "en",
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
    lang: lang
  )

  set par(leading: 1em)

  
  // Title Page
  align(center, image("../template/figures/fin-de.svg", width: 100%))

  v(5mm)

  block(
    inset: 2cm
  )[
    #text(font: sans-font, 2em, weight: 700, documentType)
    #par(leading: 0.6em)[
      #text(font: sans-font, 1.6em, weight: 500, title)
    ]
    #v(1em)
    #text(font: sans-font, 1.2em, weight: 500, author)
    #if (city != none and date != none) [
      \
      #text(font: sans-font, 1.2em, weight: 500, city + ", " + date)
    ]
  ]

    pad(
      top: 0em,
      right: 15%,
      left: 15%,
      grid(
        columns: 2,
        gutter: 1em,
        strong(
          if (lang == "de") [
            Betreuer: 
          ] else [
            Advisors: 
          ]
        ), advisors.join(", "),
        strong(
          if (lang == "de") [
            Themensteller: 
          ] else [
            Supervisor: 
          ]
        ), supervisor,
        strong(
          if (lang == "de") [
            Zweitgutachter: 
          ] else [
            Second Supervisor: 
          ]
        ), secondSupervisor,
      )
    )

  align(bottom)[
    #line(length: 100%)
    #grid(
      columns: 2,
      gutter: 1em,
      par(leading: 0.6em)[
        Otto-von-Guericke-Universität Magdeburg\
        Magdeburg Research and Competence Cluster\
        Fakultät Informatik\
        Institut für Technische und Betriebliche Informationssysteme\
        Very Large Business Applications Lab\
      ],
      align(right + top)[
        #move(dx: 1.2cm, dy: 0cm)[
          #image("figures/ucc.svg", width: 2cm)
        ]
      ]
    )
  ]

  pagebreak()
}