# Sharp global confinement of the complete affine Fourier sector

## 1. Statement and scope

Let

\[
H(a,b)=F_6\circ\exp\{i(a t_1+b t_2)\},\qquad (a,b)\in\mathbb R^2,
\]

with the masks in the handoff. The results below apply to every matrix
equivalent to any `H(a,b)` or `H(a,b)^T`. There is no restriction to a
neighborhood of the Fourier point, to a chosen branch, or to one fundamental
parameter cell.

Put

\[
\alpha(m)=\arcsin\frac{\sqrt m}{12},\qquad
r(m)=\sqrt{\frac23}\,\alpha(m),\qquad
s(m)=\sin\frac{\alpha(m)}6.
\]

**Theorem 1 (complete sector confinement).** For every matrix in this sector,
if `M(H) <= m < 108`, then

\[
\boxed{\nu(H)\le r(m),\qquad d_F(H)\le s(m).}
\tag{1}
\]

Consequently, at the requested cutoff,

\[
M(H)<26\quad\Longrightarrow\quad
\boxed{\nu(H)<0.358338,\qquad d_F(H)<0.073081.}
\tag{2}
\]

The constants in (1) at `m=26` are optimal over this sector, even after all
row and column permutations and phases are allowed in the definitions of
the distances. They are

\[
\begin{aligned}
0.35833717932519&<r(26)<0.35833717932521,\\
0.07308006387000&<s(26)<0.07308006387001.
\end{aligned}
\tag{3}
\]

**Theorem 2 (global critical point exclusion in this sector).** Every positive
value of `M` on the affine Fourier parameter torus admits arbitrarily nearby
matrices in the same family with strictly smaller `M`. Thus no matrix in
this sector with `M>0` can be a local minimum of `M` on the full Hadamard
set. The same statement holds for the transposed sector.

These theorems do not classify all order-six Hadamard matrices. The
remaining global confinement problem concerns matrices outside these two
equivalence classes of families.

## 2. Exact formula for all 400 corners

Set

\[
x=a+b,\qquad y=a-2b,
\qquad x+y=2a-b.
\tag{4}
\]

The complete multiset of the 400 corner invariants is

* `256` copies of zero;
* `36` copies, for each of the four sign pairs
  `(epsilon,delta) in {+1,-1}^2`, of

\[
36\big[\sin(x+y)+\epsilon\sin x+\delta\sin y\big]^2.
\tag{5}
\]

Different expressions may coincide at particular parameter values; the
counts in (5) are counts of symbolic corner expressions.

It follows immediately that

\[
\boxed{M(H(a,b))=
36\big(|\sin x|+|\sin y|+|\sin(x+y)|\big)^2.}
\tag{6}
\]

There is also the exact sum rule

\[
\boxed{\sum_cR_c(H(a,b))
=5184\big(\sin^2x+\sin^2y+\sin^2(x+y)\big).}
\tag{7}
\]

### Exact verification of the corner identity

This uses the handoff's square identity F2. In the Laurent-polynomial ring

\[
\mathbb Z[\zeta_6][A^{\pm1},B^{\pm1}],\qquad
\zeta_6^2-\zeta_6+1=0,
\]

insert

\[
H_{jk}=\zeta_6^{jk}
A^{\mathbf1_{j\text{ odd},\,k\bmod3=1}}
B^{\mathbf1_{j\text{ odd},\,k\bmod3=2}}.
\tag{8}
\]

For each of the 400 submatrices `B_c`, compute

\[
q(B_c)=\operatorname{perm}(B_c)\det(B_c)^2
\overline{\prod_{i,j}(B_c)_{ij}}.
\]

The last factor is precisely the reciprocal because every entry is a unit
Laurent monomial. The nonzero polynomials `q-conj(q)`, up to overall sign,
are exactly

\[
3\left[
\left(\frac{A^2}B-\frac B{A^2}\right)
+\epsilon\left(AB-\frac1{AB}\right)
+\delta\left(\frac A{B^2}-\frac{B^2}A\right)
\right].
\tag{9}
\]

