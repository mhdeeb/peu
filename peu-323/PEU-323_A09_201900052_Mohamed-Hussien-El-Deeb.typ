#import "/template.typ": *

#show: article

#set heading(numbering: none)

#maketitle(
  title: "PEU 323 Assignment 9",
  authors: (
    "Mohamed Hussien El-Deeb (201900052)",
  ),
  // date: datetime.today().display("[day padding:none]. [month repr:long] [year]"),
)

#tableofcontents()

= 1

$
  A = mat(0, -i; i, 0), quad B = mat(1, 0; 0, 1)
$

B is the identity matrix, which any unitary transformation can diagonalize

$
  U^dagger B U = U^dagger U B = B
$

Let's find the unitary matrix that diagonalizes the matrix A

$
  A psi_i = alpha_i psi_i \
  (A - alpha_i I) psi_i = 0\
  det(A - alpha_i I) = 0 \
  mat(delim: "|", -alpha_i, -i; i, -alpha_i)  = 0 \
  (alpha_i)^2 -1 = 0 \
  alpha_i = plus.minus 1
$

$
  (A minus.plus I) psi_i = 0 \
  mat(minus.plus 1, -i; i, minus.plus 1) mat(a; b) = 0 \
  minus.plus a - i b = 0 \
  a = minus.plus i b \ 
  therefore 
  psi = b mat(minus.plus i; 1) =  1/sqrt(2) mat(minus.plus i; 1) \
  therefore 
  U =  1/sqrt(2) mat(- i, i; 1, 1) 
$

For verification:

$ 
  U^T = 1/sqrt(2) mat(- i, 1; i, 1) \
  U^dagger = 1/sqrt(2) mat(i, 1; -i, 1) \
  U^dagger A U = 1/2 mat(i, 1; -i, 1) mat(0, -i; i, 0) mat(- i, i; 1, 1) = 1/2 mat(i, 1; -i, 1) mat(-i, -i; 1, -1) = 1/2 mat(2, 0; 0, -2) = mat(1, 0; 0, -1)\ 
$



#pagebreak()

= 2

#set enum(numbering: "a)")

$
  H = mat(H_(11), H_(12); H_(21), H_(22))
$
For a hermitian matrix,

$
  H^dagger = H \
  H^dagger = mat(H_(11)^*, H_(21)^*; H_(12)^*, H_(22)^*) \
  mat(H_(11)^*, H_(21)^*; H_(12)^*, H_(22)^*) = mat(H_(11), H_(12); H_(21), H_(22))\
  H_(11)^* = H_(11), quad H_(22)^* = H_(22), quad H_(12)^* = H_(21)
  
$


+
  
  $
    & A psi_i = E_i psi_i \
    & (A - E_i I) psi_i = 0 \
    & det(A - E_i I) = 0 \
    & mat(delim: "|", H_(11) - E_i, H_(12); H_(21), H_(22) - E_i)  = 0 \
    & (H_(11) - E_i)(H_(22) - E_i) - H_(12)H_(21) = 0 \
    & E_i^2 - (H_(11)+ H_(22)) E_i + H_(11)H_(22) - H_(12)H_(21) = 0 \
    E_i
    &= (- (H_(11)+ H_(22)) plus.minus sqrt((H_(11)+ H_(22))^2 - 4 (H_(11)H_(22) - H_(12)H_(21))) )/(2) \
     &= (- H_(11) - H_(22) plus.minus sqrt((H_(11) - H_(22))^2 + 4 H_(12)H_(21)) )/(2) \
     &= (- H_(11) - H_(22) plus.minus sqrt((H_(11) - H_(22))^2 + |2 H_(12)|^2 ))/(2) \
     &= -(H_(11) + H_(22))/(2) plus.minus sqrt(((H_(11) - H_(22))/(2))^2 + |H_(12)|^2 ) \
  $

+
  
  $
    (A - E_i I) psi_i = 0\
    mat(H_(11) - E_i, H_(12); H_(21), H_(22) - E_i) mat(a; b) = 0\
    (H_(11) - E_i) a + H_(12) b = 0 =>  a = (H_(12))/(H_(11) - E_i) b \
    |a|^2 + |b|^2 = 1 \
    |(H_(12))/(H_(11) - E_i)|^2 |b|^2 + |b|^2 = 1\
    (|(H_(12))/(H_(11) - E_i)|^2 + 1 )|b|^2 = 1 \
    |b|^2 = 1/(|(H_(12))/(H_(11) - E_i)|^2 + 1 ) \
    psi_i = mat(a; b) = b mat((H_(12))/(H_(11) - E_i); 1) = 
    1/sqrt(|(H_(12))/(H_(11) - E_i)|^2 + 1 ) mat((H_(12))/(H_(11) - E_i); 1)
    
  $where $E_i = -(H_(11) + H_(22))/(2) plus.minus sqrt(((H_(11) - H_(22))/(2))^2 + |H_(12)|^2)$
  
  // $
  //   (H_(12))/(H_(11) - E_i) = 1/((3H_(11) + H_(22))/(2 H_(12)) plus.minus sqrt(((H_(11) - H_(22))/(2 H_(12)))^2 + 1)) \ 
  //   = 1/(x plus.minus sqrt(x^2 + 1))
