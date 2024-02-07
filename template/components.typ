#import "@preview/colorful-boxes:1.1.0": *

#let body-font = "New Computer Modern"
#let sans-font = "New Computer Modern Sans"

#let note = slantedColorbox.with(title: "Note")

// This numbering function cuts of the first levels of a heading
// This is useful if the structure gets too deep
// Example with max-level = 3: [1.2.3.4.5.] → [4.5.]
#let number-until-with(max-level, schema) = (..numbers) => {
  // self.pos() returns the captured positional arguments as an array.
  if numbers.pos().len() <= max-level {
    numbering(schema, ..numbers)
  } else if numbers.pos().len() > max-level {
    let reduced_numbers = numbers.pos().slice(max-level)
    numbering(schema + ".", ..reduced_numbers)
  }
}

// Small headings style
#let small-heading() = it => [
  #set text(
    weight: "regular",
    style: "italic"
  )
  #it
]