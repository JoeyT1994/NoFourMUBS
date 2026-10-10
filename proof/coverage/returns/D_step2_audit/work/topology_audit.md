# Step 2 topology audit and a route without radical branch analysis

## 0. Scope and verdict

This report audits `MINIMAL_PROOF.md` §0 and Step 2, `A_deltoid/CONNECTEDNESS.md`,
`A_deltoid/SHEETS_TOPOLOGY.md`, and the independent
`B_exact_quotient/quotient_coverage/QUOTIENT_COVERAGE.md`. It reads the MC statements
and the reconstruction specification as mathematical data. It does not treat
the dossier's declarations of completeness as Lean theorems.

**Verdict:** the topological implications in those files are correct conditional
on the stated reconstruction facts and the positive-maximum census. I found no
counterexample to sheet parity, quotient continuity, the Fourier joining family,
or the quotient phase metric. In particular, the qualification at the auxiliary
sign singularity `s=0` is essential and is correctly included in both returns.

The files do **not** establish that the seed domain `S={R>0}` is connected. They
prove that every component of `S` contains a positive local maximum, and that
the **quotient images** of those components meet at a common class. The maximum
census gives at most eighteen seed components, not one. No connectedness claim
about `S` is needed.

There is a substantial simplification for the requested formalisation:

1. Replace branch-cut continuity with a closed polynomial completion relation
   whose matrix factor is compact.
2. For direct `Inputs.covered`, work with a finite Record union which is clopen
   in the full Hadamard quotient. The stated all-Hadamard boundary condition
   supplies exactly this property.
3. Supply the finitely many maximum classes as anchors and the Fourier class
   separately. This removes Tao isolation, the maximum-orbit sheet calculation,
   and the Fourier joining argument from that direct route.

These simplifications remove topological and presentation obligations. They do
not prove the new global reconstruction geometry from upstream Lean.

## 1. A polynomial replacement for the side invariant

For a complex `3×3` matrix `B`, define on **all** matrices

\[
\Phi(B)=-\operatorname{perm}(B)\det(B)^2
             \prod_{i,j=0}^2\overline{B_{ij}}.
\tag{1}
\]

This is a polynomial in the real and imaginary entries of `B`, so it is
continuous everywhere. If the entries are phases and `B` is invertible, then

\[
\Phi(B)=|\det B|^2\Theta(B),\qquad
\Theta(B)=-\frac{\operatorname{perm}(B)\det(B)^2}
                 {|\det B|^2\prod B_{ij}}.
\tag{2}
\]

Thus the signature used below has no inverse determinant and is defined even
at singular matrices. On an actual side with Gram determinant `g`, the usual
identities give `Phi(B)=g Theta(B)`.

### Lemma 1.1. Exact symmetries

On phase matrices, `Phi` is unchanged by row phases, column phases, row or column
permutations, and transposition; conjugation conjugates its value.

**Proof.** If the product of all row and column phase multipliers is `t`, the
permanent gains `t`, the squared determinant gains `t²`, and the conjugate entry
product gains `bar(t)³`. Their product is one. A permutation changes the
determinant sign, which disappears after squaring; the other two factors are
unchanged. Transposition preserves the three factors. Conjugation conjugates
each factor. All statements are finite polynomial identities. The independent
verifier `../certificates/verify_topology.py` checks their Laurent coefficient
versions for every row/column permutation, both with and without transpose.
The row and column weights of every Laurent monomial are exactly zero. ∎

This lemma proves the symmetry algebra without selecting any square or cube
root. The relevant relation to the supplied formula is

\[
2\Phi(B_+)=\chi+i\sqrt R,\qquad
2\Phi(C_+)=\chi-i\sqrt R.
\tag{3}
\]

The signs in (3) agree with `SHEETS_TOPOLOGY.md` §1, since `g>0` and
`Theta(B_+)=(chi+i sqrt(R))/(2g)`.

## 2. Compact matrices and the quotient