Each occurs 36 times, and the zero polynomial occurs 256 times. Substitution
`A=exp(ia), B=exp(ib)` turns (9) into
`6i[sin(2a-b)+epsilon sin(a+b)+delta sin(a-2b)]`; F2 gives (5).
Taking complementary column triples is a bijection on the 400 corners, so
the multiset obtained from F2 is the required corner multiset.

The verifier evaluates every coefficient exactly as an integer pair
`c0+c1*zeta_6`. It also verifies the 36 Laurent-polynomial identities
`HH*=6I`. There are no sampled parameters and no interval cover in this
calculation: the identities hold for the entire parameter torus.

For orientation, the zero count also has a direct structural explanation.
There are two row triples of a single parity, giving `2*20=40` zero
invariants. Each of the 18 mixed row triples has 12 column triples
containing a full column pair with equal residue modulo 3; these give the
remaining `18*12=216` zeros. Such a paired-column submatrix can be rephased
to a matrix of the form

\[
\begin{pmatrix}1&1&1\\1&1&z\\1&-1&w\end{pmatrix},
\qquad
q=16-8(z+z^{-1})\in\mathbb R.
\]

The eight column triples with three different residues produce the four
expressions (5), twice each for every mixed row triple.

## 3. The phase lattice and its exact equivalences

The two independent integer reductions in (4) correspond to the lattice

\[
L=\left\{\left(
\frac\pi3(2m+n),\frac\pi3(m-n)
\right):m,n\in\mathbb Z\right\}.
\tag{10}
\]

Every lattice translation of the parameters is an equivalence of matrices,
not merely a symmetry of the scalar formula (6).

To see this directly, index the rows as `j=2r+p`, with
`r in {0,1,2}`, `p in {0,1}`, and columns as `k=s+3t`, with
`s in {0,1,2}`, `t in {0,1}`. Let

\[
d_0=0,\quad d_1=a,\quad d_2=b,\quad \omega=e^{2\pi i/3}.
\]

Then

\[
H_{(r,p),(s,t)}
=\omega^{rs}(-1)^{pt}
\exp\left(ip\left(\frac{\pi s}3+d_s\right)\right).
\tag{11}
\]

For a lattice shift indexed by `m,n`, set `ell=m-n`. In `H(a,b)`:

1. cyclically permute the three odd rows by `r -> r+ell mod 3`;
2. swap columns `1` and `4` if `n` is odd;
3. swap columns `2` and `5` if `ell` is odd.

These operations multiply the odd-row entries in residue class 1 by

\[
\omega^\ell(-1)^n=e^{i\pi(2m+n)/3},
\]

and those in residue class 2 by

\[
\omega^{2\ell}(-1)^\ell=e^{i\pi(m-n)/3}.
\]

They leave every even-row entry unchanged. Their result is exactly the
parameter translation (10). The verifier checks this identity in the
Laurent ring for all 36 possibilities of `m,n mod 6`, which exhaust all
integer cases.

## 4. Uniform reduction of the whole low-invariant torus

Let `M(H)<=m<108`, and write

\[
S=|\sin x|+|\sin y|+|\sin(x+y)|\le\frac{\sqrt m}6.
\]

The sine addition formula implies the three inequalities

\[
\begin{aligned}
|\sin x|&\le|\sin y|+|\sin(x+y)|,\\
|\sin y|&\le|\sin x|+|\sin(x+y)|,\\
|\sin(x+y)|&\le|\sin x|+|\sin y|.
\end{aligned}
\tag{12}
\]

Consequently each of the three absolute sines is at most `S/2`, hence at
most `sqrt(m)/12`. Let `alpha=alpha(m)`. Since `m<108`,

\[
0\le\alpha<\frac\pi3.
\tag{13}
\]

Use (10) to choose representatives `x,y` modulo `pi` in
`[-pi/2,pi/2]`. Then

\[
|x|\le\alpha,\qquad |y|\le\alpha.
\]

