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

#title-slide(
  title: [A Kotlin Multiplatform implementation of\ Aggregate Computing based on XC],
  author: authors,
)

#new-section-slide("Context")

#let devices = box[
  #table(inset: 1em, stroke: none, columns: (1fr, 1fr), align: (center, center),
    [
      #figure(
       image("figures/device-centric.png", width: 69%),
      )
    ]
    , [
      #figure(
        image("figures/aggregate-centric.png", width: 69%),
      )
    ],
    [
      Managing single devices in a distributed system can be challenging due to *scalability*, *limited resources*, *heterogeneity* and *context awareness*.
    ], [
        Coordinating a macroscopic behaviour can lead to advantages as *distributed intelligence*, *resource pooling*, *adaptability* and *robustness*.
      ]
  )
]

#slide(title: "From device-centric to aggregate-centric approach")[
  // Computing devices increasingly present to form the Internet of Things, increasing the complexity of distributed systems.
  #devices

  // The goal is to program and operate in terms of *aggregate* of devices, coordinating a macroscopic behaviour.

  // interactions between wearable devices such as smart-phones can support different kinds of services, including crowd detection, crowd- aware navigation or dispersal advice.
]

#slide(title: "Aggregate Computing")[
  // elaborates a layered architecture that aims to simplify the design, creation and maintenance of distributed systems.
  With *Aggregate Computing* the fundamental unit of computation shifts from an individual device to a _collaborative ensemble of devices_: composing collective behaviours to *achieve effective and resilient complex behaviours in dynamic networks*.
]


#let messages = box[
  #table(inset: 1.5em, stroke: none, columns: (1fr, 1fr), align: (center, center),
    [
      #figure(
       image("figures/isotropic.svg", width: 69%),
      )
    ]
    , [
      #figure(
        image("figures/anisotropic.svg", width: 69%),
      )
    ],
    [Isotropic communication], [Anisotropic communication]
  )
]


#slide(title: "XC")[


  // Based on a communication primitive that allows to exchange messages between devices, with the crucial aspect that can send a different value to each neighbour, allowing custom interaction between them.
  
  #messages

  // An experimental programming language design to develop homogeneous distributed systems, to push the abstraction boundaries further than actual existing approaches.

  // ``` exhcange(e_i, (n) -> return e_r send e_s) ```
]

#slide(title: "What is Collektive?")[
  *Collektive* is a minimal DSL for aggregate programming, to simplify the development of distributed systems, providing high-level abstractions for collective coordination and communication.
]

#slide(title: "Goals")[
  - Extend the existing DSL *Collektive* by applying the concepts of *XC* whithin the Kotlin Multiplatform environment.

  - Provide a more flexible and powerful tool for the development of distributed systems.
  
  - Aiming to be competitive against the existing state of the art _ScaFi_ and _Protelis_.
]

#new-section-slide("Contributions")

#slide(title: "[DSL] - Exchange")[
  The *exhcange* construct is the core of the language and used also to define other constructs.

  It allows to exchange messages between devices, with the crucial aspect that can _send a different value to each neighbour_, allowing *custom interaction* between them.
]



#slide(title: "[DSL] - Constructs")[
- *neighboring*: implemented in terms of *exchange*, allows to access the values of the neighbours.

- *share*: implemented in terms of *exchange*, allows to share the same information across the neighbours.

- *repeat*: *not* implemented in terms of *exchange*, allows to model the state evolution over time.
]

#slide(title: "[DSL] - Messages")[
  The information sent between devices in a network:

  - Allows for associating a value with a specific recipient, sending different values to different recipients.

  - Or send the same value to all the neighbours.
]

#slide(title: "Alchemist Incarnation Collektive")[
  // *Alchemist* is a meta-simulator for pervasive computing and distributed systems.

  // An _incarnation_ serves as the interpreter enabling the Alchemist Simulator to comprehend and accurately execute a language.

  // The goal is to ensure that the DSL is still compatible with the simulator and that it can be used to run simulations without any issues.

  #figure(
    image("figures/gradient.png"),
  )
]


#new-section-slide("Validation")

#slide(title: "Benchmarks")[
  #figure(
    image("figures/channel.png", width: 70%),
  )
]


#new-section-slide("Live demo")
//show different channel

#new-section-slide("Conclusions")

#slide(title: "Future Works")[
  - Creation of a standard library to provide modules and functionalities;
  - Creation of hybrid demonstrations;
  - Further optimisations to the language.
]

#new-section-slide("Thank you for your attention!")