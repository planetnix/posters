#set page(width: 18in, height: 24in, margin: 0in,
  background: image("./images/poster-bg.png", width: 18in, height: 24in)

)
#let poster_margin = .5in
#let header_height = 4in
#let footer_height = 4in
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
      ]

      #rect(width: 100%, height: 24in - (3*poster_margin + header_height + footer_height), stroke: none)[
        #align(center + horizon)[
          #room-heading(name, font-size: size)
        ]
      ]


      #rect(width: 100%, height: footer_height, stroke: none)[
        #align(top)[
          #image("./images/logo.svg", height: 3in)
        ]
      ]
    ]
  ]
]

#poster(name: "Room 1", size: 4in)
#poster(name: "Room 2", size: 4in)
#poster(name: "Registration", size: 2.5in)
#poster(name: "Check-In", size: 2.5in)