The bound on `sin(x+y)` says that `x+y` is within `alpha` of some integer
multiple of `pi`. But `|x+y|<=2alpha<pi-alpha`; therefore only the zero
multiple is possible. We obtain the full, consistent hexagon

\[
\boxed{|x|\le\alpha,\quad|y|\le\alpha,
\quad|x+y|\le\alpha.}
\tag{14}
\]

This step is the global covering argument. It treats every point of the
two-dimensional parameter torus and proves that no second low-invariant
component can escape the indicated Fourier lattice neighborhoods.

## 5. Horizontal phase radius

Invert (4):

\[
a=\frac{2x+y}3,\qquad b=\frac{x-y}3.
\tag{15}
\]

The raw phase matrix is `V_jk=p_j*d_(k mod 3)`. Its horizontal projection is

\[
u_{jk}=\left(p_j-\frac12\right)
\left(d_{k\bmod3}-\frac{a+b}3\right).
\tag{16}
\]

Subtracting row and column phases is an allowed equivalence, so (16) is a
witness in the definition of `nu`. Its exact norm is

\[
\|u\|^2=2(a^2-ab+b^2)
=\frac23(x^2+xy+y^2).
\tag{17}
\]

The hexagon (14) has vertices

\[
(\alpha,0),\ (0,\alpha),\ (-\alpha,\alpha),\
(-\alpha,0),\ (0,-\alpha),\ (\alpha,-\alpha).
\]

The convex quadratic `x^2+xy+y^2` equals `alpha^2` at every vertex.
Therefore it is at most `alpha^2` throughout the hexagon, and

\[
\nu(H)\le\|u\|\le\sqrt{\frac23}\alpha.
\]

Transposition preserves the horizontal conditions and the Frobenius norm,
and `F_6^T=F_6`; hence `nu(H^T)=nu(H)`. This proves the first half of (1)
for both families.

## 6. Column-projector distance

Define the real phase range

\[
D=\max(0,a,b)-\min(0,a,b)
=\max(|a|,|b|,|a-b|).
\]

The function on the right is convex. At all six vertices of (14), it
equals `2alpha/3`, so

\[
D\le\frac{2\alpha}3.
\tag{18}
\]

For the untransposed family, put
`c=(max(0,a,b)+min(0,a,b))/2`, and multiply all odd rows of `F_6` by
`exp(ic)`. This gives an allowed comparison matrix `K`. The normalized
overlap in column residue class `s` has modulus

\[
\left|\frac{1+e^{i(d_s-c)}}2\right|
=\cos\frac{d_s-c}2.
\]

Its projector distance is at most `sin(D/4)`, hence at most
`sin(alpha/6)`.

For the transposed family, multiply row `k` of `F_6` by
`exp(i*d_(k mod 3)/2)`. The entrywise phase differences in any column,
after multiplication of that column by a scalar phase, lie in
`[-D/4,D/4]`. The average of their unit complex exponentials has real
part at least `cos(D/4)`, so its modulus is at least this large. The
same bound follows:

\[
d_F(H(a,b)^T)\le\sin(D/4)\le\sin(\alpha/6).
\]

This proof does not assume that the column-projector distance is
transpose-invariant.

In fact, the displayed transpose comparison gives the stronger bound

\[
d_F(H(a,b)^T)^2
\le\frac49\left[
\sin^2\frac a4+\sin^2\frac b4+\sin^2\frac{a-b}4\right]
\le\frac49\left[
\sin^2\frac\alpha6+2\sin^2\frac\alpha{12}\right].
\tag{19}
\]

The second inequality follows from convexity of the three squared sine
terms on (14): their arguments have absolute value at most
`alpha/6<pi/18<pi/4`, where the second derivative of `sin^2` is positive.
The convex sum takes the same value at all six hexagon vertices.

## 7. Sharpness after minimizing over every equivalence

Let

\[
H_a=H(a,-a),\qquad
0\le a\le a_*:=\frac13\arcsin\frac{\sqrt{26}}{12}.
\]

Equation (6) and the preceding comparisons give

\[
M(H_a)=144\sin^2(3a),\qquad
\nu(H_a)\le\sqrt6a,\qquad d_F(H_a)\le\sin(a/2).
\tag{20}
\]

