#import "/template.typ": *

#show: article

#set heading(numbering: none)

#maketitle(
  title: "PEU 455 Assignment 4",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  // date: datetime.today().display("[day padding:none]. [month repr:long] [year]"),
)

#tableofcontents()

= 11.4.7

$
  integral.cont_C (sin^2z - z^2)/((z-a)^3) d z
$

This function has a singularity at z = a within the contour.

We will assume that f(z) is a analytical within the contour.

$
  f^((n))(z_0) = (n!)/(2pi i) integral.cont_C (f(z)d z)/((z-z_0)^(n+1)) \

  f^((2))(a) = (1)/(pi i) integral.cont_C (sin^2z-z^2 d z)/((z-a)^(3)) \ 

  integral.cont_C (sin^2z-z^2 d z)/((z-a)^(3)) = pi i [sin^2z-z^2]''_(z=a) \

  = pi i [2 sin(z) cos(z) - 2z]'_(z=a) \

  = 2 pi i [cos^2(a) - sin^2(a) - 1]

  = - 4 pi i sin^2(a)
$


= 11.4.8

$
  I = integral.cont_C (d z)/(z(2z+1))
$

We have two singularities ($z = 0, -(1)/(2)$) within the contour

$
  (1)/(z(2z+1)) = A/z + B/(2z+1)
$

$
  2A + B = 0 \
  A = 1
$

$
  (1)/(z(2z+1)) = 1/z - 1/(z+1/2)
$

$
  I = integral.cont_C (d z)/(z) - integral.cont_C (d z)/((z+1/2))
$

$
  integral.cont_C (f(z) d z)/(z - z_0) = cases(2 pi i f(z_0)\, quad z_0 "within the contour", 0\, quad z_0 "exterior to the contour")
$

$
  I = 2pi i - 2pi i = 0
$


= 11.4.9

$
  I = integral.cont_C (f(z))/(z(2z+1)^2) d z  
$

$
  1/(z(2z+1)^2) = A/z + (B z + C)/((2z+1)^2) \
  = (4 A z^2 + 4 A z + A + B z ^ 2 + C z)/(z(2z+1)^2)
$

$
  (4A + B)z^2 + (4 A + C)z + A = 1
$

$
  A = 1, B = C = -4
$

$
  I = integral.cont_C f(z) (1/z - (z + 1)/((z+1/2)^2)) d z \
    = integral.cont_C  f(z)/z d z -  integral.cont_C (f(z)(z + 1))/((z+1/2)^2) d z \
    = 2 pi i (f(0) - [f(z)(z + 1)]'_(z=-1/2)) \
    = 2 pi i (f(0) - (f'(-1/2))/2 - f(-1/2))
$


= 11.5.3

$f(z)/z$ is analytical for all points in unit circle as f(z) and z are analytical.

for z = 0 $lim_(z->0) f(z)/z = f'(0)$ using L'Hôpital's and f'(0) is defined because f(z) is analytical within the contour.

$
  f^((n))(z_0) = (n!)/(2pi i) integral.cont_C (f(z)d z)/((z-z_0)^(n+1))
$

$
  (f(z_0)/z_0)^(n) = (1)/(2pi i) integral.cont_C ((f(z)/z)^n d z)/(z-z_0)
$


Where n > 0 as we want the function to be always analytic over the contour.

$
  (|f(z_0)/z_0|)^(n) = 1/(2pi) |integral.cont_C ((f(z)/z)^n d z)/(z-z_0)|
$

$
  because |integral.cont_C g(z) d z| <= integral.cont_C |g(z)| |d z|
$

$
  (|f(z_0)/z_0|)^(n) <= 1/(2pi) integral.cont_C |((f(z)/z)^n)/(z-z_0)| |d z|
$

Assuming that $z!=z_0$

$
  (|f(z_0)/z_0|)^(n) <=
  1/(2pi) integral.cont_C ((|f(z)/z|)^n)/(|z-z_0|) |d z| <=
  1/(2pi) integral.cont_C ((|f(z)/z|)^n)/(|z|-|z_0|) |d z|
$

$
  (|g(z_0)|)^(n) <=
  1/(2pi) integral.cont_C ((|g(z)|)^n)/(|z|-|z_0|) |d z|
$

$
  (|f(z_0)/z_0|)^(n) <=
  1/(2pi) integral.cont_(|z|=1) ((|f(|z|=1)|)^n)/(1-|z_0|) |d z| <=
  1/(2pi) 1/(1-|z_0|) integral.cont_(|z|=1)  |d z|
$
For a contour of unit circle
$
  z = e^(i theta), quad d z = i e^(i theta) d theta, quad |d z| = d theta
$

$
  (|f(z_0)/z_0|)^(n) <= 1/(2pi) 1/(1-|z_0|) integral.cont_(|z|=1)  d theta \
  therefore (|f(z_0)/z_0|)^(n) <= 1/(1-|z_0|)
$

$
  |f(z_0)| <= (|z_0|)/(1-|z_0|)^(1/n)
$

Since this is true for all n it must be true for the smallest value of $(1-|z_0|)^(-1/n)$ which is 1 for positive values of n

$
  therefore |f(z_0)| <= |z_0|
$


= 11.5.4

$ f(z) = sum_(n=-N)^(infinity) a_n z^n $

Consider the function:
$ g(z) = z^N f(z) $

$ 
  g(z) = z^N sum_(n=-N)^infinity a_n z^n \ 
  = sum_(n=-N)^(infinity) a_n z^(n+N) \
  = sum_(n=0)^(infinity) a_(n-N) z^n 
$

Where in the last step $n -> n-N$ 

Note that $g(z)$ is analytic over all the space, so it is valid to apply it on the real axis ($z=x$)

$
  because g(x)^* = x^N f^*(x) = x^N f(x) = g(x) \
  therefore sum_(n=0)^(infinity) a^*_(n-N) x^n  = sum_(n=0)^(infinity) a_(n-N) x^n 
  therefore a^*_(n-N) = a_(n-N)
$

Therefore, all the coefficients  $a_n$ in the Laurent expansion of $f(z)$ are real.


= 11.5.6

$
  (e^z)/(z^2) = 1/(z^2) sum_(n=0)^infinity (z^n)/(n!) = sum_(n=0)^infinity (z^(n-2))/(n!)\
  = 1/(z^2) + 1/(z) + sum_(n=2)^infinity (z^(n-2))/(n!)  \
  = 1/(z^2) + 1/(z) + sum_(n=0)^infinity 1/((n+2)!)z^n 
$


= 11.5.8

$
  (z-1) e^(1/z) = z e^(1/z) - e^(1/z) \
  
  = sum_(n=0)^infinity (z^(1-n))/(n!) - sum_(n=0)^infinity (z^(-n))/(n!) \
  = z + sum_(n=1)^infinity (z^(1-n))/(n!) - sum_(n=0)^infinity (z^(-n))/(n!) \
  = z + sum_(n=0)^infinity (z^(-n))/((n + 1)!) - sum_(n=0)^infinity (z^(-n))/(n!) \
  = z + sum_(n=0)^infinity (1/((n + 1)!) - 1/(n!)) z^(-n) \ 
  = z - sum_(n=0)^infinity n/((n + 1)!) z^(-n) \ 
$



#bibliography("/references.bib")
#cite(<El-Deeb_PEU-455_Assignments>, form: none)
