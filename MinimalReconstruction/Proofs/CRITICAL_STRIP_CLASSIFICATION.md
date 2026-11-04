# Classification of the scalar data of an all-critical row strip

> **Note (22 Oct 2026).** The current proof classifies the zero-J strips by return O's two unsquared mixed sums
> (`MinimalReconstruction/returns/O_zeroj_unsquared`), not by the whole-strip square sum below, and the nonzero-J strips by return K.
> This document is kept as the original, independent proof; its verifiers still run in `verify_dossier.py`.

Here a row strip means three complete rows of a phase Hadamard. A strip
is **all-critical** when the reconstruction discriminants of all twenty
three-column corners vanish. Since same-row complementation permutes
these corners, this is equivalent to vanishing of the twenty signed
phase-block invariants D=perm(E)det(E)²/prod(E) minus its conjugate.

This theorem does not assume global strict-corner coverage or the
strict constructor at a ramified point. It uses only identities on
actual phase blocks, the scalar reduction in CRITICAL_CORNER_REDUCTION.md,
and the exact calculations described below.

## Theorem

Suppose every 3 by 3 block in the strip is invertible. At any corner:

* If J=0, either p=0 or p=5, or the three complete rows can be phased
  into (1;x;conjugate(x)).
* If J!=0, put k=2|J|/(9-p)². Then its scalar data are one of

      k=1/3, p=27/5, |J|=54/25, X=Y=Z=9/5;
      k=1,   p=7,    |J|=2,     {X,Y,Z}={1,1,5};
      k=kappa, p=9-4/(1+kappa²), K=J²/4,

  where K=XYZ and kappa is the unique positive root of
  3k³+k²+k-1=0.

The first two nonzero-J cases are excluded, together with the third, by
the ten-corner count of ENDPOINT_COUNTING.md (return S).

## 1. Exact square-sum identity on actual strips

Let S be the sum of -D² over the twenty column triples. Each term is
nonnegative, and an all-critical strip has S=0. For an invertible phase
block, SIDE_FIBER.md §1 gives actual, unit lambda_j, including at R=0.
At R=0 its invariant z is real. If L_j=g+c_j z is nonzero, those
identities give

    lambda_j=P_j/L_j,  conjugate(lambda_j)=bar(P_j)/L_j,
    U=lambda0 bar(lambda1), V=lambda0 bar(lambda2),
    Pi=perm(E)=z lambda0,
    U bar(Pi)=z bar(lambda1), V bar(Pi)=z bar(lambda2).  (1)

These are identities on the existing block, not a limiting construction.
Newton identities determine all moments M_ab=sum x_j^a y_j^b needed
here. For example M11=st-Pi, M2,-1=s bar(r)-U bar(Pi), and

    M21=s M11-t U bar(s)+U r,
    M22=M11²-2UV conjugate(M11).

`verify_critical_square_sums.py` checks all 43 implemented moments
against direct sums on six independent Laurent variables.

For the full six-column strip the six orthogonality moments vanish.
Expand -D²/6 and sum over all ordered triples of columns. Repeated
indices contribute zero, and each unordered triple occurs six times.
Thus this equals S. Dephasing one of the three selected columns makes
each Laurent monomial a product of three whole-strip moments. The
orthogonality cancellations leave 66 moment monomials. The verifier
regenerates this expansion directly from perm(E)det(E)²/prod(E).

The two three-column halves have opposite s,t,r and complementary
scalar data. Apply (1) separately to them and add their moments.
For exact algebra, row scaling in the Laurent ring sets s=t=1,
bar(s)=X, bar(t)=Y, bar(r)=(J-rY)/X, with

    r²-(J/Y)r+XZ/Y=0.                                  (2)

This device is used only after choosing X,Y>0. It does not assert
that the scaled rows are physically unitary. All Laurent expressions
are covariant under reciprocal row scaling, and S has weight zero.
No inverse of r or of the discriminant is used. The coefficient of r
in the resulting S vanishes identically in both computations below.

The reduced scalar expression is checked in the splitting algebra
of the modulus cubic

    f(T)=T³-pT²+(W+K)T-K,

using the two relations

    Y²+(X-p)Y+X²-pX+W+K=0,
    X³-pX²+(W+K)X-K=0.                                 (3)

They hold for the actual X,Y,Z since p=X+Y+Z and W+K=XY+XZ+YZ.
All computations are rational or exact polynomial arithmetic. The
nonzero-J reduction clears only powers of 1+k², which cannot vanish.
The verifier regenerates the raw expressions and the factorizations;
the polynomial file is checked output, not an assumed certificate.

## 2. The zero-J stratum

Write z=chi/(2g). Invertibility gives g>0. The permanent identity and
R=0 imply z²=eta=9-p, so g=3z², z!=0 and -3<=z<=3. The critical
equation gives W=z²(z+3)².

First suppose z is different from -3 and -2. At most one of X,Y,Z
can be zero: otherwise W=0 would force z=0 or -3. Relabel to make
X,Y>0, allowing (2). There are no missing moment denominators here.
Indeed L_j=z(3z+9-X_i). If one vanishes, X_i=3z+9; nonnegativity
of the other two moduli gives -3<z<0. Their sum and product satisfy

    Y+Z=-z(z+3),  (3z+8)YZ=-z(z+3)³>0.

Thus 3z+8>0, whereas

    (Y-Z)²=3z(z+2)²(z+3)²/(3z+8)<0,

a contradiction. This argument handles zero correlations and does
not omit a physical pole.