We prove that both distance bounds are equalities, without assuming that
the visibly closest copy of the Fourier matrix is optimal.

### 7.1 Separation of the dephased Fourier orbit

Dephasing means dividing entries by their first-column and first-row
phases. Every dephased matrix equivalent to `F_6` has sixth-root entries.
Consequently, if such a matrix `K^d` differs from the standard `F_6`, then
at some entry the phase of `F_6/K^d` has circular distance at least
`pi/3` from zero.

All raw phases of the dephased `H_a/F_6` belong to `{0,a,-a}`. Thus, if
`K^d != F_6`, some dephased entry ratio `H_a/K^d` has phase distance at
least

\[
\pi/3-a.
\tag{21}
\]

The exact constant check in the verifier proves `a_*<3/20`. We use the
elementary bounds `sqrt(6)<5/2` and `pi>3` below.

### 7.2 Exact horizontal distance on the extremal curve

Any representation counted in `nu(H_a)` can be pulled back through its
row and column permutations to an expression

\[
H_a=D_L(K\circ e^{iv})D_R,
\]

where `K` is a row and column permutation of `F_6`, `v` is horizontal,
and its norm is unchanged. Define the dephasing operator

\[
(\Delta v)_{ij}=v_{ij}-v_{i0}-v_{0j}+v_{00}.
\]

For every entry, Cauchy--Schwarz gives
`|(Delta v)_ij|<=2||v||`. If `||v||<=sqrt(6)a` and `K^d != F_6`,
(21) would imply

\[
\pi/3\le(1+2\sqrt6)a<6\cdot\frac3{20}<1,
\]

contrary to `pi/3>1`. Thus `K^d=F_6`.

If `V=a(t_1-t_2)` is the raw phase matrix, dephasing now gives
`exp(i Delta v)=exp(iV)`. Entrywise,

\[
|\Delta v-V|\le2\|v\|+a<1<2\pi,
\]

so `Delta v=V` exactly; no logarithm can differ by a nonzero multiple of
`2pi`. Taking horizontal projections yields `v=P_h V`. By (17), its
norm is `sqrt(6)a`. Therefore

\[
\boxed{\nu(H_a)=\sqrt6a.}
\tag{22}
\]

### 7.3 Exact projector distance on the extremal curve

Suppose a Fourier-equivalent comparison `K` has maximal column-projector
distance `r<=sin(a/2)`. After aligning each column by a scalar phase,
the squared Euclidean distance in each column is at most

\[
\kappa=12(1-\sqrt{1-r^2}).
\]

Write `c=sqrt(kappa)`. Each entry phase difference may be chosen in
`[-b,b]`, where `b=2 arcsin(c/2)`. Since

\[
r\le a/2<3/40,
\]

the following rational estimates hold:

\[
c\le\frac52r<\frac3{16},\qquad
b\le\frac{101}{100}c\le\frac{101}{40}r.
\tag{23}
\]

For the first estimate, use
`sqrt(1-r^2)>23/25`, whence
`kappa/r^2=12/(1+sqrt(1-r^2))<25/4`. For the second, integrate
`(1-t^2)^(-1/2)<=101/100` on `0<=t<=3/32`. The verifier checks the
two squared rational inequalities establishing these bounds.

Dephasing changes each entry phase by a sum of four such differences.
If `K^d != F_6`, (21) would imply

\[
\pi/3\le4b+a
\le\frac{101}{10}r+a
<\frac{363}{400}<1,
\]

again impossible. Hence `K^d=F_6`.

For a comparison with `K^d=F_6`, absorb its column phases and write its row
phases as `lambda_i`. Set

\[
A=\sum_{i\text{ even}}\lambda_i,
\qquad B=\sum_{i\text{ odd}}\lambda_i,
\qquad |A|,|B|\le3.
\]

The squared normalized overlaps in the two column classes with raw phase
`+a` and `-a` are

\[
f_\pm=\frac{|A+e^{\pm ia}B|^2}{36}.
\]

