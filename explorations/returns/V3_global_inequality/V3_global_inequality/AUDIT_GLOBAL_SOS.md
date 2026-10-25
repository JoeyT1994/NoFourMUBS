# Independent audit of the global S/L certificate

## Verdict

**AUDITED / PASS.** The two exact identities, together with the stated
single-matrix Fourier-vanishing theorem and the explicit Tao check, prove

\[
\boxed{S(H)\ge100\,L_{\rm tot}(H)}
\]

for every order-six complex Hadamard matrix.  No MUB atlas, Stage C result,
parametric coverage assumption, or numerical sampling is needed.

The audit checks the interpretation of the moments, the numerical
normalizations, positivity of the squares, provenance of the reduction
relations, the justification of rational elimination, and both branches
of the non-Tao/Tao split.  It does not infer a mathematical inequality
from a floating-point optimization result.

## 1. Exact runs completed independently

I ran the default invocation

```sh
python work/global2_moment/final/verify_S_D.py
```

to completion.  It took 90.370 seconds in the present environment and
returned `PASS`.  This invocation regenerated all reduction relations;
it did not read a cached pickle, numerical Gram matrix, or SDP solution.
Its exact table sizes were:

| Stage | Source equations | Moment coordinates | Rank |
|---|---:|---:|---:|
| Original single-matrix relations | 8871 | 909 | 897 |
| Additional weight-twelve relations | 33821 | 3443 | 3406 |
| Non-Tao zero products | 29 | 27 | 3 |

It then independently regenerated the local Laurent polynomial for the
corner discriminant, checked the fifteen-square identity coefficient by
coefficient, verified the alternative covariance expression for the
square defect, and checked Tao's invariants exactly.

I also independently read and ran

```sh
python work/global2_stability/verify_mixing_sos.py
python work/global2_stability/verify_tao.py
```

Both returned `PASS`.  The mixing verifier uses three explicitly printed
seven-row contractions and no external table.  The separate Tao verifier
works directly in the Eisenstein integer ring and does not use the local
signature expansion from `verify_S_D.py`.

I additionally transcribed all named feature definitions and the fifteen
rows of the written table independently into `verify_feature_table.py`.
That exact standard-library check confirms that every expanded charge
coefficient, every positive integer weight, and the displayed slack agree
with `S_D_certificate.json`.  It returned `PASS`.  During this written
audit, a strict-comparison sign at `D_sym=0` was identified in the original
version of equation (12); the author corrected it to a non-strict
inequality and stated strictness only when `D_sym>0`.  The identities and
main theorem were unaffected.

## 2. Conventions that matter

The injective moment is the real part averaged over uniformly injective
row and column labels, and over the two orientations `H` and `H^T` with
equal probability.  This last average is essential.  It makes
transposition of an exponent array a valid canonicalization, but means
that the defect entering the certificate is

\[
D_{\rm sym}(H)=\frac{D_{\rm sq}(H)+D_{\rm sq}(H^T)}2.
\]

The audit does **not** replace this quantity by the unsymmetrized row
defect.  The final proof uses the same `D_sym` on both sides of its two
inequalities.  The corner sum `S` and total mixing defect `L_tot` are
already invariant under matrix transposition.

The normalized character is

\[
g(a)=\frac16\sum_{c=0}^5\prod_iH_{ic}^{a_i},
\qquad \sum_i a_i=0.
\]

For a uniformly selected column `z`, put

\[
Y_a(z)=g(a)z^{-a},\qquad
X_a(z)=Y_a(z)-|g(a)|^2.
\]

Here the row ordering and the choice between `H` and `H^T` are also
averaged.  Directly,

\[
\mathbb E_zY_a=|g(a)|^2,
\qquad
\mathbb E_z[Y_a\overline{Y_b}]
=g(a)g(-b)g(b-a),
\]

and therefore

\[
\mathbb E_z[X_a\overline{X_b}]
=g(a)g(-b)g(b-a)-|g(a)|^2|g(b)|^2.
\tag{A}
\]

These are exactly the noncentered and centered Gram entries implemented
in the two certificates.  Every printed positive term is consequently
the expectation of an absolute square of an explicit function.

## 3. Corner-sum normalization

The verifier expands

\[
\Psi(B)=\operatorname{perm}(B)\det(B)^2/\prod_{ij}B_{ij}
\]

