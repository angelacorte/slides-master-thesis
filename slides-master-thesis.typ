#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  // footer: []
)

#set text(font: "Inter", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 200)
#set par(justify: true)

#set raw(tab-size: 4)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 1em,
  radius: 0.7em,
  width: 100%,
)

#let authors = box[
  #table(inset: 0.5em, stroke: none, columns: (1fr, auto),
    [_Supervisor:_ Prof. *Danilo Pianini*], [_Candidate:_ *Angela Cortecchia*],
    [_Co-supervisor:_ Dr. *Nicolas Farabegoli*], []
  )
]

#let messages = box[
  #table(inset: 1.5em, stroke: none, columns: (1fr, auto), align: (center, center),
    [
      #figure(
       image("figures/isotropic.svg", width: 45%),
      )
    ]
    , [
      #figure(
        image("figures/anisotropic.svg", width: 45%),
      )
    ],
    [Isotropic communication], [Anisotropic communication]
  )
]

#title-slide(
  title: [A Kotlin Multiplatform implementation of\ Aggregate Computing based on XC],
  author: authors,
)

#new-section-slide("Context")

#slide(title: "Context")[
  // Computing devices increasingly present to form the Internet of Things, increasing the complexity of distributed systems.

  #figure(
    image("figures/device-centric.png", width: 30%),
  )
   Managing the single device in a distributed system can be challenging due to *scalability*, *limited resources*, *heterogeneity* and *context awareness*.

  #figure(
    image("figures/collective-devices.png", width: 30%),
  )  
  Transitioning from device-centric to aggregate-centric approach can lead to advantages as *distributed intelligence*, *resource pooling*, *adaptability* and *robustness*.

  The goal is to program and operate in terms of *aggregate* of devices, coordinating a macroscopic behaviour.

  // interactions between wearable devices such as smart-phones can support different kinds of services, including crowd detection, crowd- aware navigation or dispersal advice.
]

#slide(title: "Aggregate Computing")[
  // elaborates a layered architecture that aims to simplify the design, creation and maintenance of distributed systems.
  With Aggregate Computing the fundamental unit of computation shifts from an individual device to a collaborative ensemble of devices.

  The core idea of functionality composing collective behaviours to achieve effective and resilient complex behaviours in dynamic net- works.
  
  Three key traits:
  - global stance with global-to-local mapping
  - behaviour compositionality 
  - abstraction
]


#slide(title: "XC")[
  An experimental programming language design to develop homogeneous distributed systems, to push the abstraction boundaries further than actual existing approaches.

  Based on a communication primitive that allows to exchange messages between devices, with the crucial aspect that can send a different value to each neighbour, allowing custom interaction between them.
  
  ``` exhcange(e_i, (n) -> return e_r send e_s) ```
]

#slide(title: "What is Collektive?")[
  *Collektive* is a minimal DSL for aggregate programming, to simplify the development of distributed systems, providing high-level abstractions for collective coordination and communication.
]

#slide(title: "Goal")[
  > Extend the existing DSL *Collektive* by applying the concepts of *XC* whithin the Kotlin Multiplatform environment

  > Provide a more flexible and powerful tool for the development of distributed systems
  
  > Aiming to be competitive against the existing state of the art _ScaFi_ and _Protelis_.
]

#new-section-slide("Contributions")

#slide(title: "DSL")[
```kt
fun Aggregate<Int>.program(): Int = exchange(0) { field ->
  field.map { _, value -> value + 1 }
}.localValue

Collektive(deviceId, network) { program() }.cycle()
```
]

#slide(title: "XC in Collektive")[
  #messages
]

#slide(title: "Alchemist Incarnation Collektive")[
  *Alchemist* is a meta-simulator for pervasive computing and distributed systems.

  An _incarnation_ serves as the interpreter enabling the Alchemist Simulator to comprehend and accurately execute a language.

  The goal is to ensure that the DSL is still compatible with the simulator and that it can be used to run simulations without any issues.
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