Let `H` be the subset of `C^(6×6)` satisfying unit-modulus entries and
`A A*=6I`. Let `D` be its globally dephased subset, with first row and column
equal to one. Let `Q=H/Equivalent`, with the quotient topology.

### Lemma 2.1. `H` and `D` are compact

The unit-entry phase torus is a finite product of circles and is compact. Every
Hadamard equation is the zero set of a continuous real or complex polynomial,
so `H` is closed in that torus. The first-row and first-column equations are
closed, so `D` is closed in `H`. Closed subsets of compact spaces are compact. ∎

### Lemma 2.2. A finite quotient presents `Q`

Define the dephasing map

\[
d(A)_{ij}=A_{ij}A_{00}\overline{A_{i0}}\overline{A_{0j}}.
\tag{4}
\]

For phase matrices this is the usual row/column rephasing, expressed without
division. It is continuous, takes `H` into `D`, and fixes `D`.

The group `S6×S6` acts on `D` by permuting rows and columns and then applying
`d`. The action law follows from cancellation of all row and column phases in
(4). Two elements of `D` are Hadamard-equivalent exactly when they are in the
same orbit of this finite action. Consequently `Q` is homeomorphic to
`D/(S6×S6)`.

For a fully elementary Hausdorff argument, choose the Frobenius distance `d0`
on `D` and set

\[
d_1(A,B)=\max_{\gamma\in S_6\times S_6}
             d_0(\gamma A,\gamma B),\qquad
d_Q([A],[B])=\min_\gamma d_1(A,\gamma B).
\tag{5}
\]

The maximum is a metric with the original topology: it is continuous, bounds
`d0` from below, and consists of finitely many continuous distances. The action
is isometric for `d1`. Hence the finite minimum is a genuine orbit metric;
zero distance means equal orbits, and composition of the isometries proves the
triangle inequality. The quotient map is continuous, and the induced continuous
bijection from the compact topological quotient to this metric quotient is a
homeomorphism. Therefore `Q` is compact Hausdorff. ∎

This suffices for Step 2 and the Record argument. It does not require the
horizontal lattice metric. That metric is audited independently in §8 below.

## 3. A closed relation gives quotient continuity

Let `T4=(S1)^4`, with a seed `s=(a,b,c,d)` defining the literal corner

