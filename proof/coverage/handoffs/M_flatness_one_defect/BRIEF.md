# Handoff M: matched flatness from one weighted defect

## The task
Matched flatness (`PROOF_v2.md` Theorem 1.2, "Flatness"; return E, `proof/coverage/returns/E_matched_flatness/FLATNESS.md`
§4) is proved by showing that four weighted third-moment defects W₁₁, W₁₂, W₂₁, W₂₂ vanish. Each gives two coefficient
identities in ℚ(a, b, c, d), (4.6), so there are eight. In Lean these are the heaviest modules on the L1 route
(`lean/README.md`, "Build cost of L1"):

| Module | Content | Cost |
|---|---|---|
| `L1/FlatCheckF00`, `F01`, `F10`, `F11` | F₀ᵖᵠ, F₁ᵖᵠ for the four (p, q) | about 4 min and 11 GB each, built one at a time |
| `L1/FlatCheckMh` | 36 entries of K Qₕ⁽ᵠ⁾ K* (q = 1, 2; z⁰ and z¹ parts) | about 3 min, 9 GB |
| `L1/FlatCheckQv` | 36 vertical third moments (p = 1, 2) | under 1 min, 6 GB |
| `L1/FlatData` | reduced data for the above | 448 KB (mh: 398 KB, half for each q; qv: 42 KB, half for each p) |

Prove, and integrate, the statement below. It says that **one** weighted defect, W₁₁, suffices, because the other three
are W₁₁ at a relabelled seed. The mathematics is short; the work is mainly in Lean.

## Definitions (self-contained)
- **Corner.** E = E(θ) = [[1, 1, 1], [1, a, b], [1, c, d]], with seed (a, b, c, d) ∈ T⁴. G_h = 6I − EE*, G_v = 6I − EᵀĒ.
  The scalar invariants g, η, χ, R of G_h and G_v agree (`FLATNESS.md` §1). The seed is **strict** if R > 0.
- **Sides.** A normalised side is A = (1; x; y) (first row all ones, x, y ∈ T³). It is a **horizontal side** if
  AA* = G_h and a **vertical side** if AA* = G_v. Its signature is Θ(A) = −perm(A) det A / (conj(det A) ∏ⱼxⱼ ∏ⱼyⱼ)
  (`FLATNESS.md` §1; in Lean `TS`, with T = gΘ). Θ is unchanged by row and column permutations of A.
- **Matched pair.** A horizontal side B and a vertical side V with Θ(B) = z and Θ(V) = z̄, where z is a root of
  gz² − χz + gη = 0 (either root).
- **Forced block and defects.** C = Vᵀ, K = −E* G_h⁻¹, D = CKB, Δᵢⱼ = |Dᵢⱼ|² − 1, and
  W = conj(V) Δ conj(B)ᵀ, that is W_pq = Σᵢⱼ conj(V_pi) conj(B_qj) Δᵢⱼ (`FLATNESS.md` (4.2)).
  Row 0 and column 0 of W vanish because Δ has zero line sums (`FLATNESS.md` (4.1)).
- **Relabellings.** P is the permutation matrix exchanging indices 1 and 2. The seed maps are
  σ_r(a, b, c, d) = (c, d, a, b) (so E(σ_r θ) = P E(θ)) and σ_c(a, b, c, d) = (b, a, d, c) (so E(σ_c θ) = E(θ) P).

