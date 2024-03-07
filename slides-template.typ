#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  footer: [Optional Footnote]
)

#set text(font: "Inter", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 150)
#set par(justify: true)

#set raw(tab-size: 4)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 1em,
  radius: 0.7em,
  width: 100%,
)

#title-slide(
  title: "A Kotlin Multiplatform implementation of Aggregate Computing based on XC",
  // subtitle: "Thesis ",
  author: "Angela Cortecchia",
  // date: datetime.today().display("[day] [month repr:long] [year]"),
)

#new-section-slide("Context")

#slide(title: "Context")[
  Computing devices increasingly present to form the Internet of Things, increasing the complexity of distributed systems.

  // === Goal
  From device-centric to aggregate-centric approach can lead to advantages:
  - _distributed intelligence_
  - _resource pooling_
  - _adaptability_
  - _robustness_
]

#slide(title: "Aggregate Computing")[
  = Aggregate Computing
  The goal is to program and operate in terms of _aggregate_ of devices, coordinating a macroscopic behaviour.

  Aggregate Computing elaborates a layered architecture that aims to simplify the design, creation and maintenance of distributed systems.
  
]



#slide(title: "XC")[
  *Bold* and _italic_ text.

  #alert[
    This is an alert.
  ]
]

#slide(title: "What is Collektive")[
  *Bold* and _italic_ text.

  #alert[
    This is an alert.
  ]
]

#new-section-slide("Contributions")

#slide(title: "DSL")[
  = This is a title

  #lorem(24)

  == This is a subtitle

  #lorem(34)
]

#slide(title: "XC in Collektive")[
  == Exchange

  == Messages
]

#slide(title: "Alchemist Incarnation Collektive")[
  = This is a title

  == This is a subtitle

  #lorem(34)
]


#new-section-slide("Validation")

#slide(title: "Collektive Examples")[
  = This is a title

  == This is a subtitle

  #lorem(34)
]

#slide(title: "Benchmarks")[
  = This is a title

  == This is a subtitle

  #lorem(34)
]

#new-section-slide("Conclusions")

#slide(title: "Future Works")[
  = This is a title

  == This is a subtitle

  #lorem(34)
]
