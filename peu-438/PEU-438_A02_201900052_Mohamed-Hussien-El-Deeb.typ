#import "/template.typ": *

#show: article.with(
  heading-numbering: none,
)

#maketitle(
  title: "PEU 438 Assignment 2",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  date: false,
)

#tableofcontents()

= Problem 1

= Problem 2

= Problem 3

= Problem 4

= Problem 5

#bibliography("/references.bib")
#cite(<El-Deeb_PEU-438_Assignments>, form: none)
