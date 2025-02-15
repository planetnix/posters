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
        #image("./images/logo.svg", height: 4in)
      ]

      #rect(width: 100%, height: 24in - (3*poster_margin + header_height + footer_height), stroke: none)[
        #align(center + horizon)[
          #room-heading(name, font-size: size)
        ]
      ]


      #rect(width: 100%, height: footer_height, stroke: none)[
        #grid(
          columns: 2,
          gutter: 5in,
          align(top)[
            #room-heading("Presented By:", font-size: .5in)
            #image("./images/flox.svg", height: 2in)
          ],
          align(top)[
            #room-heading("Schedule:", font-size: .5in)
            #image("./images/sched-code.svg", height: 2.25in)
          ],
        )
      ]
    ]
  ]
]

#poster(name: "Sessions", size: 3in)
#poster(name: "Workshops", size: 2.5in)
#poster(name: "Check-In", size: 3in)
#poster(name: "Located Downstairs", size: 2in)
#poster(name: "Downstairs in the Conference Center", size: 1.75in)