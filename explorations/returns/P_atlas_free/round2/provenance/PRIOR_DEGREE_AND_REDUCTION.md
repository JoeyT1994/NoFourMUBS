# Exact ray-algebra length and finite fibres over reconstruction seeds

**Status: PROVED, with the additional boundary theorem identified in §1.**
The finite arithmetic and examples are **CERTIFIED** by
`verify_degree_and_predicate.py`. No atlas, ball Record, numerical ray census,
or no-four theorem is used. Global F, F′, and C remain **NOT ESTABLISHED**.

## 1. Input and conventions

Let H be a raw order-six phase Hadamard, and assume every positional
3 by 3 minor of H is nonzero. Put C=H/√6. Let Z₂(H) count singular
positional 2 by 2 minors, retaining both row and column index sets.

**Explicit literature input.** Sun, *Mutually unbiased bases: common
states, completion, and extension obstructions*, arXiv:2610.12180v1,
Theorem 3.1, proves that the following projective scheme is zero-dimensional
and that its boundary consists of 2Z₂(H) reduced isolated points. This is an
analytic input already cited in the supplied L follow-up's
`globalization/PRIMARY_RESULTS.md`, §3, and is declared explicitly here. Its
proof uses support restrictions and the full boundary tangent equations,
not an atlas. The new deduction below concerns the exact scheme length.

In P⁵_z × P⁵_w use independent homogeneous coordinates z,w, and define

    v=C* z,       u=Cᵀ w,       t=z₀w₀.

The scheme Z_H is cut out, without saturation by t, by ten equations:

    zᵢwᵢ−t=0       (i=1,...,5),
    vⱼuⱼ−t=0       (j=1,...,5).                         (1)

Each equation has bidegree (1,1). The omitted transformed equation follows
from Σvⱼuⱼ=Σzᵢwᵢ. On t≠0 take z₀=w₀=1. The native equations eliminate
wᵢ as zᵢ⁻¹, leaving the full Laurent algebra

    A_H = C[z₁^{±1},...,z₅^{±1}] / (G₁,...,G₅),
    Gⱼ = (Σᵢ conjugate(hᵢⱼ)zᵢ)(Σᵢ hᵢⱼ zᵢ⁻¹)−6.     (2)

No radical is taken. Multiplicities are retained throughout.

## 2. The exact length theorem

**Theorem D1 — PROVED.**

    length(Z_H)=252,
    dim_C A_H = 252−2Z₂(H).                              (3)

In particular,

    0≤Z₂(H)≤45,       162≤dim_C A_H≤252.                 (4)

### Proof of the intersection length

The ambient variety P⁵×P⁵ is smooth of dimension ten. At each point of
the zero-dimensional scheme (1), its ten local equations form a system
of parameters in a regular local ring of dimension ten. Such a ring is
Cohen–Macaulay, so the system of parameters is a regular sequence.
Consequently its Koszul complex is exact. Away from Z_H one equation is
a local unit, and the Koszul complex is again exact. These local statements
give the global resolution

    0 → O(−10,−10) → ... → O(−j,−j)^{binom(10,j)}
      → ... → O(−1,−1)^{10} → O → O_{Z_H} → 0.          (5)

This justifies using the complete-intersection degree, including at
multiple affine roots. A mere upper-bound version of Bézout is unnecessary.

Twist (5) by O(k,k), with k≥10. Since a zero-dimensional scheme has no
higher cohomology and twisting by a line bundle preserves its length,
additivity of Euler characteristic yields

    length(Z_H)
      = Σ_{j=0}^{10} (−1)^j binom(10,j) binom(k−j+5,5)².
                                                               (6)

The polynomial binom(k+5,5)² has degree ten and leading coefficient
1/(5!)². The sum in (6) is its tenth backward difference, hence equals

    10!/(5!)² = binom(10,5) = 252.                       (7)

The verifier checks (6) identically as a polynomial over Q, coefficient
by coefficient. It does not substitute a finite sample of k values.

The declared boundary theorem makes the boundary a disjoint set of
2Z₂(H) local rings of length one. A zero-dimensional scheme is the
disjoint union of its local Artinian schemes. Removing those boundary
points therefore subtracts exactly 2Z₂(H) from its length, proving (3).

For (4), fix a pair of rows. A singular 2 by 2 block is a pair of columns
on which their entry ratios coincide. A ratio cannot occur at three
columns, since that would give a singular 3 by 3 minor after adjoining
any third row. Thus each of the fifteen row pairs contributes at most
three repeated pairs, giving Z₂≤45. ∎