Since `cos(a)>0`,

\[
\frac{f_++f_-}{2}
=\frac{|A|^2+|B|^2+2\cos(a)\Re(\overline A B)}{36}
\le\frac{18+18\cos(a)}{36}
=\cos^2(a/2).
\]

At least one projector distance is therefore at least `sin(a/2)`. The
comparison `K=F_6` attains this value, proving

\[
\boxed{d_F(H_a)=\sin(a/2).}
\tag{24}
\]

At `a=a_*`, (20), (22), and (24) attain `M=26`, `nu=r(26)`, and
`d_F=s(26)`. Taking `a` to `a_*` from below proves that neither constant
can be uniformly reduced under the strict assumption `M<26`.

## 8. No positive local minima on the complete parameter torus

Equation (6) is periodic under each of `x->x+pi` and `y->y+pi`.
Work first on the square `[0,pi]^2`. Its diagonal `x+y=pi` divides it
into two triangles. On the first triangle,

\[
T=\{x\ge0,\ y\ge0,\ x+y\le\pi\},
\]

we have

\[
\frac{\sqrt M}{6}=\sin x+\sin y+\sin(x+y).
\tag{25}
\]

The other triangle is carried to this one by
`(x,y)->(pi-x,pi-y)`, which preserves (6).

At an interior point of `T`, the second directional derivative of the
right side in a nonzero direction `(v1,v2)` is

\[
-\sin x\,v_1^2-\sin y\,v_2^2
-\sin(x+y)(v_1+v_2)^2<0.
\tag{26}
\]

It is strictly concave in every direction. For any sufficiently small
symmetric pair of perturbations, at least one value is smaller. Thus no
interior point is a local minimum. On an open edge of `T`, the restriction
is `2 sin(t)`, `0<t<pi`, which is again strictly concave. Hence such an
edge point is not a local minimum either. Every vertex has `M=0`.

This proves that every positive point of the entire parameter torus has
arbitrarily close lower values. Because the matrix map is continuous and
the lower value is strict, these are genuine nearby matrices, even if a
parameterization has redundant descriptions at the point. Equivalence
and transposition preserve `M`, so the same conclusion holds for every
matrix covered by the theorem.

## 9. Exact numerical constants and reproducibility

Run

```sh
python3 verify_fourier.py
```

from this directory. The script uses only the Python standard library and
exits nonzero if any assertion fails. It performs:

1. all 36 Hadamard Gram identities in the Laurent-polynomial ring;
2. all 400 permanent/determinant corner calculations in the same ring;
3. all 36 residue cases for the exact parameter lattice permutations;
4. the horizontal Gram matrix and the six hexagon vertices;
5. exact rational Taylor inequalities giving (3) and all small-angle
   constants used in the sharpness arguments.

For the decimal enclosures, use the alternating sine series through degree
15 for a lower bound and degree 17 for an upper bound, with rational
arguments in `(0,1)`. Comparing their squares with `26/144` brackets
`alpha(26)`. Squaring the proposed rational endpoints brackets `r(26)`;
the same alternating series brackets `s(26)`. No floating-point decision,
transcendental interval dependency, or external symbolic package is used.

## 10. Inputs used and remaining scope

**Inputs from the handoff:** definitions of `F_6`, `t_1`, `t_2`, `M`,
`nu`, `d_F`, and equivalence; the square identity **F2**; invariance of
`R` under equivalence and transposition. The supplied family is also
verified to be Hadamard by exact arithmetic in the script.

**Not used:** F1, the gauge conversion F3, the certified local lemma F4,
local tangent information F5, floating-point evidence F6, the four-seed
chart F7, or Cauchy--Binet F8. In particular, the phase lattice and full
parameter coverage are proved explicitly here.

**Remaining gap toward the user's unrestricted theorem:** the supplied
facts do not say that all order-six Hadamard matrices belong to the affine
Fourier or transposed affine Fourier sector. No such classification is
claimed. The results above exclude these sectors completely as possible
counterexamples, with sharp constants substantially below the requested
radius.
