#import "@preview/polylux:0.3.1": *
#import "@preview/fontawesome:0.1.0": *

#import themes.metropolis: *

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  // footer: [angela.cortecchia\@unibo.it]
)

#set text(font: "Inter", weight: "light", size: 20pt)
#show math.equation: set text(font: "Fira Math")
#set strong(delta: 190)
#set par(justify: true)

#set raw(tab-size: 4)
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 1em,
  radius: 0.7em,
  width: 100%,
)

#let authors = box[
  #table(inset: 0.5em, stroke: none, columns: (1fr, auto),  align: (left, right),
    [_Supervisor:_ Prof. *Danilo Pianini*], [_Candidate:_ *Angela Cortecchia*],
    [_Co-supervisor:_ Dr. *Nicolas Farabegoli*], [angela.cortecchia\@unibo.it]
  )
]

#title-slide(
  title: [A Kotlin Multiplatform implementation of\ Aggregate Computing based on XC],
  author: authors,
)

#new-section-slide("Context")

#let devices = box[
  #table(inset: 1em, stroke: none, columns: (1fr, 1fr), align: (left, left),
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

  //With *Aggregate Computing* the fundamental unit of computation shifts from an individual device to a _collaborative ensemble of devices_: composing collective behaviours to *achieve effective and resilient complex behaviours in dynamic networks*.
]

// #slide(title: "Aggregate Computing")[
// ]

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
]

#let collektive = box[
  #table(inset: 1.5em, stroke: none, columns: (0.4fr, 1fr), align: (left, left),
    [
      #figure(
       image("figures/collektive-logo.svg", width: 70%),
      )
    ]
    , [
      *Collektive* is a minimal DSL for aggregate programming in _Kotlin Multiplatform_, to simplify the development of distributed systems, providing high-level abstractions for collective coordination and communication.
    ]
  )
]


#slide(title: "What is Collektive?")[
  #collektive
]

#slide(title: "Goals")[
  - Re-thinking the architecture of *Collektive* making it *XC*-based.
  
  - Verify that performance are at least comparable with the state of the art _ScaFi_ and _Protelis_.
]

#new-section-slide("Contributions")

// #slide(title: "[DSL] - Exchange")[
//   // The *exchange* construct is the core of the language and used also to define other constructs.

//   // It allows to exchange messages between devices, with the crucial aspect that can _send a different value to each neighbour_, allowing *custom interaction* between them.
// ]

#let repEx = box[
  #table(inset: 1em, stroke: none, columns: (0.9fr, 1.1fr, 1.3fr), align: (left, left, left),
    [
      #figure(
       image("figures/rep.svg", width: 45%),
      )
    ],[
      #figure(
        image("figures/nbr.svg", width: 69%),
      )
    ],[
      #figure(
        image("figures/share.svg", width: 55%),
      )
    ],[
      *repeat*: allows to model the state evolution of the device over time.
    ],[
      *neighboring*: allows to access the values of the neighbours and send them information.
    ], [
      *share*: is the composition of the _repeat_ and _neighboring_ operators, modelling the space-time evolution of the device.
    ]
  )
]

#let exch = box[
  #table(inset: 1em, stroke: none, columns: (1fr), align: (left),
  [
    #figure(
      image("figures/exchange.svg", width: 28%),
    )
  ],[
    *exchange*: is the foundation of *XC*, has the crucial aspect that can _send different values to each neighbour_, allowing custom interaction between them. It models the space-time evolution of the device.
  ]
  )
]

#slide(title: "Operators rivisited and implemented based on XC")[
  #exch
]
#slide(title: "Operators rivisited and implemented based on XC")[
  #repEx
]


#let incarnation = box[
  #table(inset: 0.1em, stroke: none, columns: (1fr, 1fr), align: (left, left),
    [
      #figure(
       image("figures/gradient-2.png", width: 75%),
      )
    ]
    , [
      Simulating the behaviour of a distributed system is crucial to verify the correctness of the system and to understand its behaviour in different scenarios.
    ]
  )
]

#slide(title: "Alchemist Incarnation Collektive")[
// todo storia sull'importanza della simulazione sia in sviluppo che in verifica
  #incarnation
  // *Alchemist* is a meta-simulator for pervasive computing and distributed systems.

  // An _incarnation_ serves as the interpreter enabling the Alchemist Simulator to comprehend and accurately execute a language.

  // The goal is to ensure that the DSL is still compatible with the simulator and that it can be used to run simulations without any issues.
]

#let benchmarks = box[
  #figure(
    table(inset: 0.1em, stroke: none, columns: (2fr, 2fr, 2fr, 2fr,   1fr), align: (center, center),
      [
        #figure(
        image("figures/neighborCounter.png", width: 190%),
        )
      ],[
        #figure(
          image("figures/branching.png", width: 190%),
        )
      ],[
        #figure(
          image("figures/gradient_g.png", width: 190%),
        )
      ],[
        #figure(
          image("figures/channel.png", width: 190%),
        )
      ], [
        #figure(
          image("figures/legend.png", width: 70%),
        )
      ]
    ),
    caption: [In complex programs, *Collektive* results 6.90 times faster than _Protelis_ and 3.70 times faster than _ScaFi_.]
  )
]

#new-section-slide("Validation")

#slide(title: "Benchmarks")[
  // altri 3 grafici
  #benchmarks
  Performances may be influenced by the incarnation of the language and should be further investigated.
]


#new-section-slide("Live demo")
//show different channel

#new-section-slide("Conclusions")

#slide(title: "Future Works")[
  - Implementation of a standard library to provide modules and functionalities;

  - Creation of demos for individual language targets;
  
  - Creation of demos with heterogeneous devices.
]