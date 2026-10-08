# Exact global identities and a maximum-volume phase bound

## Scope

These results hold for every order-six complex Hadamard matrix. They do **not** establish
`M(H)<26 => nu(H)<=0.55`. They provide exact identities that expose which information
is missing from a quantitative MC1 argument, and replace determinant singularities by
a uniformly conditioned choice of a `3+3` split.

The inputs are the definitions of the handoff, the Hadamard equations, F2, and F8.
No classification, smoothness, numerical sample, or unproved Fourier coefficient
vanishing theorem is used in any theorem below.

## 1. Determinants and permanents of complementary minors

Fix any three rows and divide the columns into two triples, giving blocks `A,B`.
Put

\[
d=|\det A|^2,\qquad g=|\det B|^2.
\]

Then

\[
\boxed{|\operatorname{perm}A|^2=(2d-g)/3,
\qquad |\operatorname{perm}B|^2=(2g-d)/3.} \tag{1}
\]

In particular

\[
\boxed{d/2\le g\le2d,\qquad d=0\Longleftrightarrow g=0.} \tag{2}
\]

**Proof.** Use the handoff's `s,t,r,p,J` for `A`. Direct expansion of the
three-by-three determinant and permanent gives

\[
|\det A|^2=27-3p-J,\qquad
|\operatorname{perm}A|^2=9-p-J. \tag{3}
\]

Because `BB*=6I-AA*`, its determinant is `27-3p+J`. This proves the first
identity in (1). Interchanging `A,B` proves the second. Their nonnegative
left sides prove (2). The Laurent-polynomial identities (3) are independently
expanded and compared with integer coefficients in `verify_minor_identities.py`.

Consequently F8 yields the additional exact sum rule, for every row triple `S`,

\[
\boxed{\sum_{|T|=3}|\operatorname{perm}H[S,T]|^2=72.} \tag{4}
\]

Indeed, summing `(2d-g)/3` over the twenty column triples gives `(2*216-216)/3`.

## 2. Universal permanent and reconstruction bounds

Every three-by-three block `A` of a physical Hadamard matrix satisfies

\[
\boxed{|\operatorname{perm}A|^2\le9.} \tag{5}
\]

To prove this, note `|J|<=2 sqrt(XYZ)<=2(p/3)^(3/2)`. If `p<=27/4`, this
implies `J>=-p`. If `p>=27/4`, positivity of `g=27-3p+J` implies
`J>=3p-27>=-p`. Equation (3) therefore gives (5) in both cases.

The handoff's `eta` for `A` is `|perm B|^2`. Equations (1), (2), and (5) give

\[
0\le\eta\le\min\{g/2,9\}.
\]

As a result,

\[
\boxed{R(A)\le\min\{2g^3,36g^2\}.} \tag{6}
\]

For example, on a positive strip `R(A)>=r>0`, one has the explicit bound
`g>=(r/2)^(1/3)`. No reconstruction chart or division by a side denominator
was used to obtain this inequality.

## 3. A determinant-only form of the signed invariant

For any three-by-three matrix `A` whose entries have modulus one, let

\[
P_A=\prod_{ij}A_{ij},\qquad A^{[2]}=(A_{ij}^2).
\]

There is an exact identity

\[
\boxed{\det A^{[2]}=(\operatorname{perm}A)(\det A)
                 -2P_A\overline{\det A}.} \tag{7}
\]

Thus

\[
\boxed{q(A)=2|\det A|^2+
        \frac{\det A\det A^{[2]}}{P_A}.} \tag{8}
\]

**Proof.** Let `e1,e2,e3` be the three even permutation products in the
expansion of `det A`, and `o1,o2,o3` the odd products. Both triples have
product `P_A`. Since each product is unimodular,

\[
\sum_{i<j}e_i e_j=P_A\overline{\sum_i e_i},\qquad
\sum_{i<j}o_i o_j=P_A\overline{\sum_i o_i}.
\]

Writing `E=sum e_i`, `O=sum o_i`, one obtains

\[
\det A^{[2]}=(E^2-O^2)-2P_A(\bar E-\bar O),
\]

which is (7). Multiplying by `det A/P_A` gives (8).

Let `t=|det A^[2]|^2` and `p_A=|perm A|^2`. Taking absolute values in (8)
and using `|q|^2=d^2 p_A` gives

\[
\boxed{4\Re q(A)=d p_A+4d-t.} \tag{9}
\]

For a physical split one may put `p_A=(2d-g)/3`. Therefore the invariant
of the same-row complementary corner has the scalar determinant form

\[
\boxed{R(B)=4d^2p_A-\frac14(d p_A+4d-t)^2.} \tag{10}
\]

Every identity (7)--(10) is replayed as a Laurent-polynomial identity in nine
independent unit phases by `verify_minor_identities.py`.

