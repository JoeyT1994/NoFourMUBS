# Handoff P: an algebraic replacement for the atlas

## Goal
Replace Steps 3–4 of the proof (the 4-D atlas: 12,021 certified ball Records, Stage C, boundary transfers; ~2 CPU-h in
Arb, ~50 thread-h in Julia, ~20k core-h in the Lean kernel) by algebra, using two things we now have:

1. **The minimal reconstruction** (`PROOF_v2.md` §§1–3): every non-Tao order-6 Hadamard H is [F₆] or a matched
   completion [H₊(θ)] (or its conjugate) of a strict corner seed θ ∈ T⁴, with explicit corner invariants.
2. **Return L and its follow-up** (`returns/L_fourier_edge/`): F holds on an explicit neighbourhood of the Diţă triple;
   the Fourier family N(z, w) ∪ Nᵀ is excluded as a quartet edge (E, certified computation); and the **component
   theorem**: the equivalence orbit GM of Szöllősi's bicirculant companion surface is open and closed in the full
   dephased triple space V ⊂ T⁵⁵, so it is a whole connected component, and every triple in it has ≥ 2 Fourier edges.

This brief states the remaining target precisely, reduces it to three sub-problems (A, B, C), and lists exactly what is
known, so partial results are useful on their own.

## 0. Definitions and one reformulation
- **Hadamard, triples, quartets.** H ∈ ℂ⁶ˣ⁶ with |Hᵢⱼ| = 1 and HH* = 6I. A **triple** {I, H/√6, K/√6} has H, K and
  L = H*K/√6 all Hadamard; a **quartet** adds a fourth basis with all six transitions Hadamard. Equivalence:
  row/column permutations and phases. V is the real-algebraic set of canonically dephased triples (55 phases,
  96 real equations), G the finite relabelling group ((S₆)³ ⋊ S₃ on ordered rays after dephasing).
- **Corner invariants** (`PROOF_v2.md` §1). For a 3×3 corner E of H with adjacent side B: G = 6I − EE* = BB*,
  s, t, r its off-diagonal entries, X, Y, Z, p, J, W, and g = 27 − 3p + J = |det B|², η, χ, R = 4g²η − χ² = 4 (Im Ψ(B))².
- **Fourier type.** H has a singular 3×3 submatrix; equivalently H is equivalent to N(z, w) = [[F₃, F₃], [F₃D, −F₃D]],
  D = diag(1, z, w), or its transpose (`MinimalConstruction/Proofs/FOURIER_ROUTING.md`; the bundled
  `algebra/FOURIER_PREDICATE.md` of the L follow-up proves the equivalence).

> **Lemma 0 (PROVED; one line).** H is of Fourier type ⇔ one of its **400** positional 3×3 minors (any 3 rows × any
> 3 columns) is singular ⇔ for some choice of rows and columns, the corner there has g = 0.
> *Proof.* Every 3×3 submatrix of H is the side block B adjacent to some corner (choose the complementary column
> triple), and g = |det B|² = det(6I − EE*). ∎
>
> *Correction (17 Oct 2026, from return P):* an earlier version said "some corner" while taking the product over the
> twenty corners of one fixed strip; that misses singular minors in other row choices (exact counterexample: N(i, 1)
> with rows reordered (0,1,3,2,4,5)). Use all 400 minors, or return L's thirty-factor squared-overlap predicate.

So **F** (every triple has a Fourier-type transition) is the polynomial statement
  Π(H, K) := ∏_{T ∈ {H, K, L}} ∏_{400 positional 3×3 minors M of T} |det M|² = 0 on all of V,
and **F′** (every quartet has a Fourier-type edge) is the same for the six edges of a quartet.

## 1. The reduction (what proves the theorem)
- **F′ + E + Tao ⇒ no four MUBs.** A Fourier-type edge lies in N ∪ Nᵀ, which E excludes. (Tao's matrix has no singular
  minor, but a pair containing Tao does not even extend to a triple [Brierley–Weigert 2009], so it never occurs.)
