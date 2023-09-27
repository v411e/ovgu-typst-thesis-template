#import "@preview/colorful-boxes:1.1.0": *

#let note(term, title: "Note", ..args) = slantedColorbox(
  title: title
)[
  #term
]

#let body-font = "New Computer Modern"
#let sans-font = "New Computer Modern Sans"
