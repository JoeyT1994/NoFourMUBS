# Independent audit of the balanced four-seed identity

**Audit result:** the exact contraction is correct. Its two coefficients
in `tau=i sqrt(R)` vanish as rational identities in four independent
seeds. The proposed extension to all row partitions is also valid with
the radical-branch argument and accepted fixed-corner exhaustion stated
below. The reconstruction/exhaustion theorems remain accepted external
inputs; this audit does not independently prove them.

Audited files:

- `BalancedFourSeedIdentity.py`, originally replayed before its move from
  `work/balanced_reconstruction_identity.py`;
- `BalancedAllCornersCertificate.py`, independently rerun without writing
  over its JSON receipt;
- the side-constructor equations in `MinimalConstruction/RECONSTRUCTION.md`.

## 1. Direct derivation of the contracted expression

For the selected first three rows put

\[
\mathfrak g(H)=\sum_{j=0}^{5}
 H_{0j}H_{1j}H_{2j}\overline{H_{3j}H_{4j}H_{5j}}.
\]

Write `H=[[E,B],[C,−CQB]]`, with
`Q=E† adj(G)/g`, and let the columns of `B` be `(1,x_j,y_j)^T`.
The rows of `bar(C)` have the same form for the vertical moment side,
which uses `T=6I−E†E` and the **same** `z=(chi+tau)/(2g)`.
This conjugation convention agrees with `SingleRadicalModel`.

For either normalized side define

\[
s=\sum x_j,\quad t=\sum y_j,\quad r=\sum y_j/x_j,
\quad u_x=\prod x_j,\quad u_y=\prod y_j,
\quad\Pi=st-\sum x_jy_j.
\]

The coefficients of `prod_j(v0+x_j v1+y_j v2)` at monomials
`(v0³,v0²v1,v0²v2,v0v1²,v0v1v2,v0v2²,v1³,v2³,v1²v2,v1v2²)` are exactly

\[
1,s,t,u_x\bar s,\Pi,u_y\bar t,u_x,u_y,u_xr,u_y\bar r.
\]

For the horizontal side the ten required moments
`M_pq=sum_j x_j y_j bar(x_j)^p bar(y_j)^q` are

| `(p,q)` | Exact value |
|---|---|
| `(0,0)` | `st−Pi` |
| `(1,0)` | `t` |
| `(0,1)` | `s` |
| `(2,0)` | `r` |
| `(1,1)` | `3` |
| `(0,2)` | `bar(r)` |
| `(3,0)` | `bar(s)r−Pi/u_x` |
| `(2,1)` | `bar(s)` |
| `(1,2)` | `bar(t)` |
| `(0,3)` | `bar(t)bar(r)−Pi/u_y` |

In particular the two less immediate cubic moments have the correct
signs: expanding `bar(s)r` leaves the cross terms `Pi/u_x`, and similarly
for `Pi/u_y`. The code's `divs` are exactly these quotients, since
`Pi/u_x=z lambda1` and `Pi/u_y=z lambda2`.

The first three column contributions to `mathfrak g` are
`1+ac u_x(vertical)+bd u_y(vertical)`. Each last-column contribution has
one minus sign from the product of the three entries of `−CQB`.
It is therefore minus `xy` times the vertical cubic evaluated at
`bar(Q)(1,bar(x),bar(y))`. This proves the displayed contraction,
including its sign and the factor `g³` after clearing `Q`.

## 2. Exact code audit and replay

The code's rational involution `sharp` really substitutes each seed by
its reciprocal, as required on the phase torus. Its cyclic cofactor formula
is the classical adjugate. The code's matrix called `Q` is

\[
E^T\operatorname{adj}(G^T)=g\,\overline Q,
\]

so no adjoint or multiplication-order reversal is missing.

The affine coefficients for `u_x,u_y,Pi` follow by multiplying
`lambda_j=(g+c_j bar(z))/bar(P_j)`, using
`g z=(chi+tau)/2`, `g bar(z)=(chi−tau)/2`, and `|z|²=eta`.
The products of cubic coefficients and moments have degree at most two
in `tau`; reducing `tau²=−R` leaves exactly two coefficients.

The common-denominator bookkeeping is correct. Every composed cubic
has degree three in the completion numerator, hence the common factor
`DQ³`. The left denominator divides `DC` because its only nonconstant
terms use the already included vertical `u_x,u_y`. The final scalar
multipliers correctly clear the denominators of `g³` and `R`. The use of
polynomial exact division introduces no omitted remainder. Flint
accumulator aliasing was checked separately and is harmless.

Independent exact replay, including a second replay of the renamed canonical
verifier without rewriting its JSON, returned **both coefficients identically
zero** in about five seconds. Additional exact checks verified
`G adj(G)=gI`, reality of the invariants, and equality of `g,eta,chi`
for `G` and `T`.