## Statements
> **M1 (relabelling lemma). PROVED (here, below); checked numerically.** For any 3×3 matrices E (with G_h invertible),
> B and V:
> (a) D(PE, PB, V) = D(E, B, V) and W(PE, PB, V) = W(E, B, V) Pᵀ;
> (b) D(EP, B, PV) = D(E, B, V) and W(EP, B, PV) = P W(E, B, V);
> (c) if θ is strict and (B, V) is a matched pair at θ, then σ_r θ is strict and (PB, V) is a matched pair at σ_r θ
>     with the same z; and σ_c θ is strict and (B, PV) is a matched pair at σ_c θ with the same z.
>
> *Proof.* (a) G_h(PE) = P G_h Pᵀ, so K(PE) = −E*Pᵀ (P G_h⁻¹ Pᵀ) = K Pᵀ and D(PE, PB, V) = C K Pᵀ P B = D. Then
> W' = conj(V) Δ conj(PB)ᵀ = W Pᵀ. (b) G_h(EP) = EPPᵀE* = G_h, K(EP) = Pᵀ K, C' = (PV)ᵀ = C Pᵀ, so
> D' = C Pᵀ Pᵀ K B = D (P² = I, Pᵀ = P), and W' = conj(PV) Δ conj(B)ᵀ = P W. (c) G_v(PE) = EᵀPᵀPĒ = G_v and
> G_h(PE) = P G_h P, so PB is a horizontal side at σ_r θ and V a vertical side; the off-diagonal Gram entries are
> permuted and conjugated, (s, t, r) ↦ (t, s, r̄), which fixes p, J and W, hence g, η, χ and R; Θ is invariant under
> row permutations. (b) is the same with the roles of rows and columns exchanged. ∎
> `check_relabelling.py` (this folder) confirms (a), (b) and the transposition analogue W(Eᵀ, V, B) = W(E, B, V)ᵀ on
> 200 random instances: relative deviation 9·10⁻¹⁵ on well-conditioned ones. **NUMERICAL** (a check of the algebra only).

> **M2 (to prove in Lean). Flatness from W₁₁.** If W₁₁ = 0 for every strict seed and every matched pair, then
> W_pq = 0 for all p, q ∈ {1, 2}, for every strict seed and every matched pair, and hence (`FLATNESS.md` §4.1, Lean
> `flat_of_W`) every forced block is unimodular.
>
> *Proof.* W₁₂(θ; B, V) = W₁₁(σ_r θ; PB, V), W₂₁(θ; B, V) = W₁₁(σ_c θ; B, PV) and
> W₂₂(θ; B, V) = W₁₁(σ_c σ_r θ; PB, PV), by M1 (a)–(c). ∎

So only F₀¹¹ = F₁¹¹ = 0 (`FLATNESS.md` (4.6) for (p, q) = (1, 1)) needs a certificate; in Lean that is `FlatCheckF00`
alone (Lean indexes p, q ∈ Fin 2 from 0).

## What it deletes
- `L1/FlatCheckF01`, `F10`, `F11`: three of the four 11-GB modules, about 12 min of sequential build (`lean/README.md`).
- From `L1/FlatData`: the mh data for q = 1 (`mh_1…`, `mhDen_1…`, about 197 KB) and the qv data for p = 1 (`qv_1…`, about
  21 KB): about 218 of 448 KB.
- Half of `L1/FlatCheckMh` (18 of 36 entries, about 1.5 min, 9 GB) and of `L1/FlatCheckQv` (18 of 36).
- In return E: six of the eight coefficient identities in `direct/` become unnecessary (they stay as cross-checks).

Net: the flatness part of the L1 build goes from roughly 20 min to roughly 6 min, with one 11-GB module instead of four.
Nothing else in the proof changes.

## What may be used
Everything in `lean/NoFourMUBs/L1/` and the definitions in `Step2/`. In particular `FlatBridge.W_zero` (line 461) already
proves W p q = 0 for any (p, q) from the kernel checks, at a seed point ρ with `Strict ρ`, for sides given as
`sideMat x y`, `(sideMat x' y')ᵀ` with Gram hypotheses `sS x = sh ρ`, `sS y = th ρ`, `rS x y = rh ρ` (and the vertical
analogues) and signatures `TS x y = ζ`, `TS x' y' = conj ζ`. `FlatMatrix.flat_of_W` (line 200) takes the four W's.

## Suggested route (Lean)
1. Restrict `W_zero` to (p, q) = (1, 1) (as `Fin 3`), with hypotheses only `F_valid 0 0`, `mh_valid 0 · · ·`,
   `qv_valid 0 · · ·`.
2. Prove the matrix identities of M1 (a), (b) for `forcedD`/`W` in `FlatMatrix` (pure matrix algebra; `P` is
   `Equiv.swap 1 2` as a permutation matrix or `Matrix.submatrix`).
