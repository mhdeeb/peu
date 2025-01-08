#import "/templates/latex.typ": *

#show: article

#set heading(numbering: none)

#maketitle(
  title: "PEU 323 Assignment 6",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  // date: datetime.today().display("[day padding:none]. [month repr:long] [year]"),
)

#tableofcontents()
#set enum(numbering: "a)")
= 1
$
  hat(a)^dagger |n angle.r = c_n |n + 1 angle.r, quad
  hat(a) |n angle.r = d_n |n - 1 angle.r \
   hat(a)^dagger hat(a) |n angle.r = n |n angle.r\
   [hat(a), hat(a)^dagger] = 1 
   quad => quad 
   hat(a) hat(a)^dagger = hat(a)^dagger hat(a)  + 1 
   quad => quad 
   hat(a)hat(a)^dagger  |n angle.r = (n+1) |n angle.r
$

$ 
    angle.l hat(a) n|hat(a) n angle.r = angle.l hat(a)^dagger hat(a) n|n angle.r \
    |d_n|^2 angle.l n -1 |n -1 angle.r = n angle.l n|n angle.r\
    therefore |d_n|^2 = n 
    quad => quad 
    d_n = sqrt(n)
$

$
    angle.l hat(a)^dagger  n|hat(a)^dagger n angle.r = angle.l hat(a) hat(a)^dagger n|n angle.r\
    |c_n|^2 angle.l n +1 |n +1 angle.r = (n+1) angle.l n|n angle.r\
    therefore |c_n|^2 = n+1 
    quad => quad 
    c_n = sqrt(n+1)
$
$ 
  therefore
  hat(a)^dagger |n angle.r = sqrt(n+1) |n + 1 angle.r, quad
  hat(a) |n angle.r = sqrt(n) |n - 1 angle.r
$

#pagebreak()

= 2

$
  hat(a) | psi_i angle.r = lambda_i | psi_i angle.r \
  | psi_i angle.r = sum_n k_n |n angle.r \
  hat(a) sum_n k_n |n angle.r = lambda_i sum_n k_n |n angle.r \
  sum_n k_n sqrt(n) |n -1 angle.r = lambda_i sum_n k_n |n angle.r \
  therefore  k_(n+1) sqrt(n+1) = lambda_i k_n \
  k_(n+1) = lambda_i /sqrt(n+1) k_n\
  k_1 = lambda_i /sqrt(1) k_0, quad
  k_2 = lambda_i /sqrt(2) k_1 = lambda_i^2 /sqrt(2.1) k_0, quad
  k_n = lambda_i^n /sqrt(n!) k_0 \
  | psi_i angle.r = k_0 sum_n lambda_i^n /sqrt(n!) |n angle.r \
  angle.l  psi_i| psi_i angle.r = 1\
  |k_0|^2 (sum_m (lambda_i^*)^m /sqrt(m!) angle.l m|)(sum_n lambda_i^n /sqrt(n!) |n angle.r) = 1\
  |k_0|^2 sum_(m, n) ((lambda_i^*)^m lambda_i^n) /sqrt(m! n!)  angle.l m|n angle.r = 1 \
  |k_0|^2 sum_n (|lambda_i|^(2n)) /n! = 1 \
  |k_0|^2 e^(|lambda_i|^2) = 1 \
  therefore k_0 = e^(-(|lambda_i|^2)/2) e^(i phi) = e^(i phi -(|lambda_i|^2)/2)\
  | psi_i angle.r = e^(i phi -(|lambda_i|^2)/2) sum_n lambda_i^n /sqrt(n!) |n angle.r 
$

#pagebreak()

= 3

