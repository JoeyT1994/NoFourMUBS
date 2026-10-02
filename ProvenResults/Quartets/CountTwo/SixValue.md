# Six distinct character values: the simple-character branch

**Statement.** Suppose a triangle has exactly two matchings, no zero 3-by-3
minor on any edge, and irreducible (type M4) residual algebra in direction 1.
Then the relative character lambda of direction 1 does not take six
distinct values.

**Status.** Proved. The importing referee rederived every step. All
polynomial identities were rechecked independently in exact arithmetic
(`six_value_checks.py`). The archive checkers
(`simple_character_channel/verify.py`, `verify_rank3.py`,
`core/verify_symplectic_rigidity.py`) reproduce their mathematical controls
exactly. Their receipts differ from the archive only in source hashes of
files edited after the receipts were frozen.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md), Sections 3-7.
- [ReducibleExclusion.md](ReducibleExclusion.md), which supplies
  irreducibility.
- [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md), through
  ResidualSetup (R5), which makes both adjacent characters nonbinary.

No classification or reconstruction input is used.

**Provenance.** Archive `03_algebraic/`:
- `global_rigidity_2026_09_08/TWO_MATCHING_RESIDUAL_CURVE.md`, Sections 1-3;
- `core/SIMPLE_CHARACTER_SYMPLECTIC_RIGIDITY.md`, Sections 1-3;
- `core/simple_character_channel/`: `PROOF.md`, `LOW_DEFECT_EXCLUSION.md`,
  `RANK3_NORMAL_FORM.md`, `RANK3_MODEL.md`, `TWO_SIDED_EXCLUSION.md`.

The archive states these arguments "in the canonical eight-seed
reconstructed H,K". They use only the triangle tensor, so that framing is
dropped here.

---

Throughout, work in direction 1 with the notation of
[ResidualSetup.md](ResidualSetup.md), and assume that lambda has six distinct
values.

## 1. The residual cubic has a scalar Gram

Choose z_k with z_k^2 = lambda_k, and rotate all z_k by a common phase so
that every c_k = Re z_k is nonzero. Put U_k = conj(z_k) R_k and
t_k = Im(z_k)/c_k. Distinct lambda give distinct real t_k, because t
determines arg z mod pi.

From (R1): sum c_k U_k = sum s_k U_k = 0, and tr(U_k* U_l) is real (Setup
7.1). With f(t) = prod_k (t - t_k), define

    M(t) = sum_k c_k U_k prod_(l!=k) (t - t_l),   M(t_k) = a_k U_k,
    a_k = c_k f'(t_k), real and nonzero.

The t^5 coefficient is sum c_k U_k = 0. The t^4 coefficient is
sum s_k U_k - (sum t_l) sum c_k U_k = 0. So deg M <= 3. The six values span
the four-dimensional span of the R_k. Hence the four coefficients
M_0, ..., M_3 are independent, deg M = 3, and M has no scalar polynomial
factor. The coefficients are REAL combinations of the U_k, so they lie in V.

Let M^#(t) = sum_j M_j* t^j and r = tr(M^# M)/4. At each node
M^# M = M M^# = a_k^2 I. The trace-free parts of M^# M and M M^# have degree
at most 6 and vanish at six nodes, so they equal f N and f N' with constant
trace-free Hermitian N, N'.