3. Prove the seed facts: `Em (σ_r ρ) = (Em ρ).submatrix (swap 1 2) id`, `Strict (σ_r ρ)`, and the transformation of the
   Gram data: `sh (σ_r ρ) = th ρ`, `th (σ_r ρ) = sh ρ`, `rh (σ_r ρ) = conj (rh ρ)`, vertical data unchanged (likewise
   for σ_c, with the horizontal data unchanged and the vertical data permuted). For the sides: `sideMat y x` is the
   row-swapped side, `sS`, `rS y x = conj (rS x y)`, `TS y x = TS x y`.
4. Assemble `∀ p q, p ≠ 0 → q ≠ 0 → W … p q = 0` from the (1, 1) case and feed `flat_of_W` as now
   (`L1/Existence.lean`, `hW` at about line 93).
5. Drop the generated data and checks for the other (p, q): `lean/generators/flatness/generate.py` and `checks.py`
   (only q = 0 in `mhData`, p = 0 in `qvData`, one `FlatCheckF00`), and rebuild.

## Deliverables and checking
- **PROVED:** M1 and M2 as above (half a page; may be added to `FLATNESS.md` §4.1 as a remark).
- **In Lean:** `L1.matchedExistence` unchanged in statement, with `FlatCheckF01/F10/F11` deleted and `FlatData`,
  `FlatCheckMh`, `FlatCheckQv` halved. Check with `python3 lean/check_axioms.py --full` (standard axioms only) and
  `python3 verify.py`. Record the new build times and peak memory in `lean/README.md`.
- Where it plugs in: `L1/FlatBridge.lean` (`W_zero`), `L1/FlatCheckF.lean` (`F_valid`), `L1/Existence.lean`
  (`matchedExistence`), `lean/generators/flatness/`.

**Risks.** Low. The only care points are index conventions (the paper's p, q ∈ {1, 2} are Lean's `Fin 3` indices 1, 2,
and the generated `F0 p q` uses 0, 1), and making sure the `Strict`/Gram hypotheses of `W_zero` are restated at the
relabelled seed rather than re-derived from the circuits. The relabelled seed is again a seed of the same corner shape,
so no new circuit is needed.

**Not proposed (considered).** A *structural* proof of flatness (no certificate at all). Flatness is four real equations
(the zero-line-sum Δ has four degrees of freedom) on the four-dimensional seed space that hold identically; that is
the existence of the generic four-parameter family, which is overdetermined (30 real Hadamard equations on 25 horizontal
unknowns), so no dimension count or first-order (tangency) argument gives it, and analytic continuation from H₀ was
already rejected as circular (`proof/coverage/handoffs/README.md`). Conjugation gives nothing new (it maps the identity
to its formal conjugate), and transposition only relates W_pq to W_qp, which M1 already covers.

## Files to package
- `PROOF_v2.md` (§1), `lean/README.md`, `lean/check_axioms.py`
- `proof/coverage/returns/E_matched_flatness/FLATNESS.md`, `STATUS.md`, `README.md`, `verify_structural.py`,
  `direct/DERIVATION.md`, `direct/README.md`, `direct/verify_third_moments.py`, `direct/rational_helper.py`,
  `direct/verify_certificate_slices.py`, `direct/third_moment_certificates.json.gz`
- `lean/NoFourMUBs/L1/FlatMatrix.lean`, `FlatBridge.lean`, `FlatCircuits.lean`, `FlatCircuitsBase.lean`, `FlatData.lean`,
  `FlatCheckF.lean`, `FlatCheckF00.lean` … `FlatCheckF11.lean`, `FlatCheckMh.lean`, `FlatCheckQv.lean`,
  `FlatCheckTable.lean`, `SideFormulas.lean`, `SideGram.lean`, `SideCover.lean`, `Existence.lean`
- `lean/NoFourMUBs/Identity/` (all five modules), `lean/NoFourMUBs/Step2/Statements.lean`
- `lean/generators/flatness/generate.py`, `checks.py`
- `check_relabelling.py` (this folder)