The algebraic-geometry facts used in (5) are standard regular-sequence
facts; precise references are Stacks Project, §10.104 (tag 00N7) and
§15.31 (tag 062D). Equations (5)–(7) give the length calculation explicitly.

### Interpretation and exact examples

**Corollary D2 — PROVED.** The number N_H of distinct physical common
unbiased rays of {I,H/√6} obeys

    N_H ≤ 252−2Z₂(H) ≤252.                               (8)

Physical points are those with |zᵢ|=1 in (2). Each is one complex point
of the finite scheme and consumes local length at least one. Formula (3)
does not assert reducedness or that all complex roots are physical.

| Raw matrix | Z₂ | Singular 3-minors | Full affine length from (3) |
|---|---:|---:|---:|
| The supplied Diţă matrix D | 30 | 0 | 192 |
| Tao matrix | 45 | 0 | 162 |
| N(i,1), a Fourier matrix | 24 | 24 | Not covered by the theorem |

**CERTIFIED:** the verifier constructs these matrices in Q(i,√3), checks
their phase and Gram identities, and enumerates every 2- and 3-minor.
The counts 192 and 162 use the written length theorem; the script does
not claim to compute a Gröbner basis of those affine algebras.

## 3. Finite projection of Fourier-free triples

Let V_ff be the full canonical triple space with all three transitions
Fourier-free. Here “Fourier-free” means every positional 3-minor is nonzero.
The canonical gauge fixes the first row and column of H and the first
row of K. There are 55 phase coordinates in all.

**Theorem D3 — PROVED.** The projection

    p: V_ff → {dephased H with no singular 3-minor},
    (H,K) ↦ H,

has finite fibres. Combining it with the permitted strict-corner
reconstruction gives

    dim_R V_ff ≤4.                                      (9)

The same bound holds for the fully Fourier-free quartet space in its
canonical gauge.

**Proof.** For fixed H every column of K, with its first entry fixed to
one, is one of the finite physical representatives in (8). Distinct
orthogonal columns must be distinct rays. Thus there are only finitely
many possible labelled K. Requiring the remaining transition to be
Fourier-free only deletes possibilities. For a quartet, choose two such
K matrices and impose the cross-unbiasedness equations; the fibre is
again finite.

For the image of p, Tao is ruled out by the permitted Tao-not-triple
input, and F₆ is ruled out by Fourier-freeness. The permitted coverage
theorem gives a strict corner, and the matched-converse theorem says
that H is matched there, up to the choice of conjugate sheet.

After one of finitely many row/column permutations and canonical
dephasing, this corner has four unit phase parameters. At a fixed seed,
each of the two signature choices fixes each normalized side up to its
six column permutations; the bottom-right block is forced. There are
at most 2·6·6=72 framed matched completions in this chart. All relations
are semialgebraic: complex entries are represented by real and imaginary
parts, nonzero unit entries give polynomial inverses, and strictness is
the polynomial inequality R>0.

A finite-fibre semialgebraic map has domain dimension equal to that of
its image. The finite union of strict-corner charts therefore has
dimension at most four, and the finite-fibre projections for triples
and quartets preserve this bound. ∎

**Important limit.** This is a dimension upper bound. It proves no
positive lower bound, no nonzero tangent direction at every point,
and no openness or submersion property of p. Finite fibres are consistent
with an image that is a curve, surface, singular subset, or isolated
point inside the four-dimensional seed domain. Those possibilities are
precisely why (9) does not finish the suggested maximum principle.

### A uniform bound on companion bases

Every unordered orthonormal basis is a six-clique of physical rays.
Each such basis has six five-element subsets. An orthogonal five-element
subset extends to at most one sixth ray in C⁶. Therefore the number b_H
of unordered companion bases satisfies

    6 b_H ≤ binom(N_H,5),
    b_H ≤ floor(binom(252,5)/6) = 1,356,228,300.          (10)

This deliberately coarse bound is uniform. It is a finite-fibre bound,
not an efficient proposal to enumerate that many cliques at every seed.

## 4. An exact algebraic target for the residual problem

For any fixed algebraic H satisfying the minor hypothesis, (2) is a
finite algebra of the known dimension (3). Real-root methods can extract
its physical characters, including when the complex algebra is nonreduced.
An exact orthogonality graph then decides all companion bases.

One can also state the decision entirely in finite algebras. Form six
copies of A_H, and impose

    Σᵢ zᵢ^(a)/zᵢ^(b)=0       for every ordered a≠b.      (11)

Their quotient B_H is finite. Its conjugation/reciprocal involution
exchanges (11) for the reversed ordered equation, so it has a real form.
Real characters correspond precisely to labelled physical companion
bases. There is no replacement of conjugation by reciprocal coordinates
without subsequently imposing this real condition.

