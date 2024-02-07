#import "components.typ": *

#let abstract(lang: "en") = {

  set text(
    font: body-font, 
    size: 12pt, 
    lang: lang
  )
  set align(center)
   
  v(0.1fr)

  text(font: body-font, 1em, weight: "semibold", 
    if lang == "en" [Abstract]
    else if lang == "de" [Zusammenfassung]
  )
  linebreak()
  text(
    if lang == "en" [Insert the English abstract here.]
    else if lang == "de" [Insert the German abstract here.]
  )
  
  v(1fr)

  pagebreak()
}