// $

#pagebreak()

= 3
$
  hat(L)_x = 1/sqrt(2) mat(0,1,0; 1,0,1; 0,1,0), quad
  hat(L)_y = 1/sqrt(2) mat(0,-i,0; i,0,-i; 0,i,0), quad
  hat(L)_z = mat(1,0,0; 0,0,0; 0,0,-1)
$

+ Since $hat(L)_z$ is diagonal, we can read off the eigenvalues directly. $E_i = -1, 0, 1$

+ Since the eigenvectors of diagonal matrices are the columns of the identity matrix,

  For $E = 1$, $psi = mat(1; 0; 0)$
  
  $
    angle.l L_x angle.r
    & = lr(angle.l psi|L_x|psi angle.r) \
    & = 1/sqrt(2) mat(1, 0, 0) mat(0,1,0; 1,0,1; 0,1,0) mat(1; 0; 0) \
    & = 1/sqrt(2) mat(1, 0, 0) mat(0; 1; 0) = 0
  $

  $
    angle.l L_x^2 angle.r
    & = lr(angle.l psi|L_x^2|psi angle.r) \
    & = 1/2 mat(1, 0, 0) mat(0,1,0; 1,0,1; 0,1,0) mat(0,1,0; 1,0,1; 0,1,0) mat(1; 0; 0) \
    & = 1/2 mat(1, 0, 0) mat(0,1,0; 1,0,1; 0,1,0) mat(0; 1; 0) \
    & = 1/2 mat(1, 0, 0) mat(1; 0; 1) = 1/2
  $

  $
    sigma_L_x = sqrt(angle.l L_x^2 angle.r - angle.l L_x angle.r^2) = 1/sqrt(2)
  $

+ 
  $ 
    hat(L)_x = 1/sqrt(2) mat(0,1,0; 1,0,1; 0,1,0) \
    det(hat(L)_x - lambda_i I) = 0 \
    mat(delim: "|", -lambda_i,1/sqrt(2),0; 1/sqrt(2),-lambda_i,1/sqrt(2); 0,1/sqrt(2),-lambda_i) = 0\
    -lambda_i (lambda_i ^2 -1/2) + 1/2  lambda_i = 0\
    - lambda_i ^3 +  lambda_i = 0 \
    lambda_i (-lambda_i ^2 + 1) =0 \
    therefore lambda_i = -1, 0, 1
  $

  $ 
    (hat(L)_x - lambda_i I) psi_i = 0 \
    mat(-lambda_i,1/sqrt(2),0; 1/sqrt(2),-lambda_i,1/sqrt(2); 0,1/sqrt(2),-lambda_i) mat(a; b; c) = 0 \
    -lambda_i a + 1/sqrt(2) b = 0, quad 1/sqrt(2) b - lambda_i c = 0, quad 1/sqrt(2)(a+c)-lambda_i b = 0  \
    therefore b = sqrt(2) lambda_i c, quad a = sqrt(2) lambda_i b - c = (2 lambda_i ^2 -1) c
    \
    |a|^2 + |b|^2 + |c|^2 = 1\
    |2 lambda_i ^2 -1|^2 |c|^2 + 2|lambda_i| ^2 |c|^2 + |c|^2 = 1\
    |4 lambda_i ^4 - 4 lambda_i ^2 + 1||c|^2 + 2|lambda_i| ^2 |c|^2 + |c|^2 = 1\
  $
  
  For hermitian matrices $lambda$ is real and thus our polynomial is always positive, $|4 lambda_i ^4 - 2 lambda_i ^2 + 1| = (4 lambda_i ^4 - 2 lambda_i ^2 + 1)$
    
  $
    2(2 lambda_i ^4 - lambda_i ^2 + 1)|c|^2 = 1\
    |c|^2 = 1/(2(2 lambda_i ^4 - lambda_i ^2 + 1)) \
    therefore psi_i = c mat((2 lambda_i ^2 -1); sqrt(2) lambda_i; 1) = 1/sqrt(2(2 lambda_i ^4 - lambda_i ^2 + 1)) mat((2 lambda_i ^2 -1); sqrt(2) lambda_i; 1)\
    psi_(-1) = 1/2 mat(1; -sqrt(2); 1), quad 
    psi_0 = 1/sqrt(2) mat(-1; 0; 1), quad 
    psi_1 = 1/2 mat(1; sqrt(2); 1) \
  $

  For $hat(L)_z$, let the basis be
  
  $
    v_1 = mat(1; 0; 0), quad v_0 = mat(0; 1; 0), quad v_(-1) = mat(0; 0; 1)
  $
  
  $
    therefore 
    psi_(-1)= 1/2 (v_1+v_(-1)) - 1/sqrt(2) v_0 \
    psi_0 = 1/sqrt(2) (-v_1+v_(-1))\
    psi_1= 1/2 (v_1+v_(-1)) + 1/sqrt(2) v_0
  $