The exact moment calculation and (3) now give

    S=-3888 z(z+2)²(z+3)²
       [K+(z-1)(z+3)³] [z²(z+3)^4+(z+2)²K]²
       /[3z(z+3)^4+(3z+8)K]³.                         (4)

Its denominator is the cube of the product of 3z+9-X_i. The second
squared factor in the numerator is strictly positive: K>=0 and
z²(z+3)^4>0. Therefore S=0 forces K=(1-z)(z+3)³. The modulus
cubic becomes

    f(T)=(T-(z+3))²(T-(1-z)(z+3)).                     (5)

Relabel rows to make X=Y=z+3 and Z=(1-z)(z+3). Phase the rows so
s=t=sqrt(X). Then r is imaginary, because J=0, and direct substitution
in (1) gives P0=L0=z(z+2)(z+3), so lambda0=1 and the permanent is
pi=z lambda0=z. (Return O, `MinimalReconstruction/returns/O_zeroj_unsquared`,
REPORT.md §8; this replaces an earlier argument by coordinate cubics and
permutation cases.) Expanding the permanent of the normalized block
(1;x;y) gives

    x_0y_0+x_1y_1+x_2y_2 = st-pi = (z+3)-z = 3.

Each x_jy_j is a unit complex number, so its real part is at most one;
the three real parts sum to three, so every x_jy_j=1 and y=bar(x).

The complementary half has s'=t'=-sqrt(X), r'=-r and exactly the same
g,z and lambda0=1; st and pi are unchanged, so y=bar(x) there too, in
the same row phases. Thus the complete three rows have the asserted
geometric progression.
The cases excluded at the start give z=-3 => p=0 and z=-2 => p=5.

## 3. The nonzero-J stratum with no poles

*Note (17 Oct 2026): return K (`MinimalReconstruction/returns/K_nonzero_J/REPORT.md`) proves the nonzero-J classification of
§§3–4 more simply, by two signed corner sums, and the Lean proof uses it; §§3–4 below remain an independent second
proof.*

Exchange halves if necessary to make J>0. Put h=1+k². The proved
critical reduction gives

    p=9-4/h, J=8k/h², W=2(16-32h+18h²)/h³, k>0,
    g_±=3(9-p)±J, z_±=-2(1±k)/h.

Here X,Y,Z>0 because J²<=4XYZ. Suppose all six L_j,± are nonzero.
The exact calculation (1)–(3), after clearing nonzero powers of h,
factors the numerator of S as

    -262144 k²(3k²+1)³ A_-³ A_+³ Q(k,K).              (6)

The explicit quartic Q in K and the two A polynomials are given in
`critical_quartic.json`, and regenerated by the square-sum verifier.
They satisfy

    product_j L_j,+ = -16 A_+/h^7,
    product_j L_j,- =  16 A_-/h^7.                    (7)

Thus S=0 requires Q(k,K)=0.

Physical data satisfy K>=Kmin=16k²/h^4. The modulus-cubic discriminant is

    -4(K-K0)(K-Kplus)(K-Kminus),
    K0=4(9k²+1)/h³,
    Kplus/minus=(27k^6+9k^4+17k²+3 ±8kh)/h³.           (8)

Its nonnegativity puts K in [Kmin,smallest root] or between the
middle and largest roots. The root order changes only at k=1/3,1:

    Kplus-K0=(k+1)(3k-1)³/h²,
    Kminus-K0=(k-1)(3k+1)³/h²,
    Kplus-Kminus=16k/h².

All three roots are at least Kmin. In particular

    Kminus-Kmin=(3k²-2k+3)(3k³+k²+k-1)²/h^4.          (9)

The exact sign certificate is `verify_critical_scalar_classification.py`.
It substitutes each allowed K interval affinely into Q and computes
its five degree-four Bernstein coefficients. It uses rational Sturm
root counts on their univariate factors to prove every coefficient
nonpositive throughout each k range. Odd-power factors have no
interior zero and the sign is fixed at an exact rational point;
even-power factors cannot change sign. Denominators have no zeros.
The gcd of the five numerators and the two endpoint coefficients
are checked separately, so no zero is lost at an interval endpoint
or by a coefficient vanishing.

The only common interior-coefficient zero is k=kappa in the lower
interval 0<k<1. By (9) that interval collapses to K=Kmin there.
At k=1/3 the upper interval collapses to K=729/125; the lower
interval is still strictly negative. At k=1 the allowed union is
[1,9], and Q(1,K)=2^30(K-21)(K-5)². These give exactly the three
listed candidates. The cubic (3) gives the stated modulus multisets
at k=1/3 and k=1.

## 4. Physical poles

If some L_j,± vanishes, the norm identity |P_j|²=L_j,±² forces P_j=0.
Relabel rows to place that denominator at j=0, and make s,t positive.
Then Im(P0)=(X-Y)Im(r). Hence either X=Y or Im(r)=0. The first
case has repeated roots in (8); the second has K=Kmin. Thus K is
one of K0,Kplus,Kminus,Kmin.

When z_±!=0, a pole also means X_i=alpha_±=9+g_±/z_±, so
f(alpha_±)=0. The verifier substitutes all four K values in this
equation and factors exactly. The only positive parameter zeros
are k=1/3, k=1, and kappa; it checks that the corresponding K
values are respectively 729/125, 5 and Kmin. In this calculation
3k³-k²+k+1 is strictly positive for k>0, while 3k³+k²+k-1 has
just one positive root. The only case z_±=0 is the minus sign at
k=1; then every L_j,-=g_->0, so it is not a pole.

Thus the same three candidates exhaust the pole strata, completing
the proof of the theorem. ∎
