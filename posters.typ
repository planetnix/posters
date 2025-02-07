#set page(width: 18in, height: 24in, margin: 0in)
#let poster_margin = .5in
#let header_height = 2in
#let footer_height = 2in
#let content_width = context(page.width - 2*poster_margin)
#let content_height = context(page.height - 2*poster_margin)


#let room-heading(name, font-size: 3in) = align(center)[
  #text(fill: white, size: font-size, font: "IBM Plex Sans")[
    #name
  ]
]

#rect(width: 18in, height: 24in, fill: blue)[
  #align(center + horizon)[
    #rect(width: 18in - 2*poster_margin, height: 24in - 2*poster_margin, stroke: none)[
     
      #rect(width: 100%, height: header_height, stroke: none)[
        #room-heading("Room 1", font-size: 1in)
      ]

      #rect(width: 100%, height: 24in - (3*poster_margin + header_height + footer_height), stroke: none)[
        #align(center + horizon)[
          #room-heading("Room 1", font-size: 4in)
        ]
      ]


      #rect(width: 100%, height: footer_height, stroke: none)[
          #room-heading("Room 1", font-size: 1in)
      ]
    ]
  ]
]