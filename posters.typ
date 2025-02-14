#set page(width: 18in, height: 24in, margin: 0in,
  background: image("./images/poster-bg.png", width: 18in, height: 24in)

)
#let poster_margin = .5in
#let header_height = 4.5in
#let footer_height = 4.5in
#let content_width = context(page.width - 2*poster_margin)
#let content_height = context(page.height - 2*poster_margin)


#let room-heading(name, font-size: 3in) = align(center)[
  #text(fill: white, size: font-size, font: "IBM Plex Sans")[
    #name
  ]
]

#let poster(name: "tktk", size: 4in) = rect(width: 18in, height: 24in, stroke: none)[
  #align(center + horizon)[
    #rect(width: 18in - 2*poster_margin, height: 24in - 2*poster_margin, stroke: none)[
     
      #rect(width: 100%, height: header_height, stroke: none)[
        #image("./images/logo.svg", height: 2.25in)
        #room-heading("planetnix.com/schedule", font-size: .5in)
      ]

      #rect(width: 100%, height: 24in - (3*poster_margin + header_height + footer_height), stroke: none)[
        #align(center + horizon)[
          #room-heading(name, font-size: size)
        ]
      ]


      #rect(width: 100%, height: footer_height, stroke: none)[
        #align(top)[
          #room-heading("Presented By:", font-size: .5in)
          #image("./images/flox.svg", height: 2.25in)
        ]
      ]
    ]
  ]
]

#poster(name: "Sessions", size: 4in)
#poster(name: "Workshops", size: 3in)
#poster(name: "Check-In", size: 3in)
#poster(name: "Planet Nix\nIs Located Downstairs", size: 2in)
#poster(name: "Planet Nix\nDownstairs in the \nConference Center", size: 1.75in)