Associativity M(M^# M) = (M M^#)M gives MN = N'M. Hence U_k N = N' U_k and
U_k* U_l N = N U_k* U_l for all k, l. Irreducibility makes N scalar, so
N = 0, and then N' = U_k N U_k* = 0:

    M^# M = M M^# = r I.                                              (1.1)

Properties of r and M:
- The leading coefficient gives M_3* M_3 = r_6 I with r_6 > 0.
- For real t, M^#(t) = M(t)*, so r >= 0 on R.
- A real zero t_0 of r would give M(t_0) = 0 and a factor (t - t_0),
  contradicting independence of the coefficients. So r > 0 on R and
  deg r = 6.
- At a complex root z of r, M(z) != 0 for the same reason. Since M(z) lies
  in the span of the R_k, it has rank >= 2 by (R2).
- M(conj z)* M(z) = M^#(z) M(z) = 0, so both M(z) and M(conj z) have rank
  exactly 2. From M M^#(z) = 0, their kernels are orthogonal complements.

## 2. A common alternating form

**Factorization.** M(t) = rho U F_1(t) F_2(t) F_3(t), where rho > 0, U is
unitary, F_j(t) = (t - x_j) I + i y_j A_j with y_j > 0, the A_j are balanced
involutions, and r = rho^2 prod_j ((t - x_j)^2 + y_j^2).

*Proof.* Take a root z = x + iy with y > 0. Let P project on ker M(z) and
put F(t) = (t - z)P + (t - conj z)(I - P) = (t - x)I + iy(I - 2P). Then M(t)P
vanishes at z and M(t)(I - P) vanishes at conj z, so Q = M F^{-1} is a
polynomial. Also Q^# Q = Q Q^# = r/((t - x)^2 + y^2) I, because
F^# F = F F^# is that scalar.

Let w be any remaining root of the new scalar. Then
rank Q(w) >= rank M(w) = 2, since M(w) = Q(w) F(w), and
Q(conj w)* Q(w) = 0. So both ranks are exactly 2; this covers repeated
roots. Iterate three times. The constant quotient Q_3 satisfies
Q_3* Q_3 = r_6 I. QED.

Normalize to the monic M~ = U* M / rho. The coefficient Gram
tr(M_i* M_j) is real, because the M_j are real combinations of the U_k. So
tr(M~_0) = tr(F_1(0) F_2(0) F_3(0)) is real. In its expansion, the constant
and two-involution terms have real trace and the one-involution terms have
trace zero. This leaves Im tr = -y1 y2 y3 Re tr(A1 A2 A3), so
Re tr(A1 A2 A3) = 0.

[ResidualSetup.md](ResidualSetup.md) 7.2 now gives a unitary alternating J
with A_j J + J A_j^T = 0. Then F_j J F_j^T = ((t - x_j)^2 + y_j^2) J, hence
M J M^T = r(t) U J U^T. At the nodes r(t_k) = a_k^2, so

    U_k J U_k^T = J_out := U J U^T     for every k.                     (2.1)

Equivalently, every X in V satisfies X J = J_out conj(X). This condition is
real-linear in X.

## 3. Orthonormal unitary Kraus basis

Let mu = sum_k (2/(3 a_k^2)) delta_(t_k). This is a positive measure with
six atoms. By Setup 7.1,

    integral |M(t)><M(t)| dmu = (2/3) sum_k |U_k><U_k| = id_V.

Let p_0, ..., p_3 be the real orthonormal polynomials of mu, with positive
leading coefficients, and write M(t) = sum_k p_k(t) E_k with E_k in V. The
identity above says that E_0, ..., E_3 is an orthonormal basis of V. The
leading coefficient is M_3 = kappa E_3, where kappa > 0 is the leading
coefficient of p_3. Since M_3* M_3 is scalar and ||E_3|| = 1, E_3 is unitary.

Let tau_1 < tau_2 < tau_3 be the roots of p_3 (distinct and real), and
omega_j > 0 the Gauss weights of mu. Gauss quadrature is exact through
degree five, since mu has at least three support points. So
O_jk = sqrt(omega_j) p_k(tau_j), for k = 0, 1, 2, is an orthogonal matrix
(exactness through degree four), and

    V_j = sqrt(omega_j) M(tau_j) = sum_(k<3) O_jk E_k

are orthonormal and orthogonal to E_3. Each V_j has scalar Gram by (1.1)
and unit norm, so it is unitary. Thus E_3, V_1, V_2, V_3 is an orthonormal
unitary basis of V. By Setup 7.1 the physical channel is
Phi = Ad(E_3) + sum_j Ad(V_j), and both frames are perfect.

Left multiply V by E_3*. By (2.1), X J X^T = J_out for every unitary X in
V, and E_3* J_out conj(E_3) = J. So after this step every element of V is
quaternionic-linear for the SINGLE form J (XJ = J conj X). Write
B_j = E_3* V_j; the basis is now I, B_1, B_2, B_3.

**Residue equations.** Replace M by E_3* M / kappa. It is monic, with
trace q(t) = p_3/kappa and roots tau_j. Lagrange interpolation of its
trace-free degree-two part gives

    M(t) = q(t) [ I + sum_j sigma_j B_j/(t - tau_j) ],
    sigma_j = d_j / q'(tau_j),  d_j = 1/(kappa sqrt(omega_j)) > 0.

Put F_j = B_j + B_j* and F_jk = B_j* B_k + B_k* B_j. These are traceless,
Hermitian and Theta-even. The trace-free part of the Gram of the bracket is

    sum_j sigma_j F_j/(t - tau_j)
      + sum_(j<k) sigma_j sigma_k F_jk/((t - tau_j)(t - tau_k)),

and it must vanish. Its residues give

    F_j + sum_(k!=j) sigma_k F_jk/(tau_j - tau_k) = 0,   j = 1, 2, 3.   (3.1)

Hence the input defect span W_in = span{F_j, F_jk} (Setup 7.3) equals
span{F_12, F_13, F_23}, and ell := dim W_in <= 3.

## 4. Defect ranks 0, 1, 2 are impossible

Write Q_in(X) = X*X - tr(X*X) I/4 and Q_out(X) = XX* - tr(XX*) I/4 on V.
Choose coordinates in which M(t) has coefficient vector (1, t, t^2, t^3).
Both maps vanish on this real twisted cubic, whose real quadratic ideal is
spanned by

    q_1 = x0 x2 - x1^2,   q_2 = x0 x3 - x1 x2,   q_3 = x1 x3 - x2^2.

So Q_in = sum_a q_a F_a and Q_out = sum_a q_a F'_a, with fixed traceless
Hermitian F_a, F'_a, and W_in = span F_a. Since tr((X*X)^2) = tr((XX*)^2)
and the six quartics q_a q_b are linearly independent,
tr(F_a F_b) = tr(F'_a F'_b). So T: F_a -> F'_a is a well-defined isometry
W_in -> W_out.

**Good slice.** Normalize at an actual slice U_k (left multiply by U_k*;
this does not change W_in). The derivatives of Q_in and Q_out at I in
direction E both equal the traceless part of E + E*, so T fixes the space H
of these Hermitian parts.

On the standard cubic the gradients satisfy n_3 = t n_2 - t^2 n_1 with n_1,
n_2 independent.
- If ell = 2, two independent combinations of the q_a have dependent
  differentials only at the (at most two) real roots of
  (a1 b2 - a2 b1) + (a1 b3 - a3 b1) t + (a2 b3 - a3 b2) t^2.
- If ell = 1, one combination has zero differential at no more than two
  nodes.

So some actual slice has dim H = ell. Then T = id, Q_in = Q_out, and every
element of the normalized V is normal. Each value of ell now fails:

* **ell = 1.** Write X = xI + hF + iA, with F spanning H and A Hermitian and
  Theta-odd. Normality is h[F, A] = 0 identically. Since h is not
  identically zero, every X commutes with F. So V is reducible, a
  contradiction.
* **ell = 2.** A symplectic unitary moves H to span{Z(x)I, X(x)I}, with
  J = I (x) [[0,1],[-1,0]]. The Theta-odd Hermitian space is
  I(x)a.s + X(x)b.s + Z(x)c.s + dY(x)I (ten real dimensions). Normality
  [H0(x)I, A] = 0 with H0 = h1 Z + h2 X gives h1 d = h2 d = 0 and
  h1 b = h2 c. So d = 0, b = h2 v and c = h1 v with v constant, and then
  exactly Q_in(M) = 2(x + a.v) H0 (x) I. This vanishes on the cubic. The
  functional x + a.v is nonzero (its coefficient on I is 1) and does not
  vanish identically on the spanning cubic. So h1 and h2 vanish on the
  cubic, hence on V, a contradiction.
* **ell = 0.** All F_j and F_jk vanish, so the A_j = i B_j are pairwise
  anticommuting balanced involutions. The product A1 A2 A3 is central. If
  it is nonscalar, it reduces V. If it is scalar, A3 lies in the Clifford
  algebra of A1 and A2, which is M2 with multiplicity two, so V is
  reducible. Either way, a contradiction.

Hence ell = 3.

## 5. The complete Pauli normal form at defect rank three

Normalize at any actual slice. At I the three quadrics have gradient rank
two, so dim H = 2, and T fixes H. Therefore Q_in - Q_out = q (x) D, where q
is the unique ideal generator with zero differential at I. In standard
coordinates at t = 0 this is q = x1 x3 - x2^2, which has no x0 term and rank
three. Moreover D != 0: otherwise V is normal with dim H = 2, and Section 4
would put W_in inside H.

Symplectically move H to span{Z(x)I, X(x)I} and write M = xI + H0(x)I + iA
as above. Now the commutator coefficients h1 b - h2 c, h1 d and h2 d are
multiples of the rank-three quadric q. A product of two linear forms cannot
be such a multiple, so d = 0 and h1 b - h2 c = q n for a fixed nonzero
vector n.

The quadric q vanishes on h1 = h2 = 0. With a third coordinate t,

    q = alpha h1^2 + 2 beta h1 h2 + gamma h2^2 + delta h2 t,
    alpha delta != 0   (the determinant is -alpha delta^2/4).

Rotating (h1, h2) and changing only t gives q = h1^2 - h2 t. Then
b = h1 n + h2 v and c = t n + h1 v, so

    M = xI + H0(x)I + i[ I(x)a.s + H0(x)v.s + G0(x)n.s ],
    H0 = h1 Z + h2 X,   G0 = t Z + h1 X,                             (5.1)

with a = t a_t + h1 a_1 + h2 a_2 linear. Exact multiplication gives

    Q_in(M)  = 2(x+a.v) H0(x)I + 2(a.n) G0(x)I - 2q Y(x)(v x n + n).s,
    Q_out(M) = 2(x+a.v) H0(x)I + 2(a.n) G0(x)I - 2q Y(x)(v x n - n).s.  (5.2)

If a_t.n = 0, the plane h1 = h2 = 0 would lie in the zero set of Q_in. But
Q_in = sum q_a F_a with independent F_a vanishes only on the twisted cubic,
which contains no line. So a_t.n != 0.

A rotation of the second qubit (which is symplectic) makes n = (0,0,n) with
n > 0, and v = (v,0,w). Write a_t = (a,b,c), a_1 = (d,e,f), a_2 = (g,h,k),
and A = (a,d,g), B = (b,e,h), C = (c,f,k), Q = 1 + v^2. The coefficients of
t, h1, h2 are

    E_t = i[I(x)(aX+bY+cZ) + n Z(x)Z],
    E_1 = Z(x)I + i[I(x)(dX+eY+fZ) + Z(x)(vX+wZ) + n X(x)Z],
    E_2 = X(x)I + i[I(x)(gX+hY+kZ) + X(x)(vX+wZ)].

They are orthogonal to I, with real Gram G = AA^T + BB^T + CC^T + N, where

    N = [[n^2, nw, 0], [nw, n^2+Q+w^2, nw], [0, nw, Q+w^2]] > 0.

In this basis the channel is Phi(Y) = Y + sum_(ij) R_ij E_i Y E_j*, with
R = G^{-1}, and Phi*(Y) = Y + sum_(ij) R_ij E_i* Y E_j. The condition
Phi(I) = 4I forces R_02 = R_11: its Y(x)Z coefficient is -2n(R_02 - R_11).

By (5.2), inside the five-dimensional Theta-even traceless space
{Z(x)I, X(x)I, Y(x)X, Y(x)Y, Y(x)Z},

    W_in  = span{Z(x)I, X(x)I, Y(x)(Z - vY)},
    W_out = span{Z(x)I, X(x)I, Y(x)(Z + vY)},

and their orthogonal complements are

    W_in-perp  = span{Y(x)X, Y(x)(Y + vZ)},
    W_out-perp = span{Y(x)X, Y(x)(Y - vZ)}.

## 6. Both frames kill their planes; the determinant is 4n^3(1+v^2)

By Setup 7.3, the six centered projectors of the input frame lie in
W_in-perp and in ker Phi, and span at least two dimensions (q is
nonbinary). So Phi kills W_in-perp. Likewise the output frame gives
Phi*(W_out-perp) = 0, since p is nonbinary.

Put x = RA and y = RB. Take the X(x)I and Z(x)I Pauli coefficients of
Phi(Y(x)X), Phi(Y(x)(Y+vZ)) and Phi*(Y(x)X). They give the following
equations, which are exact identities using only that R is symmetric with
R_02 = R_11:

    x1 - w y1 - n y0 = 0,        x2 - w y2 - n y1 = 0,
    n x0 + w x1 + Q y1 = 0,      n x1 + w x2 + Q y2 = 0,
    x1 + w y1 + n y0 = 0,        x2 + w y2 + n y1 = 0.                  (6.1)

The determinant of (6.1) in (x0, x1, x2, y0, y1, y2) is 4 n^3 (1 + v^2) > 0.
So x = y = 0, and since R is invertible, A = B = 0. The exact identity

    [Phi(Y(x)(Y+vZ))]_(Y(x)Z) + v [Phi(Y(x)X)]_(Y(x)X)
        = 2 [ B^T R C + v (1 - B^T R B) ]                                (6.2)

(the bracket is the Pauli coefficient tr(P*.)/4) then gives 2v = 0.

With A = B = 0 and v = 0, each of I, E_t, E_1, E_2 commutes with the
nonscalar involution I(x)Z. So V, and hence the residual algebra, is
reducible. This contradicts irreducibility and proves the Statement. QED.

The output equation is essential. The archive's exact rational control
(`RELAXATION_CONTROL.md`) has

    n = 15/16, v = 3/4, w = 0, A = (0, -1/4, 0),
    B = (-18843/10240, 0, 1923/640), C = (5769/2560, 0, -609/160).

It is bistochastic, irreducible and satisfies all the input equations, but
fails Phi*(Y(x)X) = 0. `six_value_checks.py` rechecks it. It is not a
physical triangle.
