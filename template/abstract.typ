#import "components.typ": *

#let abstract(lang: "en") = {
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
  

  v(1fr)
  align(center, text(font: body-font, 1em, weight: "semibold", 
    if (lang == "en") [Abstract]
    else if (lang == "de") [Zusammenfassung]
  ))
  
  align(
    center, 
    text[
      #{
        if (lang == "en") [Insert the English abstract here.]
        else if (lang == "de") [Insert the German abstract here.]
      }
    ]
  )
  
  v(1fr)
}