As a separate diagnostic, three generic four-seed examples, each on both
matched sheets, were evaluated at 70 digits. Direct side cubics, all ten
moments, the contracted expression, and the direct balanced column sum
agreed to errors below `5e-69`. These numerical checks are not the proof;
the rational-polynomial cancellation is.

## 3. The opposite delta sign is a column reflection

This step is necessary before treating all algebraic radical choices as
physical on a witness neighborhood. Start with the accepted side matrix
and assume `alpha != 0`. Replacing `delta` by `−delta` gives

\[
\rho'=n-\rho,\quad \rho\rho'=|\alpha|^2>0,
\quad q'=1/\bar q,\quad c_+'=c_-/q,
\quad c_-'=c_+/\bar q.
\]

The quadratic identity for `rho` follows from the accepted row norm and
`|sigma|²=rho`. Put `sigma'=u+mu q'`. Expanding the product of the three
constructed `x` phases gives

\[
u=\mu^3+\rho(\sigma+q^3\bar\sigma)-3\mu\alpha.
\]

Together with
`rho sigma+rho' sigma'=u−mu³+3mu alpha`, this yields
`rho q³ bar(sigma)=rho' sigma'`. It also proves `|sigma'|²=rho'`.
Hence

\[
\beta=\sigma'/(q\bar\sigma)\in\mathbb T,\qquad
\xi'=\beta^3/\xi.
\]

Choose `w'=beta bar(w)`. The new Fourier coefficient matrix satisfies
`M'P(w')=MP(w)J`, where `J` swaps its last two columns. Since
`JF3=F3J`, the constructed side is exactly `S'=SJ`. Other cube roots
cycle the three columns. The vertical version gives a lower-row
permutation after transposition. Thus all signs are genuine side
permutations, on the stated generic neighborhood.

## 4. Certified witness and the all-partition extension

The independent Arb replay covered both matched sheets and all four
pairs of delta signs: **eight matrices and 3200 positional corners**.
It used the exact rational phase parameters
`(-1,20,3/2,−7/10)` under `(1+i t)/(1−i t)`.
The smallest certified corner-R lower bound was

\[
454425187686599944274039927/10^{30}>0,
\]

and the smallest side-rho lower bound was

\[
5289650171323928470967535511/10^{29}>0.
\]

Both rho values on each side are positive, so `alpha != 0` there.
The code makes no unjustified intersection with unit-modulus circles.
Its flatness/Gram residual intervals containing zero are correctly
labelled diagnostics; exact physicality comes from the accepted constructor
and the sign-reflection lemma above. The other cube-root choices only
permute positional corners. Corner invariants are also unchanged by
internal row/column ordering and dephasing.

Strict inequalities and nonzero divisors persist on an open neighborhood
of this torus point. All `2·2·2·3·3=72` radical choices are physical there,
and all their selected three-by-three corners are strict. Such matrices
cannot be Tao: Tao has a Fourier three-by-three block, for which `R=0`.
For each row partition, **fixed-corner exhaustion** therefore identifies
the reframed matrix with one of the two matched completions, up to side
permutations. The selected-partition identity then makes that partition's
balanced sum zero on the entire neighborhood.

For a fixed row partition, take the characteristic polynomial whose roots
are its 72 values over the full radical tower, with multiplicity. Its
coefficients are rational in the four seeds: this follows from iterated
resultants/norms over the monic quadratic and cubic equations. It does not
require the tower to be irreducible. Conjugates must be rationalized
consistently by seed reciprocals, `tau#=−tau`,
`delta#=(g/27)/delta`, and `w#=1/w`.

Every root is zero on the certified neighborhood, so this characteristic
polynomial equals `T^72` there. A rational function in independent complex
seed variables that vanishes on an open part of `T^4` is identically zero
(apply the one-variable identity theorem successively). Thus the same
polynomial is `T^72` identically, and every generic branch value is zero.
Continuity supplies the remaining strict points where an auxiliary
algebraic branch degenerates; the selected physical formula remains
well-defined there. This argument avoids assuming connectedness of the
strict seed domain.

Finally the accepted class-covering theorem transports the **whole set of
row-partition identities** to every non-F6, non-Tao Hadamard. Zero is
preserved by row/column phasings and permutations. F6 is checked directly:
its balanced exponent `2 sum(I)−15` is odd, so cannot be divisible by six,
and the Fourier column sum is zero. Tao remains the explicit exception.

No additional algebraic or scope gap was found in this extension once the
sign-reflection lemma, the full radical multiset, and fixed-corner
exhaustion are included. This proves a Hadamard identity under the accepted
reconstruction inputs; it does not itself prove the separate F3-forcing
claim for MUB triples.
