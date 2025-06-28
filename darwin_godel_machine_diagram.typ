#import "@preview/cetz:0.4.0"
#set page(width: auto, height: auto, margin: 8pt)



Trying to recreate this \ https://sakana.ai/assets/dgm/dgm-main.png

#cetz.canvas({
  import cetz.draw: *

// Retângulo exterior
line(
   (2.75 - 2.5, 5),
   (-2.5, 5), // canto superior esquerdo
   (-2.5, -4), // inf esq
   (6.5, -4), // inf dir
   (6.5, 5), // sup dir
   (6.5 - 2.75, 5), 
  stroke: (
    paint: rgb(0, 0, 0, 175), 
    thickness: 1pt, 
    cap: "round"
  )
)
content(((-2.5 + 6.5)/2, 5), text(16pt)[*Gödel*])

// Retângulo interior
rect(
    (-2, -1.5),
    (2, 2),
    stroke: (
      dash: "dashed",
      paint: rgb(100, 100, 100, 200)
    ),
    frame: "rect",
    fill: none,
    width: 10em,
    height: 10em,
    name: "enclosure",
    radius: 0pt,
  )

// Retângulo mais interior 1
rect(
  name:"rect1",
  (-1.5, 1.25),
  (1.5, 0.25),
  fill: rgb(255, 242, 204, 200),
)
content("rect1", [Code])


// Retângulo mais interior 2
rect(
  name:"rect2",
  (-1.5, -1.15),
  (1.5, 0.25),
  fill: rgb(239, 239, 239, 200),
)

content(
  "rect2", 
  align(center, [Foundation \ Model])
)

// Setas exteriores
set-style(mark: (end: ">"))
line(
  (2, 0), (3, 0), (3, 3), (0, 3), (0, 1.5),
  stroke: (
    paint: rgb(193, 15, 19, 200),
  ),
)  

content((4.5, 3), [*Task 2:* Rewrite \ your own code])


line(
  (2, -0.5), (3, -0.5), (3, -1.5), (4, -1.5),
  stroke: (
    paint: rgb(89, 89, 89, 200)
  )
)  

content((4.5, -1.5), [\u{270F}])
content((4.5, -2.5), [*Task 1:* Solve \ downstream task])



})