- **F ⇒ F′** (every triangle of the quartet's K₄ has a Fourier edge).
- **T (triple classification) ⇒ F**, where **T**: V = GM ∪ G·{isolated Fourier triple}. This is the MMVW conjecture
  (draft paper Conjecture 1). With the component theorem, T says: *V has no component other than GM and the isolated
  triple's orbit.*

You need only F (or even F′), not all of T. Note: with E, F′ is *equivalent* to "no four MUBs", so F′ must be proved
without using the atlas (return L §7 records this circularity).

## 2. Three sub-problems
Let V_F = {Π = 0} (triples with a Fourier edge; closed) and U a connected component of the open set V ∖ V_F
(Fourier-free triples). V is compact. Either U is a whole component of V (Case C) or its closure meets V_F (Case B).

**A. Triples with a Fourier edge (2-parameter, algebraic).** Classify all triples {I, N(z, w), K}: the common unbiased
vectors of {I, N(z, w)} and their orthonormal 6-cliques, as an explicit semi-algebraic family in (z, w).
*Known:* every N(z, w) extends to a triple (Idel–Wolf biunimodular vectors; `PROOF_v2.md`, paper SM §III); the
bicirculant construction gives such triples (SM eq. (S.3.1)); return L's census of minors/blocks on N(z, w) and its
12 exceptional parameter points (`L_fourier_edge_return.zip`: `algebra/REPORT.md`, `FOURIER_DOMAIN.md`).
*Wanted:* every triple with a Fourier edge lies in GM or in the isolated triple's orbit (or: a complete list).

**B. Local completeness along V_F.** At every triple q ∈ V_F, show the full solution set of the 96 equations near q is
contained in V_F ∪ GM (so no Fourier-free component can approach q). *Known:* this is done on GM itself (rank 53 off the
centres; a complete two-branch analysis at the 36 trace-zero centres: `root/CENTRAL_CROSSING_THEOREM.md`,
`globalization/GLOBAL_RANK_THEOREM.md` in `L_global_F_progress.zip`). With A, what remains is the isolated Fourier triple
(and any further Fourier-edge triples A finds).

**Progress (return P, 17 Oct 2026; `explorations/returns/P_atlas_free/REVIEW.md`).** B is closed: the isolated product
triple is rigid (Jacobian rank 55) and, with return L's component theorem, both known classes are whole components, so
**A + C remain**. A is solved locally at the Fourier pair D = diag(1, 1, i) (48 rays, 8 bases); Fourier-free triple and
quartet spaces have real dimension ≤ 4. Return P also shows the maximum-principle idea in C below does **not** work as
stated: a maximum over a 2-dimensional triple component does not make the seed derivatives of R vanish, and singular
points need separate control.

**C. No compact Fourier-free component.** Show V has no connected component on which Π > 0. This is the global step and
the one that should use the reconstruction. *Suggested idea (a suggestion, not a known route):* a **maximum principle on
triple components**, the analogue of Step 2. On a compact Fourier-free component U every transition is non-Tao and has
no singular minor, so every corner has g > 0 and, by strict-corner coverage and Theorem A, each transition is a matched
completion of each of its strict corners. Take a natural invariant, e.g. Φ = max over the three transitions and their
corners of R, or Π itself, and look at its maximum on U. At a maximiser the first-order conditions along U (a variety
of dimension ≥ 2 — every point of V near GM has a 2-dim tangent space by the rank-53 theorem; you would need the
analogous lower bound on U) combine with:
  - the triangle relation H·(K-transition)·(L-transition) = 6√6 I and its corner consequences,
  - the side identities (`SIDE_FIBER.md` §1: λⱼ = Pⱼ/Lⱼ), the Jacobian identity det ∂(Gram)/∂(angles) = ¼ Im Ψ
    (handoff J), and return K's signed corner sums (3), (4) (valid on any orthogonal strip, not only critical ones),
to force R = 0 somewhere (all-critical corners), hence a Fourier-type transition (all-critical ⇒ Fourier-equivalent,
paper SM Proposition S.3) — contradicting Π > 0. The Step-1 analysis of the maxima of R (one 18-point orbit) is the model.
*Known numerically:* the atlas-wide triple search found 379,944 triples from all 12,021 Record centres, every one of
the continuous or isolated form — no Fourier-free triple (`explorations/triple_test/`). Return L-progress §6 adds
necessary conditions any Fourier-free *quartet* must satisfy (a symmetry criterion: two colliding common skew-monomial
antiunitaries force Fourier edges, so a Fourier-free family has ≤ 15; a spectral gap λ_min(Q^Γ) < −1/120; a
triangle-sum identity), which may help for F′ directly.

**A + B + C ⇒ F.** (A and B show no Fourier-free component can touch V_F; C excludes the rest.)

## 3. Optional: E algebraically
E (no quartet edge in N ∪ Nᵀ) is currently a certified computation (Jaming et al. 2009, Thm 1.4, re-certified with
corrected code in return L; the original published code had a bug). With A's explicit classification of triples over
N(z, w), a quartet over N(z, w) needs two such triples sharing {I, N(z, w)} with mutually unbiased third bases. An
algebraic exclusion would make the whole route computation-free apart from exact identities.

## What may be used
Everything in `PROOF_v2.md` (reconstruction, Step 1, connectedness, strict-corner coverage, Theorem A), returns G, J, K
(including the rank lemma: rank H^[2] ≥ 3 for every order-6 Hadamard), return L and its follow-up (component theorem,
E, local theorem), and the literature cited there. Not the atlas or anything derived from it (circular).

## Deliverables
A `REPORT.md` labelling every claim PROVED / CERTIFIED / NUMERICAL / NOT ESTABLISHED; exact verifiers for every finite
computation; SHA256SUMS. Partial results are valuable and should be reported as such, in particular:
- **A alone**: a classification of all triples with a Fourier edge (a new theorem; strengthens the paper's Section III).
- **A + B**: "no Fourier-free triple is a limit of Fourier-edge triples"; then F ⇔ C.
- **C alone or any reduction of it** to a finite / exact check.
- Any proof of F′ for quartets directly.

## How it would be checked and integrated
Exact certificates replayed here (as for returns J–L); the written analytic arguments reviewed by us; then, if F (or F′)
is established, the paper's proof becomes: reconstruction + strict-corner coverage + F′ + E + Tao, and Steps 3–4
(atlas, Stage C, boundary transfers, `proof/atlas/`, `proof/independent/`, `kernel_atlas/`) become cross-checks.

**Risk.** T is a long-standing open conjecture (MMVW). C is the hard part; A and B are plausible 2-parameter and local
problems whose answers are valuable regardless.
