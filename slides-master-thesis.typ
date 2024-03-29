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
       image("figures/device-centric.png", width: 60%),
      )
    ]
    , [
      #figure(
        image("figures/aggregate-centric.png", width: 60%),
      )
    ],
    [
      Managing single devices in a distributed system can be challenging due to *scalability* and *heterogeneity*.
    ], [
        Coordinating a macroscopic behaviour can lead to advantages as *adaptability to dynamic changes* and *robustness*.
      ]
  )
]

#slide(title: "From device-centric to aggregate-centric approach")[
  Computational devices can find usages in various scenarios, like *smart cities*, *crowd management*, and so on,
  leading to more complex systems.
  #devices
]
//  Aggregate Computing is a paradigm that allows to program the behaviour of a distributed system by defining the interaction between devices, rather than the behaviour of each device.

#slide(title: "Aggregate Computing")[
  #table(inset: 1.2em, stroke: none, columns: (2fr, 1.1fr), align: (left, left),
     [
        - *Aggregate Computing* is a paradigm for the compositional development of self-adaptive IoT services.
        
        - It allows to program the behaviour of a distributed system by defining the interaction *between devices*, rather than the behaviour _of each device_.


    ], [
      #figure(
        image("figures/aggregate.png", width: 120%),
      )
    ]
  )
]


#let messages = box[
  #table(inset: 1.5em, stroke: none, columns: (1fr, 1fr), align: (center, center),
    [
      #figure(
       image("figures/isotropic.svg", width: 60%),
      )
    ]
    , [
      #figure(
        image("figures/anisotropic.svg", width: 60%),
      )
    ],
    [Isotropic communication], [Anisotropic communication]
  )
]


#slide(title: "XC")[
  *XC* is an experimental programming language design to develop homogeneous distributed based on the *Aggregate Computing* paradigm.
  #messages
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
      *share*: _repeat_ and _neighboring_ operators composition modelling the device space-time evolution.
    ]
  )
]

#let exch = box[
  #table(inset: 0.4em, stroke: none, columns: (1fr), align: (left),
  [
    #figure(
      image("figures/exchange.svg", width: 25%),
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
      - *Alchemist* is a meta-simulator for distributed systems.
      - Simulating the behaviour of a distributed system is crucial to verify the correctness of the system and to understand its behaviour in different scenarios.
      - An _incarnation_ serves as interpreter for the Alchemist Simulator.
    ]
  )
]

#slide(title: "Alchemist Incarnation Collektive")[
    #incarnation
]

#let benchmarks = box[
  #figure(
    table(inset: 0.3em, stroke: none, columns: (2fr, 2fr, 2fr, 2fr, 0.5fr), align: (center, center),
      [
        #figure(
        image("figures/neighborCounter.svg", width: 200%),
        )
      ],[
        #figure(
          image("figures/branching.svg", width: 200%),
        )
      ],[
        #figure(
          image("figures/gradient_g.svg", width: 200%),
        )
      ],[
        #figure(
          image("figures/channel.svg", width: 200%),
        )
      ], [
        #figure(
          image("figures/legend.png", width: 200%),
        )
      ]
    ),
    caption: [In complex programs, *Collektive* results 6.90 times faster than _Protelis_ and 3.70 times faster than _ScaFi_.]
  )
]

#new-section-slide("Validation")

#slide(title: "Benchmarks")[
  #benchmarks
  Note that performance results may have been influenced by the incarnation of the language and should be further investigated.
]


#new-section-slide("Live demo")

#new-section-slide("Conclusions")

#slide(title: "Recap")[
  - Re-engineerization of *Collektive* based on *XC*.

  - Integration with a _simulation platform_.

  - Evaluation of the viability of the approach via _benchmarking_.
]

#slide(title: "Future Works")[
To be developed in the next year, as the project won a public *GARR* grant:
  - Implementation of a *standard library*;

  - Creation of _demonstrations_ with *heterogeneous devices* (Android + iOS + native + wearables).
]

#title-slide(
  title: [A Kotlin Multiplatform implementation of\ Aggregate Computing based on XC],
)