Equation (8) shows precisely where a proposed exterior-power argument must work:
if `U_{S,T}=det H[S,T]` and `V_{S,T}=det H^[2][S,T]`, then

\[
2\Im q(H[S,T])=2\Im\left(U_{S,T}V_{S,T}/P_{S,T}\right).
\]

Here `U/sqrt(216)` is unitary, but the entrywise phases `P_{S,T}` depend jointly
on `S,T`. They do not disappear under ordinary matrix multiplication or a
unitary change of basis. An unweighted norm identity for `V` alone therefore
does not give the required norm identity for the signed invariant.


The same generic identities also imply the useful seed-only relation

\[
\boxed{4(\Im q(A))^2=R_{\mathrm{poly}}(X,Y,Z,-J).} \tag{10a}
\]

Thus same-row complementary physical corners have the same `X,Y,Z` and
opposite `J`. Writing `u=9-p`, their difference is

\[
R(J)-R(-J)=4J\left(2J^2+(u+6)W-u(u-6)(u-9)\right). \tag{10b}
\]

A maximal-R corner must therefore make the right side nonnegative. The factor
in parentheses does not have a uniform sign on physical Hadamards. Equation
(10a) is included explicitly in the exact Laurent replay.

## 4. An exact Cauchy--Binet contraction of q

Fix a row triple `S=(a,b,c)` and set

\[
L_a=\sum_j\frac{H_{aj}^2}{H_{bj}H_{cj}},\quad
L_b=\sum_j\frac{H_{bj}^2}{H_{aj}H_{cj}},\quad
L_c=\sum_j\frac{H_{cj}^2}{H_{aj}H_{bj}}.
\]

Then

\[
\boxed{\sum_{|T|=3}q(H[S,T])=432+L_a L_b L_c.} \tag{11}
\]

For the proof let `X=H[S,:]` and let the three rows of `Y` be
`Y_ij=H_ij^2/(H_aj H_bj H_cj)`, with `i` ranging over `S`. Formula (8) and
Cauchy--Binet give

\[
\sum_T q(H[S,T])=432+\det(XY^T).
\]

For distinct `i,k` in `S`, the `(i,k)` entry of `XY^T` is the inner product
of two distinct rows of `H` and hence is zero. Its diagonal entries are
`L_a,L_b,L_c`, which proves (11). In particular the signed q values do not
have zero sum separately on each row triple: a genuinely mixed three-row
contraction remains.

## 5. Every row triple has a uniformly conditioned split

For each row triple, choose a column triple `T` maximizing `d=|det A|^2`.
Its same-row complement `B` obeys

\[
\boxed{d\ge54/5,\qquad d/2\le g\le d.} \tag{12}
\]

The first assertion is F8 divided by twenty, and the others are (2) and
maximality. In particular both blocks are invertible. In fact

\[
\boxed{\sigma_{\min}(A)^2\ge3/5,\qquad
       \sigma_{\min}(B)^2\ge6/19.} \tag{13}
\]

**Proof of (13).** Every entry of `C=A^{-1}B` has modulus at most one by
Cramer's rule: the numerator is the determinant of another column triple.
Consequently `||C||_2^2<=||C||_F^2<=9`. Since

\[
A(I+CC^*)A^*=6I,
\]

one gets `sigma_min(A)^2>=6/(1+9)=3/5`. Every entry of `D=B^{-1}A` similarly
has modulus at most `sqrt(d/g)<=sqrt(2)`. Applying the same argument with
`||D||_F^2<=18` gives `sigma_min(B)^2>=6/19`.

This eliminates a determinant conditioning problem for a choice of split that
exists globally. It does not eliminate the collision of the two reconstruction
sheets: a maximum-volume corner can have `R=0` even on a non-Fourier Hadamard.

## 6. Explicit global phase confinement for maximum-volume minors

Assume `M(H)<26`, and choose `A` as in (12). Then

\[
\boxed{\Re q(A)\ge891/50>0,\qquad
       |\arg q(A)|<\arcsin\sqrt{1625/104976}<1/8.} \tag{14}
\]

The argument in (14) is the principal argument near zero, not an argument
modulo pi. The positive-real estimate fixes this sign.

**Proof.** Expanding the real part of q gives

\[
2\Re q(A)=(p-9)(p-18)+(p-15)J-W.
\]

As `W=XY+XZ+YZ-XYZ<=p^2/3`, and

\[
p=(54-d-g)/6,\qquad J=(g-d)/2,
\]

one obtains

\[
\Re q(A)\ge
L(d,g)=\frac{11d^2+4dg+594d-7g^2-54g-2916}{216}.
\]

For `g>=d/2`, the derivative `partial_g L=(2d-7g-27)/108` is negative.
Thus `g<=d` gives

\[
L(d,g)\ge L(d,d)=\frac{2d^2+135d-729}{54}
\ge L(54/5,54/5)=891/50.
\]

Also

\[
|q(A)|^2=d^2(2d-g)/3\ge d^3/3\ge52488/125.
\]

