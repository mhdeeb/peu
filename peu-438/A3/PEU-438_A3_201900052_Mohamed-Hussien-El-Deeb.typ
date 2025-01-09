#import "/templates/latex.typ": *

#show: article.with(heading-numbering: none)

#maketitle(
  title: "PEU 438 Assignment 3",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  date: false,
)

#tableofcontents()

= 8.21

#set enum(numbering: "(a)")

+ The radiation is mostly directed in the direction of the electron's motion (beaming). Hence the radiation, polarized and unpolarized, is mostly from electrons heading in the direction of the observer.

  Acceleration is parallel to the emitted electric vector E.

+ The acceleration an is normal to the magnetic field from $bold(F) = q(v times bold(B))$. Hence the bright regions indicate static B fields that are directed normal to the polarizer direction and are coherent over large distances.

+ Polarizing filters do not distinguish between *_E_* vectors in opposing directions. Hence, with optical polarizing filters, one can not distinguish regions with opposing static *_B_* fields.

+ The extent of the bright regions is of order $1' = 2.91 times 10^(-4) "rad"$.
  
  At a distance of 6000 LY, this corresponds to
  $ 
    d d = 2.91 times 10^(-4) times 6000 "LY" = 1.75 "LY" \
    d_x = x times d d = 4 times 1.75 "LY" = 7 "LY" \
    d_y = y times d d = 6 times 1.75 "LY" = 10.5 "LY" \
    "GeoAvg"(d) = sqrt(d_x d_y) = sqrt(7 times 10.5) "LY" = 8.23 "LY" \
    "ArithAvg"(d) = (d_x + d_y) / 2 = (7 + 10.5) / 2 "LY" = 8.75 "LY" \
  $
    The diameter of the bright regions is of order 8.5 LY.


= 8.23

#set enum(numbering: "(i)")

+ 

+ 

+ 

+ 

+ 

+ 


= 8.31



= 8.32



= 8.33



= 8.41



= 8.42



= 8.43



= 8.44



= 8.45



= 8.46



= 8.51



= 8.52



= 8.53



= 8.54



#bibliography("/references.bib")
#cite(<El-Deeb_PEU-438_Assignments>, form: none)