+
  For $hat(L)_z$ measured to be -1, the eigenstate is $v_(-1)$
  $
    |v_(-1) angle.r &= (sum_i |psi_i angle.r angle.l psi_i|)|v_(-1) angle.r\
    &= angle.l psi_(-1)|v_(-1) angle.r |psi_(-1) angle.r + angle.l psi_0|v_(-1) angle.r |psi_0 angle.r + angle.l psi_1|v_(-1) angle.r |psi_1 angle.r  \
    &= 1/2 |psi_(-1) angle.r + 1/sqrt(2) |psi_0 angle.r + 1/2 |psi_(1) angle.r
  $

  Therefore the possible outcomes are:
  - $lambda = -1$, with $p = 1/4$
  - $lambda = 0$, with $p = 1/2$
  - $lambda = 1$, with $p = 1/4$

+
  $
    |psi angle.r = mat(1/2; 1/2; 1/sqrt(2))
  $
  $
    hat(L)_z ^2 psi_i = lambda_i ^2 psi_i
  $
  For $hat(L)_z ^2$ measured to be 1, the possible eigenstates are $v_(-1)$ and $v_1$.
  
  probability of getting this result:
  $
    p_(+1) &= |angle.l v_(1)|psi angle.r|^2 + |angle.l v_(-1)|psi angle.r|^2\
    &= 1/4 + 1/2 = 3/4
  $
  Post-Measurement State:
  $
    P_(+1) = |v_1 angle.r angle.l v_1| + |v_(-1) angle.r angle.l v_(-1)|
  $
  $
    |psi_"post"angle.r &= (P_(+1) |psi angle.r )/(sqrt(p_(+1))) \ 
    &= (1/2 |v_1 angle.r + 1/sqrt(2) |v_(-1) angle.r)/(sqrt(3/4)) \
    &= 1/sqrt(3) |v_1 angle.r + sqrt(2/3) |v_(-1) angle.r
  $

    After an immediate measurement of $hat(L)_z$, the outcomes would be:
  - $lambda = 1$, with $p = 1/3$
  - $lambda = -1$, with $p = 2/3$

+
  $
    |psi angle.r = sum_i c_i|v_i angle.r, quad "where" |c_i|^2 = p(v_i) "or" c_i = sqrt(p(v_i)) e^(i phi_i)\
    therefore
    |psi angle.r = 1/2 e^(i phi_(-1))|v_(-1) angle.r + 1/sqrt(2) e^(i phi_0) |v_0 angle.r + 1/2 e^(i phi_1)|v_1 angle.r
  $
  where $phi_(-1), phi_0$ and $phi_1$ are arbitrary phases

+
  $
    p(hat(L)_x = 0) &= |angle.l psi_0| psi angle.r|^2 \
    &= |angle.l 1/sqrt(2) (-v_1+v_(-1))| psi angle.r|^2 \
    &= |1/sqrt(2) (- angle.l v_1| psi angle.r + angle.l v_(-1)| psi angle.r)|^2 \
    &= |1/sqrt(2) (-1/2 e^(-i phi_(-1)) + 1/2 e^(i phi_1))|^2 \
    &= |1/(2sqrt(2)) (-e^(-i phi_(-1)) + e^(i phi_1))|^2 \
    &= |1/(2sqrt(2)) e^(i phi_(-1)) (e^(i (phi_1 - phi_(-1))) - 1)|^2 \
    &= 1/8 (e^(i (phi_1 - phi_(-1))) - 1)(e^(-i (phi_1 - phi_(-1))) - 1)\
    &= 1/8 (2 - (e^(i (phi_1 - phi_(-1))) + e^(-i (phi_1 - phi_(-1)))))\
    &= 1/4 (1 - cos(phi_1 - phi_(-1))) 
  $

  Therefore a global phase like $e^(i phi_(-1))$ multiplied in all results in an equivalent state, however, relative phases between basis states result in a different behavior when computing the angular momenta, or any observables in general. 
