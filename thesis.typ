#import "metadata.typ": *
#import "template/project.typ": *
#import "template/titlepage.typ": *
#import "template/disclaimer.typ": *
#import "template/acknowledgement.typ": *
#import "template/abstract.typ": *
#import "template/components.typ": *

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

#disclaimer(
  title: title,
  documentType: documentType,
  author: author,
  submissionDate: date,
  city: city,
)

#acknowledgement()

#abstract()

#if (lang == "de") [#abstract(lang: "de")]

#show: project.with(
  title: title,
  documentType: documentType,
  supervisor: supervisor,
  secondSupervisor: secondSupervisor,
  advisors: advisors,
  author: author,
  date: date,
  lang: lang
)

#include "chapter/01-Einleitung.typ"