$
  hat(a)^dagger | psi_i angle.r = lambda_i | psi_i angle.r \
  | psi_i angle.r = sum_n k_n |n angle.r \
  hat(a)^dagger  sum_n k_n |n angle.r = lambda_i sum_n k_n |n angle.r \
  sum_n k_n sqrt(n+1) |n +1 angle.r = lambda_i sum_n k_n |n angle.r \
  therefore  k_(n-1) sqrt(n) = lambda_i k_n \
  k_(n) = sqrt(n)/lambda_i k_(n-1)\
  k_1 = 1/lambda_i k_(0), quad
  k_2 = sqrt(2)/lambda_i k_(1) = sqrt(2.1)/lambda_i^2 k_0, quad
  k_n = sqrt(n!)/lambda_i^n k_0 \
  | psi_i angle.r = k_0 sum_n sqrt(n!)/lambda_i^n |n angle.r \
$
  The function is diverging and can't be normalized, thus that eigenvalue problem has no solutions.

#pagebreak()

= 4




The system's Hamiltonian:
$
  hat(H) = (hat(p)_1^2 / 2m_1) + (1/2)m_1 omega^2 hat(x)_1^2 + (hat(p)_2^2 / 2m_2) + (1/2)m_2 omega^2 hat(x)_2^2 + (1/2)k(hat(x)_1 - hat(x)_2)^2
$

$
(1/2)k(hat(x)_1 - hat(x)_2)^2 = (1/2)k hat(x)_1^2 - k hat(x)_1 hat(x)_2 + (1/2)k hat(x)_2^2
$

$
hat(H) = (hat(p)_1^2 / 2m_1) + (hat(p)_2^2 / 2m_2) + (1/2)(m_1 omega^2 + k)hat(x)_1^2 + (1/2)(m_2 omega^2 + k) hat(x)_2^2 - k hat(x)_1 hat(x)_2.
$

Normal Modes Transformation

$
hat(X) = (m_1hat(x)_1 + m_2hat(x)_2) / (m_1 + m_2), quad hat(x) = hat(x)_1 - hat(x)_2,
$
and their conjugate momenta
$
hat(P) = hat(p)_1 + hat(p)_2, quad hat(p) = (m_2hat(p)_1 - m_1hat(p)_2) / (m_1 + m_2).
$

Where:
- $hat(X)$ is the center-of-mass coordinate.
- $hat(x)$ is the relative displacement.

The Hamiltonian in the new coordinates:
$
  hat(H) = (hat(P)^2 / 2M) + (1/2)M omega^2hat(X)^2 + (hat(p)^2 / 2\mu) + (1/2) omega_("eff")^2 hat(x)^2,
$
where:
- $M = m_1 + m_2$ is the total mass,
- $ mu = (m_1m_2) /(m_1 + m_2)$ is the reduced mass,

- $ omega_("eff") = sqrt(omega^2 + k / mu)$ is the effective frequency for the relative motion.

The total energy levels are the sum of the energy levels of the two independent oscillators:
$
  E_(n_1, n_2) = planck.reduce omega(n_1 + 1/2) + planck.reduce omega_"eff" (n_2 + 1/2), quad 
  "where" n_1, n_2 in N
$

The wave functions are products of the wave functions of the two independent oscillators:

$
   psi_(n_1, n_2)(X, x) =  psi_(n_1)(X) phi_(n_2)(x),
$

where:
- $ psi_(n_1)(X)$ is the harmonic oscillator wave function for the center-of-mass motion,
- $phi_(n_2)(x)$ is the harmonic oscillator wave function for the relative motion.

$
   psi_(n_1)(X) = (M omega / pi planck.reduce )^(1/4) 1/ sqrt(2^(n_1)n_1!) H_(n_1)(sqrt(M omega/planck.reduce) X)e^(-M omega X^2 /2planck.reduce),
$
$
 phi_(n_2)(x) = (mu omega_("eff") / pi planck.reduce)^(1/4) 1/(sqrt(2^(n_2)n_2!)) H_(n_2)(sqrt(mu omega_("eff")) / planck.reduce) x)e^(- mu omega_("eff") x^2 / 2 planck.reduce)
$




#pagebreak()