To retain only Fourier-free K and L=H* K/√6, localize B_H by
P_F(K)P_F(L), using the thirty-factor predicate in §5. In a finite
algebra localization is again a finite algebra: it deletes the local
factors where the element is zero at the closed point. Call the result
B_H^ff. The transformed entries of L are units: their inverse expressions
are supplied by the equations Gⱼ=0, so this predicate is defined.

For a finite real algebra B, the symmetric trace form

    T_B(x,y)=Tr_B(m_{xy})                                (12)

has signature equal to the number of its real characters. To see this,
split the finite algebra into its local factors. Nilpotents lie in the
radical of the form. Each real residue field contributes one positive
direction, with positive weight its local length. Each complex residue
field, viewed over R, contributes one positive and one negative direction.
Thus no reducedness premise is required.

Write B_R=(B_H^ff)^τ for the fixed real algebra; its complexification is
B_H^ff. The predicate P_F is τ-fixed, so the localization used above
preserves this real form. Consequently, for this fixed H,

    no fully Fourier-free triple over H
      ⇔ signature(T_{B_R})=0.                           (13)

Together with §3 this places the global question over finitely many
four-real-parameter strict-corner charts, with finite algebraic fibres.
This is an exact target for elimination or trace-form certificates;
it is not a verified uniform signature calculation. In particular the
algebra (11) has not been generated at universal symbolic seed parameters,
and no certificate establishing (13) at all such parameters is returned.
Its naive dimension bound (252−2Z₂)^6 is large.

**NOT ESTABLISHED:** an efficient uniform stratification, signs of the
trace forms over the whole parameter domain, absence of a compact
Fourier-free component, or an atlas-free no-four theorem.

## 5. Correction to the polynomial predicate in the brief

There are 20 row triples and 20 column triples. The invariant

    g_{I,J}(H)=det(6I−H_{I,J}H_{I,J}*)
             =|det H_{I,Jᶜ}|²                          (14)

ranges over **400** positional corners. The Fourier predicate can be
written

    Π_correct(H,K)= ∏_{T∈{H,K,H* K/√6}}
                    ∏_{|I|=|J|=3} g_{I,J}(T).         (15)

The nonnegativity makes its vanishing equivalent to the presence of a
Fourier edge, by the supplied singular-minor routing theorem.

The brief's “20 corners” is insufficient if interpreted as the twenty
column choices in one fixed row strip. **CERTIFIED counterexample:**
take N(i,1) and row order (0,1,3,2,4,5). All twenty minors in the leading
three-row strip are nonzero, although the full matrix has 24 singular
3-minors and is Fourier type. Their squared moduli are drawn from

    {6,12,12−6√3,12+6√3},

and their product is exactly 6⁸·12¹²>0. Canonical dephasing preserves
these moduli. This is a counterexample to the fixed-strip interpretation,
not to Lemma 0 or to singular-minor routing.

For a smaller polynomial use the already proved return-L predicate:

    S_rs(H)=Σⱼ(h_rj conjugate(h_sj))²,
    P_F(H)=∏_{r<s}(36−|S_rs(H)|²)
           ∏_{c<d}(36−|S_cd(Hᵀ)|²).                    (16)

Each factor is nonnegative on physical Hadamards, and equality in one
factor is exactly the repeated-square row/column condition that routes
to a Fourier matrix. Thus P_F(H)P_F(K)P_F(L)=0 gives the intended predicate
with ninety factors in total.

## 6. References and proof boundary

1. Supplied `PROOF_v2.md`, §§1–3: strict-corner reconstruction and coverage.
2. Supplied `MinimalConstruction/Proofs/SIDE_FIBER.md`: the two normalized
   side orbits and the finite framing choices.
3. Supplied L follow-up `algebra/FOURIER_PREDICATE.md`: singular-minor
   routing and (16).
4. [Sun, arXiv:2610.12180v1, Theorem 3.1](https://arxiv.org/html/2610.12180v1#S3.SS1):
   the zero-dimensionality and reduced-boundary input to D1, cited in the
   supplied L follow-up `globalization/PRIMARY_RESULTS.md`, §3.
5. [Stacks Project, tag 00N7](https://stacks.math.columbia.edu/tag/00N7)
   and [tag 062D](https://stacks.math.columbia.edu/tag/062D): the
   regular-sequence/Koszul facts used in the explicit degree argument.

The uniform length result D1 and consequences D2–D3 have written
mathematical proofs with the declared inputs. The Python gate verifies
polynomial arithmetic, examples, and counts. It is not a Lean proof,
and does not certify the external paper or the universal semialgebraic
dimension theorem by executable calculation.
