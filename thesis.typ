#import "metadata.typ": *
#import "template/project.typ": *
#import "template/titlepage.typ": *
#import "template/disclaimer.typ": *
#import "template/acknowledgement.typ": *
#import "template/abstract.typ": *
#import "template/components.typ": *


#show: project.with(
  title: title,
  author: author,
  lang: lang
)

#set page(numbering: "I")

#titlepage(
  title: title,
  documentType: documentType,
  supervisor: supervisor,
  secondSupervisor: secondSupervisor,
  advisors: advisors,
  author: author,
  city: city,
  date: date,
  lang: lang
)

#counter(page).update(2)

#disclaimer(
  city: city,
)

#acknowledgement(
  heading: false,
  "Standing on the shoulders of giants"
)

#abstract()

#if lang == "de" [
  #abstract(lang: "de")
]

#outline()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)


#include "chapter/01-Einleitung.typ"

#bibliography("./thesis.bib")