#pagebreak()

= 4

+


  We solve the two-dimensional time-independent Schrödinger equation:
  
  For $0 <= x <= L_x, 0 <= y <= L_y$:
  $
   -planck.reduce^2/(2m) gradient^2 psi(x,y) = E psi(x, y)
   \
  -planck.reduce^2/(2m) ((partial^2 psi(x,y))/(partial x^2) + (partial^2 psi(x,y))/(partial y^2)) = E psi(x, y)
  $
  
  Assume the wavefunction is separable:
  $
    psi(x, y) equiv X(x) Y(y)
  $

  Substituting into the Schrödinger equation:
  
  $
    -planck.reduce^2/(2m) (Y(y)(partial^2 X(x))/(partial x^2) +X(x) (partial^2 Y(y))/(partial y^2)) = E X(x) Y(y) \
    -planck.reduce^2/(2m) Y(y)(partial^2 X(x))/(partial x^2) = E_x X(x) Y(y) \ 
    -planck.reduce^2/(2m) X(x) (partial^2 Y(y))/(partial y^2) = E_y X(x) Y(y) 
  $
  where $E_x + E_y = E$
  $
   -planck.reduce^2/(2m)(partial^2 X(x))/(partial x^2) = E_x X(x) \ 
    -planck.reduce^2/(2m) (partial^2 Y(y))/(partial y^2) = E_y Y(y)  
  $

  By solving both equations and applying boundary conditions $X(0) = X(L_x) = 0$ and $Y(0) = Y(L_y) = 0$,

  $
   X(x) =  sqrt(2/L_x) sin((n_x pi x)/(L_x)), quad n_x in N\
   Y(y) =  sqrt(2/L_y) sin((n_y pi y)/(L_y)), quad n_y in N
  $
  
  The normalized wave function is:
  $
    psi(x,y) = 2/sqrt(L_x L_y) sin((n_x pi x)/(L_x)) sin((n_y pi y)/(L_y))
  $
+
  Energies:
  $
  E_x = (planck.reduce^2 pi^2 n_x ^2)/(2m L_x^2), quad 
  E_y = (planck.reduce^2 pi^2 n_y ^2)/(2m L_y^2)
  $

  The total energy is:
  
  $
    E = E_x + E_y = (planck.reduce^2 pi^2)/(2m) ((n_x/L_x)^2 + (n_y/L_y)^2)
  $
+

  For $L_x = L_y = L$,
  $
    E(n_x, n_y) = (planck.reduce^2 pi^2)/(2m L^2) (n_x^2 + n_y^2)
  $

  For degenerate states where $E(n'_x, n'_y) = E(n_x, n_y)$,
  $
    n'_x^2 + n'_y^2 = n_x^2 + n_y^2\
  $

+

  i. For $L_x/L_y$ is rational,
    $
      E = (planck.reduce^2 pi^2)/(2m L_x^2) (n_x^2 + n_y^2(L_x/L_y)^2)
    $

    For degenerate states to exist:
    $
      n'_x^2 + n'_y^2(L_x/L_y)^2  = n_x^2 + n_y^2(L_x/L_y)^2 \
      L_x/L_y = p/q \
      n'_x^2 + n'_y^2(p/q)^2  = n_x^2 + n_y^2(p/q)^2 \
      (n'_x^2 - n_x^2)q^2 = (n_y^2 - n'_y^2)p^2 \
    $

    Because $p$ and $q$ are integers, integer solutions $(n'_x, n'_y)$ and $(n_x, n_y)$ that satisfy the degeneracy condition may exist; in other words, *degenerate states are allowed to exist in this case*.

  ii. For $L_x/L_y$ is irrational, then the relation 
  $
    n'_x^2 + n'_y^2(L_x/L_y)^2  = n_x^2 + n_y^2(L_x/L_y)^2
  $
  can't be satisfied for distinct $(n_x, n_y)$ because an irrational ratio ensures that no linear combination of $n_x^2$ and $n_y^2$ can satisfy the equality.
  Therefore there will be *no degeneracy* in that case.
#pagebreak()

#bibliography("/references.bib")
#cite(<El-Deeb_PEU-323_Assignments>, form: none)