= 5
$
  [hat(A),hat(B)] = -c hat(B)
$

*a)* and *b)*

  $
    // hat(A)hat(B) - hat(B)hat(A) = -c hat(B) \
    [hat(A),hat(B)]^dagger &= (hat(A)hat(B) - hat(B)hat(A))^dagger \
    &= hat(B)^dagger hat(A)^dagger - hat(A)^dagger hat(B)^dagger \
    &= hat(B)^dagger hat(A) - hat(A) hat(B)^dagger \
    &= [hat(B)^dagger, hat(A)] = -c hat(B)^dagger\
    [hat(A), hat(B)^dagger] &= c hat(B)^dagger
  $

  if B is hermitian
  $
    [hat(A), hat(B)] &= c hat(B)
  $
  Which contradicts the premise, therefore *B is not hermitian*.

c)
  $
    hat(A)  psi_lambda = lambda  psi_lambda\
    [hat(A),hat(B)] psi_lambda 
    &= (hat(A)hat(B) - hat(B)hat(A)) psi_lambda\
    &= hat(A)hat(B) psi_lambda - lambda hat(B) psi_lambda\
    &= -c B  psi_lambda\
    hat(A)hat(B) psi_lambda &= (lambda - c) B  psi_lambda\
  $
  Therefore $hat(B) psi_lambda$ is an eigenstate  of $A$ with eigenvalues of $(lambda - c)$


  $
    [hat(A),hat(B)^dagger ] psi_lambda 
    &= (hat(A)hat(B)^dagger  - hat(B)^dagger hat(A)) psi_lambda\
    &= hat(A)hat(B)^dagger  psi_lambda - lambda hat(B)^dagger  psi_lambda\
    &= c B^dagger  psi_lambda\
    hat(A)hat(B)^dagger  psi_lambda &= (lambda + c) B^dagger  psi_lambda\
  $

  Therefore $hat(B)^dagger  psi_lambda$ is an eigenstate  of $A$ with eigenvalues of $(lambda + c)$

#pagebreak()

= 6
$
   psi(x,0) = 1/sqrt(2) ( psi_0 + i  psi_1), quad
  E_n = (n+1/2) planck.reduce omega
$

+

  $
     psi(x,t) 
    &= 1/sqrt(2) (e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1) \
    &= 1/sqrt(2) (e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1) \
     | psi(x,t)|^2 &=  psi^*(x,t)  psi(x,t) \
     &= 1/2 
     (e^(i 1/2 omega t)  psi_0^* - i e^(i 3/2 omega t)  psi_1^*) 
     (e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1) \
    
    &= 1/2
    (e^(i 1/2 omega t)  psi_0^* e^(-i 1/2 omega t)  psi_0 +
    e^(i 1/2 omega t)  psi_0^* i e^(-i 3/2 omega t)  psi_1 -
    i e^(i 3/2 omega t)  psi_1^* e^(-i 1/2 omega t)  psi_0  -
    i e^(i 3/2 omega t)  psi_1^* i e^(-i 3/2 omega t)  psi_1) \

    &= 1/2
    (| psi_0|^2 +
    i (e^(-i omega t)  psi_0^*  psi_1 - e^(i omega t)   psi_1^*  psi_0) +
    | psi_1|^2) \
    &= 1/2
    (| psi_0|^2 + | psi_1|^2 + 2 im(e^(i omega t)   psi_1^*  psi_0)) \
  $
