#import "/template.typ": *

#show: article

#set heading(numbering: none)

#maketitle(
  title: "PEU 455 Assignment 5",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  // date: datetime.today().display("[day padding:none]. [month repr:long] [year]"),
)

#tableofcontents()

= 11.7.1

== c

$
  (z^2)/(z^2+a^2)^2
$

The singularity is of a second-order pole at $z = plus.minus a i$

$
  a_(-1,plus.minus a i) = lim_(z-> plus.minus a i) (((z minus.plus a i)^2 z^2)/(z^2+a^2)^2)' \
  = lim_(z->plus.minus a i) (((z minus.plus a i)^2 z^2)/(((z+a i) (z-a i))^2))' \
  = lim_(z-> plus.minus a i) ((z^2)/(z plus.minus a i)^2)' \
  = 2 lim_(z->plus.minus a i) z/(z plus.minus a i) (-z/(z plus.minus a i)^2 + 1/(z plus.minus a i)) \
  = 2 lim_(z->plus.minus a i) (z/(z plus.minus a i)^2 - z^2/(z plus.minus a i)^3) \
  = 2 lim_(z->plus.minus a i) (z/(z plus.minus a i)^2 - z^2/(z plus.minus a i)^3) \
  = 2 (plus.minus 1/(4 a i) minus.plus 1/(8 a i) ) \
  = plus.minus 1/(4 a i)
$

== d

$
  sin(1/z)/(z^2+a^2)
$

The singularity is of a first-order pole at $z = plus.minus a i$ and essential singularity at $z = 0$

$
  a_(-1,plus.minus a i) = lim_(z-> plus.minus a i) ((z minus.plus a i) sin(1/z))/(z^2+a^2) \
   = lim_(z-> plus.minus a i) sin(1/z)/(z plus.minus a i) = sin(1/(a i))/(2 a i) = - sin(i/a)/(2 a i) =  - sinh(1/a)/(2 a)
$

== e

$
  (z e^(i z))/(z^2+a^2)
$

The singularity is of a first-order pole at $z = plus.minus a i$

$
  a_(-1,plus.minus a i) = lim_(z-> plus.minus a i) (z (z minus.plus a i) e^(i z))/(z^2+a^2) \
  = lim_(z-> plus.minus a i) (z e^(i z))/(z plus.minus a i) \
  = (e^(minus.plus a))/2
$

== g

$
  (e^(i z))/(z^2-a^2)
$

The singularity is of a first-order pole at $z = plus.minus a$

$
  lim_(z-> plus.minus a) (e^(i z))/(z plus.minus a)
  = plus.minus (e^(plus.minus i a))/(2 a)
$


= 11.7.2

z = 0, z = -1

$
  f(z) = pi cot(pi z)/(z(z+1))
$

Which is of second-order poles in both singularity points

// cos(z)/sin(z) = (sum_(n=0)^infinity (-1)^n z^(2n)/((2n)!)) / (sum_(n=0)^infinity (-1)^n (z^(2n+1))/((2n+1)!)) \
// = 1/z sum_(n=0)^infinity (2n+1) \

Expanding around $z = 0$

$
  cot(pi z) = 1/(pi z) - (pi z)/3 - (pi z)^3/45 + ... \
  1/((z+1)) = 1 − z + z^2 − z^3
$


$
  f(z) = pi 1/z 1/((z+1)) cot(pi z) \
       = pi (1/z − 1 + z − z^2) (1/(pi z) - (pi z)/3 - (pi z)^3/45 + ...) \
       = pi (...+ (-1/pi ) 1/z + ...) \ 
       = ...-1/z + ...
$

$
  therefore a_(-1,0) = -1
$

Expanding around $z = -1$

$
  cot(pi (z+1)) = cot(pi z) \
  = 1/(pi (z+1)) - (pi (z+1))/3 - (pi (z+1))^3/45 + ... \ \
  1/z = -1 − (z+1) - (z+1)^2 − (z+1)^3 + ...
$

$
  f(z) = pi 1/z 1/((z+1)) cot(pi z) \
       = pi (-1 − (z+1) - (z+1)^2 − (z+1)^3)1/((z+1)) (1/(pi (z+1)) - (pi (z+1))/3 - (pi (z+1))^3/45 + ...) \
       = pi (-1/((z+1)) − 1 - (z+1) − (z+1)^2) (1/(pi (z+1)) - (pi (z+1))/3 - (pi (z+1))^3/45 + ...) \
       = pi (...-1/(pi (z+1))+...) \
       = ...-1/z + ...
$

$
  therefore a_(-1,-1) = -1
$


= 11.7.6

$
  g(z) = sum_(m = 0)^n a_m z^m 
  = sum_(m = 0)^(n-1) a_m z^m + a_n z^n  \
  = sum_(m = 0)^(n-1) a_m z^m + f(z) 