from three permutations.  The permanent permutation has coefficient one;
the two determinant permutations contribute their signs.  Dividing by
the product subtracts one from every local exponent.  This correctly
produces the 55-term Laurent polynomial.

For unit entries, conjugation negates every Laurent exponent, so
`Delta=Psi-conj(Psi)` is the 48-term polynomial in the verifier.  Since
`Delta=2i Im Psi`,

\[
-\Delta^2=|\Delta|^2=4(\operatorname{Im}\Psi)^2.
\]

The 817-term expansion is therefore the required discriminant square,
with no missing factor of four.  This polynomial is invariant under
permuting its three rows or its three columns.  The uniform injection
average contains each positional corner exactly `(3!)^2` times; hence

\[
S=400\,\mathbb E_{\text{injective }3\times3}[-\Delta^2].
\tag{B}
\]

The main verifier uses (B) directly.  It does not rely on the earlier
twelve-moment table, whose different unrestricted-index normalization
could otherwise have concealed a factor error.  Complementing the three
column labels in the supplied side-signature identity merely permutes
the 400 summands, so the geometric corner definition and (B) agree.

## 4. Defect normalization and index multiplicities

Write

\[
p_{ij;kr}=\left|\frac16\sum_c
 H_{ic}H_{jc}\overline{H_{kc}H_{rc}}\right|^2.
\]

Parseval gives `sum_k p_ij;kr=1`.  Thus each mixing defect is a sum of
`p(1-p)`, not a sum of raw unnormalized moments.

For the square defect, only two nontrivial equality patterns remain:

- `ii;rr`, with `i!=r`: 30 ordered assignments;
- `ii;kr`, with all three indices distinct: 120 ordered assignments.

If a positive and negative label coincide in any other way, row
orthogonality makes the corresponding probability zero or one, so its
contribution to `p(1-p)` is zero.  Consequently, for
`q_2=(2,-2,0)` and `q_3=(2,-1,-1)`,

\[
D_{\rm sym}=30\,\mathbb E|X_{q_2}|^2
             +120\,\mathbb E|X_{q_3}|^2.
\tag{C}
\]

Equivalently,

\[
D_{\rm sym}=30-30\,\mathbb E|g(q_2)|^4
               -120\,\mathbb E|g(q_3)|^4.
\tag{D}
\]

The code checks (C) and (D) against one another exactly.  The constant 30
in (D) is correct: the six trivial square products account for the
difference from the 36 in the original definition.

For `L_tot`, the corresponding nontrivial multiplicities are 30, 240,
and 360 for the two-label, three-label, and four-distinct-label types.
There are 66 trivial probability-one entries in the full four-index
array.  These counts agree with both the direct quartic-moment definition
and the standalone mixing verifier.

## 5. Global mixing identity

With

\[
\begin{aligned}
a&=(0,0,0,0,-2,2),&
a'&=(0,0,0,-2,0,2),\\
b&=(0,0,-2,0,1,1),&
b'&=(0,0,0,-2,1,1),
\end{aligned}
\]

the independently replayed identity is