+

  $
    x &= sqrt(planck.reduce/(2m omega)) (hat(a)^dagger + hat(a)) \
    hat(a)^dagger |n angle.r &= sqrt(n+1) |n + 1 angle.r, quad
  hat(a) |n angle.r = sqrt(n) |n - 1 angle.r \
    angle.l x angle.r 
    &= angle.l  psi(x,t)|x| psi(x, t)) angle.r \
    &= 1/2sqrt(planck.reduce/(2m omega)) angle.l (e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1)|(hat(a)^dagger + hat(a))|e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1 angle.r\
    &= 1/2sqrt(planck.reduce/(2m omega)) angle.l e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1|e^(-i 1/2 omega t)  psi_1 + i sqrt(2) e^(-i 3/2 omega t)  psi_2 + i e^(-i 3/2 omega t)  psi_0 angle.r \
    &= 1/2sqrt(planck.reduce/(2m omega)) (i e^(-i omega t) - i e^(i omega t))\
    &= sqrt(planck.reduce/(2m omega)) (e^(i omega t)- e^(-i omega t))/(2i)\
    &= sqrt(planck.reduce/(2m omega)) sin(omega t) \
    "Amplitude" &= sqrt(planck.reduce/(2m omega)) \
    "Freqancy" &= omega
  $
  
+

  $
    p &= i sqrt((planck.reduce m omega)/2) (hat(a)^dagger - hat(a))\
    angle.l p angle.r 
    &= angle.l  psi(x,t)|p| psi(x, t)) angle.r \
    &= 1/2i sqrt((planck.reduce m omega)/2) angle.l (e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1)|(hat(a)^dagger - hat(a))|e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1 angle.r\
    &= 1/2i sqrt((planck.reduce m omega)/2) angle.l e^(-i 1/2 omega t)  psi_0 + i e^(-i 3/2 omega t)  psi_1|e^(-i 1/2 omega t)  psi_1 + i sqrt(2) e^(-i 3/2 omega t)  psi_2 - i e^(-i 3/2 omega t)  psi_0 angle.r \
    &= -1/2i sqrt((planck.reduce m omega)/2) (i e^(-i omega t) + i e^(i omega t))\
    &= sqrt((planck.reduce m omega)/2) (e^(i omega t) + e^(-i omega t))/(2)\
    &= sqrt((planck.reduce m omega)/2) cos(omega t) \
  $

+

    $
     psi(x,t + (2pi)/omega) 
    &= 1/2 (| psi_0|^2 + | psi_1|^2 + 2 im(e^(i omega t)   psi_1^*  psi_0)) \
    &= 1/2 (| psi_0|^2 + | psi_1|^2 + 2 im(e^(i omega (t + (2pi)/omega))   psi_1^*  psi_0)) \
    &= 1/2 (| psi_0|^2 + | psi_1|^2 + 2 im(e^(i omega t ) e^(2pi i)  psi_1^*  psi_0)) \
    &= 1/2 (| psi_0|^2 + | psi_1|^2 + 2 im(e^(i omega t )  psi_1^*  psi_0)) \
    &=  psi(x,t) 
  $

  Where $e^(2pi i) = 1$

+
  The periodicity arises because the quantum harmonic oscillator has evenly spaced energy levels, with differences proportional to $planck.reduce omega$. The time-dependent $e^(-i E_n/planck.reduce t)$ phase factors therefore repeat with a period $T = (2 pi)/omega $.
  
#pagebreak()

= 7
$
   psi_n = sqrt(2/a) sin((n pi)/a x)
$

$
  angle.l x angle.r  
  &= integral_(0)^(a) x | psi(x)_n|^2 d x\
  &= 2/a integral_0^a x sin^2((n pi)/a x) d x\
  &= 1/a integral_0^a x (1 - cos((2n pi)/a x)) d x\
  &= 1/a integral_0^a [x - x cos((2n pi)/a x)] d x\
  &= 1/a [x^2/2 - a/(2n pi) x sin((2n pi)/a x)- (a/(2n pi))^2 cos((2n pi)/a x) ]_0^a\
  &= 1/a [a^2/2] = a/2 \
$

