#import "/template.typ": *

#show: article

#set heading(numbering: none)

#maketitle(
  title: "PEU 455 Assignment 6",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  // date: datetime.today().display("[day padding:none]. [month repr:long] [year]"),
)

#tableofcontents()

= 11.7.10

$
  integral_"Semicircle" f(z) d z = 1/2 integral.cont_"Circle" f(z) d z
$

For $f(z) = z^(-2)$ 

$
  1/2 integral.cont_"Circle" z^(-2) d z = 0
$

$
  z = r e^(i theta)\, quad d z = r i e^(i theta) d theta
$

$
  integral_"Semicircle" z^(-2) d z
  = 1/(r i) integral_0^pi e^(-i theta) d theta
  = 1/r [e^(-i theta)]_0^pi
  = 1/r (e^(-i pi) - 1)
  != 0
$

$
  therefore integral_"Semicircle" z^(-2) d z != 1/2 integral.cont_"Circle" z^(-2) d z
$


= 11.7.11

// Let $f(z)$ be analytic along the real axis except for a third-order pole at $z = x_0$. The Laurent expansion about $z = x_0$ has the form
$
f(z) = (a_(-3))/(z - x_0)^3 + (a_(-1))/(z - x_0) + g(z),
$
// with $g(z)$ analytic at $z = x_0$. Show that the Cauchy principal value technique is applicable, in the sense that
#set enum(numbering: "a)")

+ 
$
  integral_(-infinity)^(x_0 - delta) f(z) d z = integral_(-infinity)^(x_0 - delta) (a_(-1))/(z - x_0) d z \

  = a_1 [ln(z - x_0)]_(-infinity)^(x_0 - delta) \
  = a_1 
  
$

// 1. 
// $$
// \lim_{\delta \to 0} \Biggl\{\int_{-\infty}^{x_0-\delta} f(x)\,dx + \int_{x_0+\delta}^{\infty} f(x)\,dx \Biggr\} \text{ is finite.}
// $$

// 2. 
// $$
// \int_{C_{x_0}} f(z)\,dz = \pm i\pi a_{-1},
// $$

// where $C_{x_0}$ denotes a small semicircle about $z = x_0$.



= 11.7.12


= 11.8.2


= 11.8.3


= 11.8.4


= 11.8.16


= 11.8.22


#bibliography("/references.bib")
#cite(<El-Deeb_PEU-455_Assignments>, form: none)