\[
\boxed{6D_{\rm sym}-L_{\rm tot}
=30\mathbb E|X_{a'}-X_a|^2
 +90\mathbb E|X_b+X_{b'}|^2
 +135\mathbb E|X_a|^2.}
\tag{E}
\]

The standalone script obtains zero residual after three explicit
seven-row orthogonality contractions, with coefficients `25/3`, `200/3`,
and `100`.  Every expectation on the right of (E) is nonnegative.  No
Fourier-vanishing or non-Tao hypothesis is used here.

As a separate normalization diagnostic, I also evaluated both sides
directly over all 720 row permutations and all six selected columns,
including the transpose average, on an exact Tao representative and an
independently generated generic Hadamard.  These numerical checks agreed
to approximately `10^-14`; they are supplementary diagnostics only, not
part of the exact proof.

## 6. Provenance and validity of the moment reductions

For a balanced array with an order-one row and `r<=6` distinct row
labels, column orthogonality gives

\[
(7-r)m(A)+\sum_{j\ne i}m(A_{i\to j})=0.
\]

For a formal seventh row, the six other rows exhaust the available
labels, leaving

\[
\sum_{j\ne i}m(A_{i\to j})=0.
\]

Only arrays with at most six rows are evaluated.  The formal seven-row
objects name true relations; they do not introduce nonexistent
seven-element injections.  The weight-twelve generator explicitly checks
row and column balance, seven formal rows, an order-one first row, and
the stated column-order conditions before forming each relation.

Products of normalized characters sample columns independently, with
replacement.  Grouping by equality pattern gives the exact coefficient
`(6)_k/6^n` for a partition with `k` blocks among `n` character factors.
The code implements this coefficient, including the terms with repeated
columns.  Deleting zero rows or columns is legitimate because a marginal
of a uniform injection is again a uniform injection.

### Why the rational elimination proves implications

An exact zero residual alone would not suffice to justify an arbitrary
substitution table.  The elimination procedure has the additional
properties needed here:

1. It selects `r` **original integer source equations** whose pivot minor
   is nonsingular modulo a prime.  That integer minor is consequently
   nonzero over the rationals.
2. The candidate projection leaves the other `N-r` coordinates equal to
   their own free coordinate and rewrites each pivot coordinate only in
   terms of the free coordinates.
3. It checks, in exact integer/rational arithmetic, that every selected
   source equation annihilates the candidate projection.

Writing the selected equations as `A_P x_P+A_F x_F=0`, the invertibility
of `A_P` and the identity action on free coordinates force the unique
rewrite `x_P=-A_P^{-1}A_F x_F`.  Thus every substitution is a consequence
of valid source equations.  Modular computation only proposes the
coefficients and selects an independent subset; the final implication
is exact over the rationals.  Unselected source equations may impose
additional restrictions but cannot invalidate these implications.

## 7. Non-Tao hypothesis and complete coverage

The additional zero relations are expectations of

\[
|g(\alpha)|^2|g(q)|^2,
\qquad \alpha=(1,1,1,-1,-1,-1),
\]

for 29 explicitly regenerated balanced charges `q`.  They vanish for
every row ordering of a non-Tao Hadamard by the single-matrix
Fourier-vanishing theorem.  This hypothesis applies also to the
transpose orientation: the explicit Tao representative is symmetric,
so its equivalence class is closed under transposition.

I checked the geometric input in Sections 3.3--4 of the supplied primary
paper.  Its single-matrix exact identity is replayed by `e.check_pair()`
in the main verifier.  The identity yields the dichotomy that either all
permutations of `g(alpha)` vanish or `H circ H` is Hadamard.  The remaining
classification is elementary: Newton identities for six unit phases
with first and second power sums zero give two rotated cube-root
triples; the cubed matrix has a common three-column support if it is
nonconstant; the resulting two restricted row classes would span
orthogonal subspaces of dimensions at least two in `C^3`, a contradiction.
The resulting cubic matrix is then classified by a five-cycle, giving
Tao's equivalence class.  I found no gap in these steps and no dependency
on a MUB atlas or Stage C.

On the non-Tao branch the regenerated certificate gives

\[
\boxed{
818002268369\,S
-508108391299152\,D_{\rm sym}
=\sum_{j=1}^{15}w_j\,\mathbb E|Z_j|^2,
\qquad w_j\in\mathbb Z_{>0}.}
\tag{F}
\]

Every `Z_j` is printed explicitly in the JSON certificate as an integer
linear combination of the noncentered functions `Y_a`.  The verifier
reconstructs its Gram expansion using (A)'s noncentered part; it does not
trust the LP columns or the discovery basis.

The exact numerical slack is

\[
508108391299152-600\cdot818002268369
=17307030277752>0.
\]

Since `D_sym>=0`, equation (F) proves `S>=600D_sym` on this entire branch.

The omitted Tao branch is checked separately in exact arithmetic:

\[
S=87480,\qquad D_{\rm sym}=\frac{45}{2},\qquad
L_{\rm tot}=\frac{225}{2}.
\]

The independent Tao script regenerates all 400 signatures and all 1296
raw mixed moments.  Its discriminant histogram is forty zeros and 360
copies of 243.  Thus both `S>=600D_sym` and `S>=100L_tot` hold there as well.

## 8. Final implication and scope

The two proved global comparisons have the same middle quantity:

\[
S\ge600D_{\rm sym},\qquad L_{\rm tot}\le6D_{\rm sym}.
\]

They imply `S>=100L_tot`, including the Fourier case where the defects
vanish.  There is no division by a potentially zero quantity, no removal
of boundary strata, and no unproved assertion that local neighborhoods
cover the Hadamard space.

The proof supports the stated coefficient 100.  It does not establish
the conjectured sharp universal coefficient `2304/11`, even though the
explicit Diţă family supplies that upper bound on any possible sharp
coefficient.