$
  angle.l x^2 angle.r  
  &= integral_(0)^(a) x^2 | psi(x)_n|^2 d x\
  &= 2/a integral_0^a x^2 sin^2((n pi)/a x) d x\
  &= 1/a integral_0^a x^2 (1 - cos((2n pi)/a x)) d x\
  &= 1/a integral_0^a [x^2 - x^2 cos((2n pi)/a x)] d x\
  &= 1/a [x^3/3 - a/(2n pi) x^2 sin((2n pi)/a x)- 2(a/(2n pi))^2 x cos((2n pi)/a x) + 2 (a/(2n pi))^3 sin((2n pi)/a x)]_0^a\
  &= 1/a [a^3/3 - 2(a/(2n pi))^2 a] \
  &= a^2 [1/3 - 1/(2(n pi)^2)] \
$

$
  angle.l (x - angle.l x angle.r )^2 angle.r  
  &= angle.l (x^2 - 2 x angle.l x angle.r + angle.l x angle.r^2) angle.r\
  &= angle.l x^2 angle.r - angle.l x angle.r^2\
  &= a^2/3 [1 - 3/(2(n pi)^2)] - a^2/4\
  &= a^2 [1/12 - 1/(2(n pi)^2)]\
  &= a^2/12 [1 - 6/(n pi)^2]\
$

#pagebreak()

= 8
*Region I*  
  $
    psi(x) = A e^(i k x) + B e^(-i k x), "where" k =sqrt(2 m E)/planck.reduce
  $
*Region II*  
  $
    psi(x) = C f(x) + D g(x)
  $
*Region III*  
  $
    psi(x) = F e^(i k x) + G e^(-i k x), "where" k =sqrt(2 m E)/planck.reduce
  $
  
+ *For a delta-function well* ($V(x) = - alpha delta(x)$)
  #set math.equation(numbering: "(1)")


  $
    F + G = A + B
  $
  
  $
    F - G = (1 + 2i beta)A - (1 - 2i beta)B, quad "where" beta = (m alpha)/(planck.reduce^2 k)
  $
  (1) - (2):
  $
    therefore
    2G = -2i beta A + 2(1 - i beta)B\ 
    B = 1/(1 - i beta) ( i beta A + G )
  $
  
  Multiply (1) by $(1 - 2i beta)$ and add:
  $
    2(1 - i beta)F - 2i beta G = 2A\
    F = 1/(1 - i beta) ( A + i beta G )
  $
  
  Therefore the $S$-matrix is:
  
  $
    S = 1/(1 - i beta)
    mat( i beta, 1 ; 1, i beta )
  $

+ *For the finite square well*, the potential is symmetric 
  $
   V(-x) = V(x)
  $
  Thus, scattering from the right is the same as scattering from the left, with $x <=> -x$, $A <=> G$, $B <=> F$.
  $
    F = S_(11) G + S_(12) A, quad B = S_(21) G + S_(22) A\
    B = S_(11) A + S_(12) G, quad F = S_(21) A + S_(22) G
  $
  
  Hence:
  $
    S_(11) = S_(22), quad S_(21) = S_(12).
  $
  
  Since
  $
    B = i sin(2l a)/(2 k l) (l^2 - k^2)F\
    F = (e^(-2i k a) A)/(cos(2l a)-i((k^2 + l^2))/(2 k l) sin(2l a))
  $ 
  
  therefore,
  
  $
      S_(21) = (e^(-2i k a))/(cos 2l a - i ((k^2 + l^2))/(2k l) sin 2l a)\
    S_(11) = (i ((l^2 - k^2))(2k l) sin(2l a) e^(-2 i k a))/(cos 2l a - i ((k^2 + l^2))/(2k l) sin 2l a)
  $
  
  Thus:
  $
    S = (e^(-2 i k a))/(cos 2l a - i ((k^2 + l^2))/(2k l) sin 2l a)
    mat(
      i ((l^2 - k^2))/(2k l) sin(2l a) , 1 ;
      1 , i ((l^2 - k^2))/(2k l) sin(2l a)
    )
  $

#pagebreak()

#bibliography("/references.bib")
#cite(<El-Deeb_PEU-323_Assignments>, form: none)