\[
E(s)=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

Use the continuous real seed functions `chi(s)` and `R(s)` from
`MinimalConstruction/RECONSTRUCTION.md` §1; put `S={s:R(s)>0}`.
For `A∈D`, write its block decomposition as `[[E_A,B_A],[C_A,D_A]]`.
Define

\[
\begin{split}
M_+(s,A)\quad\Longleftrightarrow\quad
&E_A=E(s),\\
&2\Phi(B_A)=\chi(s)+i\sqrt{R(s)},\\
&2\Phi(C_A)=\chi(s)-i\sqrt{R(s)}.
\end{split}
\tag{6}
\]

Here the real square root is its nonnegative continuous function; no complex
root selection occurs. Restricting to `S` fixes the intended strict sign.

The new **local geometry obligation** can be stated as:

> For every `s∈S` there exists `A∈D` with `M_+(s,A)`, and any two such
> matrices are `Equivalent`.

This is weaker than MC2–MC4: it does not demand formulas, root-choice rules,
side orbits outside the matched fiber, or a census of nonmatched exceptions.
MC2–MC4 imply it using the side-signature identities and forced lower block.
It is not proved by compactness and it must not be hidden in an assertion that
a named constructor is Hadamard. Existence and uniqueness are both needed.

### Lemma 3.1. The matched relation is closed over `S`

All expressions in (6) are continuous on `S×D`. Matrix extraction is linear,
`Phi` is polynomial, and `chi`, `R`, and the real square root are continuous.
Each equality is the inverse image of the closed zero set. Their finite
intersection is closed. No denominator, product-regular guard, or auxiliary
root-cut assertion is used. ∎

### Lemma 3.2. Projection along a compact factor is closed

Let `Z` be any topological space, `K` compact, and `C⊂Z×K` closed. Then its
projection to `Z` is closed.

**Proof.** Suppose `z0` is not in the projection. For each `k∈K`, the point
`(z0,k)` belongs to the open complement of `C`. Choose product neighborhoods
`U_k×V_k` disjoint from `C`. A finite collection of the `V_k` covers `K`.
Intersect the corresponding finitely many `U_k` to obtain an open neighborhood
`U` of `z0` with `U×K` disjoint from `C`. Thus the complement of the projection
is open. ∎

### Lemma 3.3. Fiber existence and uniqueness imply a continuous class map

Assume the local geometry obligation. Choose any `A_s` in its nonempty fiber
and define `f(s)=[A_s]∈Q`. Fiber uniqueness makes this independent of choice.
For any closed `F⊂Q`, one has exactly

\[
f^{-1}(F)=\pi_S\bigl(M_+\cap(S\times q^{-1}(F))\bigr).
\tag{7}
\]

The relation on the right is closed by Lemma 3.1 and continuity of `q:D→Q`.
Its projection is closed by compactness of `D` and Lemma 3.2. Hence inverse
images of closed sets are closed, so `f` is continuous. ∎

This is a complete proof of continuity conditional only on local geometry.
It avoids even proving that a particular formula agrees with a locally
analytic branch. No global or local choice of individual phase roots is needed.

## 4. Every strict component contains a local maximum

### Lemma 4.1. Component maximum lemma

Let `K` be compact and locally connected, `R:K→R` continuous, and
`S={x:R(x)>0}`. Every nonempty connected component `C` of `S` contains a
point which is a local maximum of `R` in `K`.

**Proof.** Because `S` is open and locally connected, its components are open
in `S` and therefore in `K`. On the closure of `C`, continuity gives `R≥0`.
Suppose a boundary point `x` had `R(x)>0`. A connected open neighborhood
`U` of `x` lies in `S`; it meets `C` because `x∈closure(C)`. Connectedness of
`U∪C` places `U` in the same component `C`, contradicting that `x` is on the
boundary of the open set `C`. Therefore `R=0` on that boundary.

The closure of `C` is compact. Choose `y∈C`, so `R(y)>0`, and maximize `R`
on its closure. The maximizer has value at least `R(y)>0`, hence is not on
the zero boundary; it belongs to `C`. Since `C` is open, it is a local
maximum in `K`. ∎

This applies to `K=T4`, a compact locally path-connected manifold. It requires
neither a gradient flow nor nondegeneracy of any critical point.

## 5. Direct coverage: the smaller topological target

### Lemma 5.0. A stronger compact-superlevel principle

Let `P` be any compact topological space, `r:P→R` continuous, and
`S={p:r(p)>0}`. If `U⊂S` is clopen in `S` and contains every positive
ambient local maximum of `r`, then `U=S`. No local connectedness assumption
is needed.

**Proof.** If `B=S\\U` is nonempty, then it is open in `P` because it is open
in the open set `S`. Its closure is compact. Choose a point of `B` and
maximize `r` on that closure; the maximizing value is positive. The maximizer
therefore belongs to `S`. Since `B` is relatively closed in `S`, every point
of its ambient closure which lies in `S` belongs to `B`. Thus the maximizer
belongs to `B`. The maximum over `closure(B)` is an ambient local maximum
because the open set `B` is a neighborhood contained in that closure.
It must belong to `U` by hypothesis, contradicting its membership in `B`. ∎

Applying this lemma to `U=f^{-1}(W)` proves the direct coverage propagation
below without connected components. It is the argument implemented in
`../lean/TopologyCore.lean`. The component argument is retained because it
also explains the original full-connectedness proof.

Let `W⊂Q` be clopen in the **full** quotient, invariant under conjugation
and transposition, and contain `[F6]`. Let `P⊂S` be a finite set containing
every positive local maximum of `R`. Assume

\[
f(P)\subseteq W.
\tag{8}
\]

The separate Step 1 theorem permits `P` to be the eighteen exact maximum
seeds. Alternatively, before orbit reduction, all 144 finite seed maps of
the exact maximum are harmless redundant anchors.

The needed **global reach obligation** is only:

> Every non-Tao Hadamard class is `[F6]`, or is the conjugate, transpose,
> conjugate-transpose, or identity image of `f(s)` for some `s∈S`.

The original matched two-sheet reach is stronger and implies this obligation.
If formulated using positive and negative polynomial fibers, conjugation
converts a negative fiber at `s` into a positive one at the conjugated seed,
by `Phi(bar B)=bar Phi(B)` and conjugation invariance of `chi,R`.

### Lemma 5.1. Component propagation

For any component `C` of `S`, the set `f(C)` is connected by continuity.
Lemma 4.1 gives a maximum `p∈C∩P`, hence `f(C)` meets `W` by (8). A connected
set meeting a clopen set is contained in that set: otherwise its intersections
with `W` and its complement form two disjoint nonempty relatively open sets.
Thus `f(C)⊂W`. Components cover `S`, so `f(S)⊂W`. ∎

### Theorem 5.2. Direct coverage

The assumptions in this section and local geometry imply that every non-Tao
Hadamard class belongs to `W`.

**Proof.** Its Fourier case belongs by assumption. Every other case is a
permitted symmetry of a point of `f(S)`, which belongs by Lemma 5.1 and
symmetry invariance of `W`. ∎

Unlike full connectedness of `X`, this theorem needs no proof that `f(S)`
avoids Tao, no isolation theorem for Tao, no equality of the maximum anchor
classes, and no joining sequence at Fourier. The all-Hadamard Record-boundary
hypothesis in `MINIMAL_PROOF.md` gives clopenness in full `Q`; there is no need
to weaken that useful conclusion to relative clopenness in `X`.

### Lemma 5.3. All-Hadamard boundary transfer gives globally clopen `W`

For finitely many compact, full-dimensional horizontal regions `Omega_i`,
form the quotient images `R_i` of all Hadamards represented by their phase
regions and the images `U_i` of their interiors. The `R_i` are compact, hence
closed in Hausdorff `Q`. The `U_i` are open: a sufficiently small phase
perturbation splits into its horizontal projection, which stays inside the
region, and row/column phases, which are absorbed by equivalence.

If every actual Hadamard represented on every boundary has a representative
inside one of the regions, then `union_i R_i = union_i U_i`. The left side is
closed by finiteness, the right side is open. Adding the finite closure under
the four symmetries preserves the reasoning and yields symmetry-invariant
`W`. This proof applies to all classes, including Tao if a source happens to
contain it. ∎

If a future certificate checks the boundary condition only for non-Tao
Hadamards, this lemma gives only relative clopenness; one must then restore
Tao avoidance or separately prove global clopenness. The supplied hypothesis
is the stronger all-Hadamard version.

## 6. Audit of exact sheet parity and the maximum anchor

This section concerns the full connectedness route; it is optional for §5.

`SHEETS_TOPOLOGY.md` proves sheet parity using side uniqueness **at a fixed
intrinsic invariant**, not merely the assertion that there are two sides.
That qualification is necessary. Lemma 1.1 and the matched values (3) show:

- Corner row/column permutations and rephasing preserve the sheet.
- Transposition exchanges `B` and `C^T`, so reverses the sheet.
- Conjugation reverses the sign of the imaginary signature, so reverses the
  sheet.

Side uniqueness identifies the sides and the forced lower block identifies
the completion. Thus the stated law

\[
[H_\sigma(Ls)]=\mathcal C^\kappa\mathcal T^\tau
                    [H_{(-1)^{\kappa+\tau}\sigma}(s)]
\tag{9}
\]

is correct conditional on those algebraic premises.

For the exact maximum seed, use the integer exponent matrix

\[
V=\begin{pmatrix}0&0&0\\0&1&2\\0&-1&-2\end{pmatrix},\qquad E_{ij}=x^{V_{ij}}.
\]

Conjugation on the phase circle is the row swap `(0,2,1)`. Reordering rows
as `(2,0,1)` and columns as `(1,2,0)` and then re-dephasing gives `E^T`.
Both are identities for arbitrary nonzero `x`, using `bar x=x^-1` for the
conjugation identity. The resulting 36 pure corner-permutation maps produce
eighteen integer coefficient vectors. Every transpose/conjugation coset has
the same set of vectors. Therefore pure sheet preservation alone identifies
the positive completion class at every maximum, provided Step 1 places every
maximum in that orbit.

The new exact verifier regenerates all eighteen vectors and their explicit
row/column witnesses in `../certificates/topology_receipt.json`. It does not
certify that these are all maxima; that remains the independent Step 1 input.

The source's older shortcut “MC5 makes any possible sheet swap harmless”
would be insufficient by itself, because it moves to the conjugated seed.
The current source explicitly repairs that shortcut, so it is not an
unresolved error in the current connectedness argument.

## 7. Full connectedness of `X` and the Fourier joining family

Assume additionally that Tao is isolated, every maximum has the same positive
class `k`, and the global reach uses only `f(S)` and its conjugate plus Fourier.

### Lemma 7.1. The positive image avoids isolated classes

A fixed Hadamard equivalence class has finitely many dephased corner seeds.
For instance, each ordered triple of rows and columns determines the four
cross-ratio entries, giving at most `(6·5·4)²` possibilities. Row and column
phases cancel from those ratios.

If `f(s0)` were an isolated class, continuity would force `f` to be constant
on a nonempty open subset of `S`. Every matrix in the defining fiber has the
literal corner `E(s)`, so all seeds in that open set would belong to the fixed
finite corner set. A nonempty open subset of the four-dimensional phase torus
is infinite (vary one phase in a small arc), a contradiction. Hence `f(S)`
avoids all isolated classes, in particular Tao. ∎

### Lemma 7.2. `A=f(S)` is connected

Each component image is connected and contains `k`, by Lemma 4.1 and the
maximum class statement. Their union is therefore connected. Its conjugate
`B` is connected as well, and the reach assumption gives
`X=A union B union {[F6]}`. ∎

### Lemma 7.3. An exact nonexceptional Fourier degeneration

For `omega=exp(2 pi i/3)` and `F3=(omega^(ab))`, let

\[
H(t)=\begin{pmatrix}F_3&F_3\\F_3D(t)&-F_3D(t)\end{pmatrix},\qquad
D(t)=\operatorname{diag}(1,e^{it},1).
\tag{10}
\]

Entries are phases. Block multiplication gives `H(t)H(t)*=6I`: the two
off-diagonal blocks cancel, and each diagonal block is `2F3 F3*=6I`.
At `t=0`, this is `F2 tensor F3`. In zero-based indices `i=3p+a`, `j=3q+b`,
the permutations

\[
r(i)=3p+2a\pmod6,\qquad c(j)=3q+4b\pmod6
\]

satisfy `exp(2 pi i r(i)c(j)/6)=(-1)^(pq) omega^(ab)`. Both are bijections;
thus `H(0)` is equivalent to `F6`.

The cross ratio from rows `0,3` and columns `0,1` is exactly `exp(it)`.
Cross-ratio sets are invariant under equivalence. Every Fourier cross ratio
is a sixth root and every Tao cross ratio a third root. For `0<t<pi/3`,
`exp(it)` is not a sixth root, so `H(t)` belongs to neither exceptional class.
The family is continuous and approaches `[F6]`. Finally conjugation of `F6`
is its row permutation `j -> -j (mod 6)`.

Every algebraic assertion just made is checked for the **whole indeterminate
unit-phase family**, not for sampled values, in
`../certificates/verify_topology.py`, using integer Laurent arithmetic modulo
`omega²+omega+1`. The interval implication is elementary: if `exp(6it)=1`,
then `6t` is an integer multiple of `2pi`; none lies strictly between `0` and
`2pi`. ∎

### Theorem 7.4. `X` is connected

The family of Lemma 7.3 places `[F6]` in `closure(A union B)`.
Closure commutes with a finite union, so `[F6]` belongs to at least one of
`closure(A)` and `closure(B)`. Conjugation exchanges `A,B`, fixes `[F6]`, and
is a homeomorphism, so it belongs to both closures. Adjoining a closure point
to a connected set preserves connectedness. Thus `A union {[F6]}` and
`B union {[F6]}` are connected and meet at Fourier; their union is `X`.
This version needs no subsequence or first-countability argument. ∎

## 8. Audit of the quotient phase metric

Let `V` consist of real `6×6` matrices with zero row and column sums. Its
orthogonal projector is

\[
(Px)_{ij}=x_{ij}-\tfrac16\sum_kx_{ik}-\tfrac16\sum_kx_{kj}
                         +\tfrac1{36}\sum_{k,l}x_{kl}.
\tag{11}
\]

It is symmetric and idempotent, has rank 25, kills every row-plus-column
matrix, and commutes with row and column permutations. These assertions are
checked with exact `Fraction` arithmetic in the new verifier.

The group `Lambda=2pi P Z^36` lies inside `(2pi/36) Z^36`, hence is discrete.
It spans `V` because the images of the standard coordinate vectors span the
image of `P`. Thus it is a full lattice. Entrywise phase lifts identify the
quotient of the phase torus by row and column phases with `V/Lambda`: changing
a lift adds `2pi` times an integer vector, and the kernel of `P` is precisely
the row-plus-column subspace.

The finite row/column permutation group acts by orthogonal maps preserving
`Lambda`. Accordingly

\[
\delta([x],[y])=\min_{\gamma\in\Gamma,\lambda\in\Lambda}
                  \|Px-\gamma Py+\lambda\|_F
\tag{12}
\]

is a genuine metric, where `Gamma` is the finite permutation group. The
minimum is attained: a bounded ball meets the lattice in finitely many
points, and one first compares against any fixed candidate bound. A zero
minimum is exactly equivalence. Composition of the lattice/permutation
isometries gives the triangle inequality. Open balls lift to unions of open
balls, so it is the quotient topology and the quotient map is open.

The Hadamard locus is a closed invariant subspace, so its orbit quotient
inherits this metric and quotient topology. Conjugation and transpose act
as `x -> -x` and `x -> x^T`; these are isometries. This verifies the metric
claims used in the supplied documents. Definition (12) should use separate
quantifier ranges in formal code; it is not a minimum over only a bounded
set of principal entrywise arguments.

## 9. Evidence actually replayed

The following were run successfully in this task:

1. Supplied `A_deltoid/verify_sheet_branches.py`: **PASS**, 186 exact branch,
   maximum-frame, and whole Fourier-family checks.
2. Supplied `B_exact_quotient/quotient_coverage/verify_quotient.py`: **PASS**,
   exact eighteen-vector orbit, side/branch algebra, the `s=0` exception,
   and horizontal rank 25.
3. New `../certificates/verify_topology.py`: **PASS**, with receipt
   `../certificates/topology_receipt.json`.
4. New `../lean/TopologyCore.lean`: **compiled successfully** with Lean
   `4.33.0-rc2` and the supplied Mathlib revision. `lake build TopologyCore`
   completed 1,560 jobs without warnings or errors. It proves closed compact
   relation continuity, compact-superlevel anchor propagation, and closure
   and density propagation. These are conditional abstract implications, not
   new reconstruction existence or reach theorems.
   `../lean/TopologyCoreAxioms.lean` also passed; every printed theorem depends
   only on Lean's standard `propext`, `Classical.choice`, and `Quot.sound`.
   The exact output is in `../logs/topology_lean.log`; no `sorryAx` or new
   assumed axiom occurs.
5. New independent `../certificates/verify_l2_identities.py`: **PASS**.
   It checks exactly the three Laurent identities and nine Fourier identities
   used in `STEP2_BLUEPRINT.md` §7, plus six Fourier-inversion convention
   checks. The arithmetic is sparse Laurent polynomials with `Fraction`
   coefficients over six independent phase variables and `omega`, reduced by
   `omega²+omega+1`. All twelve full residuals vanish. The receipt is
   `../certificates/l2_identities_receipt.json`. This supplies the finite
   algebraic computations for the actual-side uniqueness paper proof; it does
   not by itself prove existence, exhaustion, matched flatness, or global reach.
6. The companion `../certificates/verify_l2_polynomial_certificates.py`
   independently evaluates the same twelve circuits **before** cyclotomic
   reduction. `../certificates/l2_polynomial_certificates.json` contains all
   expanded integer coefficients of the cleared left side, right side,
   residual, and cofactor. For each identity it verifies exactly
   `D * monomial * (lhs-rhs) = (omega²+omega+1) * Q`. The three Laurent
   residuals are identically zero already; each of the nine Fourier identities
   has an explicit nonzero polynomial cofactor. The largest cofactor has
   eighty monomials. Both coefficient generation and read-only validation
   passed; `../certificates/l2_polynomial_receipt.json` records the result.

The new verifier depends only on the Python standard library, uses no floats,
does not rely on Python `assert`, and raises an exception on every failed
acceptance condition. Its output explicitly excludes reconstruction
existence, fiber uniqueness, global reach, Step 1's global census, and a finite
physical atlas from its certified scope.

No source in this audit supplies new Lean proofs of the local geometry or
global reach obligations. The central abstract topological implications have
now been formalised with those obligations kept explicit. Converting a
conclusion into a `def ... : Prop` does not discharge it.

## 10. Independent review of the concrete assembly

The concrete definitions in `../lean/Step2Statements.lean` were independently
reviewed against upstream `Basic.lean`, `HadamardQuotient.lean`, and
`NoFourMUBs/Skeleton.lean`. The signs of the horizontal Gram correlations,
the `J=2 Re(s r bar(t))` convention, the permanent normalization, and the
positive/negative imaginary signatures agree with the handoff. Using the
raw lower-left block `C` in the signature is correct because the signature
is transpose invariant.

`MatchedExactReach` implies the stated closure-based `MatchedDensityReach`;
the latter is independent of the Record predicate. The finite maximum census
and actual matched-anchor membership are separate hypotheses. The quotient
lift of `CoveredMatrix` uses equivalence invariance in the correct directions,
and its four-operation saturation supplies conjugation invariance without
requiring the raw `Ball` predicate to be symmetry invariant. The final displayed
existential is exactly `NoFourMUBs.Inputs.covered`; it does not quietly require
a stronger or different representative condition.

The paper proof of L2 in `STEP2_BLUEPRINT.md` §7 was also reviewed. It is valid
for already existing normalized physical sides, including the equal-magnitude
orientation tie. A useful narrower interface is: same Gram, same nonreal
polynomial signature, and normalized phase rows imply equality up to a column
permutation. On the matched fiber, invertibility follows directly from its
nonzero imaginary signature, so no arbitrary-seed existence theorem is needed
for this step.

The Fourier representative `affineFourierMatrix omega 1 1` uses a different
ordering from the displayed `F2 tensor F3`. With `zeta6=-omega²`, it is
`F6` with row indices `[0,3,2,5,4,1]` and column indices `[0,3,4,1,2,5]`.
These are both permutations of `0,...,5`.

The Record argument should explicitly take the finite Gamma-closure of the
regions before identifying its closed-image union with its interior-image
union: transfer *after* Gamma proves clopenness of the saturated set, and need
not prove clopenness of the unsaturated raw Record union. The concrete
`CoveredClasses` definition already has the correct saturation.