$

$
  because |a_n R^n| > |sum_(m = 0)^(n-1) a_m z^m| \
  therefore "Number of zeroes of" g(z) = "Number of zeroes of" f(z) = n
$

which proves the fundamental theorem of algebra, that every polynomial $sum_(m = 0)^n a_m z^m $ has n zeros within the region bounded by some sufficiently large $|R|$.


= 11.7.7

$
  F(z) = z^6 − 4z^3 + 10
$

Within a contour of $|z|=1$,

$
  |10| > |z^6 − 4z^3| \
  therefore "Number of zeroes of" F(z) = "Number of zeroes of" 10 = 0
$

Within a contour of $|z|=2$,

$
  |z^6| > |− 4z^3 + 10| \
  therefore "Number of zeroes of" F(z) = "Number of zeroes of" z^6 = 6
$

Therefore all the zeros of $F(z)$ lie between the circles $|z| = 1$ and $|z| = 2$.


= 11.7.9

$
  f (z) = (z^2 − 3z + 2)/z 
$

Evaluating poles and zeroes:

$
  f (z) = ((z - 1)(z - 2))/z  \
  P_f = 1, quad N_f = 2 \
$

 Evaluating $integral.cont_C (f'(z))/(f(z)) d z$:
$
  f'(z) = ((2z − 3)z - (z^2 − 3z + 2))/z^2 = (z^2-2)/z^2 \
  (f'(z))/(f(z)) = (z^2-2)/(z(z^2 − 3z + 2)) = (z^2-2)/(z(z - 1)(z - 2)) 
$
Note that $(f'(z))/(f(z))$ has three singularities at $z =0,1,2$.
$
  integral.cont_C (f'(z))/(f(z)) d z = integral.cont_C_1 (z^2-2)/(z(z - 1)(z - 2))  + integral.cont_C_2 (z^2-2)/(z(z - 1)(z - 2))  + integral.cont_C_3 (z^2-2)/(z(z - 1)(z - 2)) 
$
Where $C_1, C_2, C_3$ are the contours surrounding each singularity

$
  therefore integral.cont_C (f'(z))/(f(z)) d z = 2 pi i [(z^2-2)/((z - 1)(z - 2)) ]_(z=0)
  + 2 pi i [(z^2-2)/(z(z - 2))]_(z=1) + 2 pi i [(z^2-2)/(z(z - 1))]_(z=2) \
  = -2 pi i + 2 pi i + 2 pi i = 2 pi i (-1 + 2)
$
Corresponding to $P_f = -1$ and $N_f = 2$, which is consistent with the formula 
$
  integral.cont_C (f'(z))/(f(z)) d z = 2 pi i (N_f - P_f)
$



= P1

$
  integral.cont_(|z| = 1) e^(z+1/z) d z /
  
  = integral.cont_(|z| = 1) sum (z^n)/(n!) sum (z^(-n))/(n!) d z \

  = integral.cont_(|z| = 1) sum_n sum_k  (z^(n-k))/(n!k!) d z \

  = sum_n sum_k  1/(n!k!) integral.cont_(|z| = 1) z^(n-k) d z \
  = 2 pi i sum_n sum_k  1/(n!k!) delta_(n-k,-1) \
  = 2 pi i sum_n 1/(n!(n+1)!) \
$


= P2

// $
//   f(z) =  sum_(i=0)^n (k_i (z))/(z_i-z)^(mu_i) + sum_(i=0)^m c_i z^i
//   // sum_(i=0)^n k_i/((z-a_i)^(mu_i)) +....+ c z^m
// $

// where n is the finite number of poles in $C$, and $z_i, mu_i$ are the position of singularity and its multiplicity respectively, and $k_i (z)$ is entire function that has no zeroes and 
$
  "Let" Q(z) = Pi_(i=0)^n (z-a_i)^(mu_i) \
  g(z) = Q(z) f(z)
$

Since each pole of $f$ at $a_i$ is canceled by a corresponding factor in $Q(z)$, the function $g(z)$ is analytic everywhere in C. In other words, $g(z)$ is an entire function.

Since $f(z)$ has a pole of order m at infinity,

$
  f(z) ~ c z^m "as" |z| -> infinity 
$
and since the function $Q(z)$ is a polynomial of order $N = sum_(i=0)^n mu_i $, then
$
  g(z) = Q(z) f(z) ~ c z^(m+N) "as" |z| -> infinity 
$
Since it grows no faster than a polynomial at infinity due to its finite positive power, then $g(z)$ must be a polynomial.
Therefore the function $f(z)$ could be expressed as the ratio of two polynomials, hence it is a rational function.

$
  f(z) = g(z)/Q(z)
$


#bibliography("/references.bib")
#cite(<El-Deeb_PEU-455_Assignments>, form: none)