By F2, `4(Im q(A))^2<=M(H)<26`. Consequently

\[
\sin^2(\arg q(A))<\frac{26/4}{52488/125}=\frac{1625}{104976}.
\]

For an entirely rational certification of the last constant in (14), use
`sin x>=x-x^3/6` on `[0,1/8]`. The verifier checks

\[
\frac{1625}{104976}<\frac1{64}-\frac1{12288}
\le\sin^2(1/8).
\]

All twenty row triples therefore have at least one uniformly conditioned minor
whose q phase lies within one eighth of a radian of the positive real axis.
This is a global necessary condition on the target sublevel set. It is not a
bound on the thirty-six entry phases relative to a Fourier representative.

## 7. An exact twelve-contraction formula for the full sum of squares

For a balanced integer matrix `E` of size `r x c` define

\[
T(E)=\Re\sum_{i_1,\ldots,i_r=1}^6\sum_{j_1,\ldots,j_c=1}^6
        \prod_{a=1}^r\prod_{b=1}^c H_{i_a j_b}^{E_{ab}}.
\]

The indices in this definition are unrestricted and may coincide. Put
`T(empty)=1`. Then

\[
\boxed{\sum_{\text{400 corners}}R=\frac1{36}\sum_E c_E T(E),} \tag{15}
\]

with the following complete coefficient table. Rows of each matrix are separated
by semicolons.

| E | c_E |
|---|---:|
| empty | 2052864 |
| `(-3,3); (3,-3)` | 1296 |
| `(-2,2); (2,-2)` | -4320 |
| `(-4,2,2); (2,-4,2); (2,2,-4)` | -12 |
| `(-4,2,2); (2,-3,1); (2,1,-3)` | 72 |
| `(-4,2,2); (2,-2,0); (2,0,-2)` | 36 |
| `(-4,2,2); (2,-1,-1); (2,-1,-1)` | -72 |
| `(-3,0,3); (0,2,-2); (3,-2,-1)` | -144 |
| `(-3,0,3); (0,3,-3); (3,-3,0)` | 24 |
| `(-3,1,2); (1,-2,1); (2,1,-3)` | -72 |
| `(-2,0,2); (0,2,-2); (2,-2,0)` | 72 |
| `(-2,1,1); (1,-2,1); (1,1,-2)` | -24 |

**Exact replay.** The code `verify_global_contractions.py` expands q into its 55
Laurent monomials; q minus its conjugate has 48 monomials and the negative square
has 817. Row and column relabeling reduces these to 25 orbits. Partition-lattice
Mobius inversion replaces injective row and column labels by unrestricted labels.
Two exact identities then reduce the answer:

- a row or column with all exponents zero contributes a free factor 6;
- a row with precisely the exponents `+1,-1` sums by column orthogonality to
  six times the equality constraint on the corresponding column labels;
  the transposed rule uses row orthogonality.

The remaining coefficient dictionary is compared exactly with the table above.
All steps use integer arithmetic. The factor `1/36` converts ordered triples to
unordered triples.

Several terms are familiar moment invariants. If `G_m=H^[m](H^[m])*`, then

\[
T\!\begin{pmatrix}-m&m\\m&-m\end{pmatrix}=\operatorname{tr}(G_m^2),
\]

and the three-vertex cycle term with exponents `+-m` is `tr(G_m^3)`. Other terms
are mixed three-row contractions. No sign was established for their combined
contribution, so (15) is an exact reduction, not a coercive inequality.

## 8. Remaining quantitative obstruction

The facts proved above force phases of selected q values into a small interval,
but they do not propagate those phases to a globally compatible Fourier labeling
of entries. Formula (15) makes the missing issue concrete: mixed three-row
contractions remain after all elementary orthogonality reductions. Equivalently,
in (8), the matrix of inverse product phases `1/P_{S,T}` prevents a direct
Parseval argument for the exterior powers.

An inequality relating these remaining contractions to a distance from the
Fourier orbit, or a compatible Plucker/phase propagation theorem using (12)--(14),
would be new input. No such theorem is proved in this module.

Two exact cautions rule out a simpler, unweighted exterior-algebra shortcut.
Already at `F6`, the minor with rows `(0,2,4)` and columns `(0,1,3)` is zero
(the selected columns 0 and 3 coincide). Thus the linear map
`V -> Im(U elementwise V/P)` has a nonzero kernel even before the imaginary
part is taken; there is no positive lower frame bound for arbitrary `V`.
Furthermore `P` cannot in general be absorbed into separate row and column
phases. At `F6`, `P_ST=omega^((sum S)(sum T))`; for
`S1=T1=(0,1,2)` and `S2=T2=(0,1,3)`, the cross ratio
`P11 P22/(P12 P21)=omega != 1`. A successful coercivity proof must therefore
use that the particular `V` is the third compound matrix of `H^[2]`.
