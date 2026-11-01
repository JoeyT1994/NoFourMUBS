# Handoff J: result

**Done.** Statement (E) of the brief is proved on paper (below) and in Lean, by route A. The Lean theorems
`L1.exists_side_h` and `L1.exists_side_v` (`lean/NoFourMUBs/L1/SideCover.lean`) replace `exists_side_gram` at its
three call sites (`L1/Existence.lean`, twice, and `PRM/Converse.lean`), and the twelve modules that formalised return
F's radical construction are deleted. (E′), the Step-1-free form for every G ∈ 𝒢°, was not attempted; it would need
Conjecture C and is not needed by the proof.

## Statement

> **Theorem J.** Let θ be a strict seed (unit phases, R(θ) > 0), let (s, t, r) be its horizontal or its vertical side
> Gram datum, and let ζ be either root of ζ² − χζ + g²η. Then there is a normalised phase side B = (1; x; y),
> x, y ∈ T³, with Gram datum (s, t, r) and signature T(B) = −Ψ(B) = ζ.

In Lean (ρ the four seed phases, `Strict ρ` = unit phases and R > 0):

```lean
theorem exists_side_h (h : Strict ρ) {ζ : ℂ}
    (hζ : ζ ^ 2 = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) * ζ - ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = sh ρ ∧ sS y = th ρ ∧ rS x y = rh ρ ∧ TS x y = ζ
```

and `exists_side_v`, the same with `(sv ρ, tv ρ, rv ρ)`. The old `exists_side_gram` held for all Gram data in 𝒢′
(R > 0 and det(6I − G) ≥ 0); the new theorems hold for the Gram data of strict seeds, which is all the three call
sites use. `NoFourMUBs.Final.no_four_mubs` is unchanged in statement.

## Proof

Notation as in the brief: a side B(x, y) with angles φ = (a, b) ∈ ℝ⁶, xⱼ = e^{iaⱼ}, yⱼ = e^{ibⱼ}; its Gram datum
γ(φ) = (s, t, r) = (Σ xⱼ, Σ yⱼ, Σ x̄ⱼ yⱼ) ∈ ℂ³ ≅ ℝ⁶; its signature T = −Ψ. For ε = ±1 let

  W_ε = {γ(B) : ε Im T(B) > 0},  W̄_ε = {γ(B) : ε Im T(B) ≥ 0}  (B ranging over normalised phase sides).

**Lemma J.1 (identity (J), Laplace form).** For indeterminates x, X, y, Y ∈ ℂ³ let N be the 6×6 matrix with rows
(x | 0), (X | 0), (0 | y), (0 | Y), (−Xy | Xy), (−xY | xY), where Xy = (Xⱼyⱼ)ⱼ, and let D(u, v, w) be the 3×3
determinant with rows u, v, w. Then, as polynomials,

  det N = D(x, X, y) D(Y, Xy, xY) − D(x, X, Y) D(y, Xy, xY),

and on the torus (X = x̄, Y = ȳ) this equals T̄ − T = −2i Im T.

*Proof.* The first identity is the Laplace expansion along the first three columns (only the row triples
{x, X, y} and {x, X, Y} have nonzero minors there). The second is a Laurent identity in x, y after X = x⁻¹,
Y = y⁻¹. Both are checked by `ring` in Lean (`det_jac_laplace`, `det_jac`). ∎

N is the derivative of (s, s̄, t, t̄, r, r̄) in the angles (a, b), divided by i, up to the signs of the conjugate
rows. Passing from (z, z̄) to (Re z, Im z) gives the brief's form det ∂(Re s, …, Im r)/∂(a, b) = ¼ Im Ψ, which
`check_jacobian.py` certifies; the Lean proof uses only Lemma J.1.

**Lemma J.2 (regularity).** If Im T(B(φ)) ≠ 0, the real derivative Dγ(φ) : ℝ⁶ → ℂ³ is invertible.

*Proof.* If Dγ(φ)v = 0 for v ∈ ℝ⁶, the three complex equations and their conjugates say N v = 0 (v real), and
det N ≠ 0 by Lemma J.1, so v = 0. The real dimensions agree. (`dA_injective`.) ∎

**Lemma J.3.** If a phase side has R(γ(B)) > 0, then Im T(B) ≠ 0.

*Proof.* R = 4g²η − χ² > 0 forces g ≠ 0, and g = |det B|², so det B ≠ 0 and Lemma 1.1 gives R = 4 (Im T)².
(`im_ne_of_gR`.) ∎

**Lemma J.4.** W_ε is open and W̄_ε is closed in ℂ³.

*Proof.* Let γ(φ) ∈ W_ε. The set O = {ψ : ε Im T(B(ψ)) > 0} is an open neighbourhood of φ, and by Lemma J.2 and
the inverse function theorem γ maps every neighbourhood of φ onto a neighbourhood of γ(φ); so W_ε ⊇ γ(O) is a
neighbourhood of γ(φ). W̄_ε is the continuous image of the compact set {(x, y) ∈ T⁶ : ε Im T ≥ 0}.
(`map_nhds_fA`, `isOpen_sideSet`, `isClosed_sideSetC`.) ∎

**Lemma J.5 (anchors).** At each of the 18 maxima θ of R (Theorem 2.1), G_h(θ) ∈ W₊ and G_v(θ) ∈ W₋.

*Proof.* The matched completion H₀ at the base anchor (`Step2/BaseAnchor`) moves to a matched completion at every
anchor (`matched_moveWord`, `anchorSeed_eq`). The right block of a matched completion is a normalised side with
Gram datum G_h(θ) and 2T = χ + i√R; the lower block, transposed, is one with Gram datum G_v(θ) and
2T = χ − i√R. (`anchor_matched`, `sides_of_matched`.) ∎

**Proposition J.6.** For every strict seed θ, G_h(θ) and G_v(θ) lie in W₊ ∩ W₋.

*Proof.* Let S = {R > 0} ⊂ T⁴ and U = {θ ∈ S : G_h(θ) ∈ W₊}. U is open in S by Lemma J.4, since G_h is continuous.
By Lemma J.3, U = {θ ∈ S : G_h(θ) ∈ W̄₊}, which is closed in S. By Lemma J.5 and Theorem 2.1, U contains every
positive local maximum of R. A clopen subset of S containing all positive local maxima is S: otherwise R attains its
maximum on the compact closure of S ∖ U at a point of S ∖ U (where R > 0), which is then a local maximum of R on T⁴
(`Step2.TopologyCore.superlevel_clopen_eq_univ`). So G_h(S) ⊆ W₊; likewise G_v(S) ⊆ W₋. For the other sign: the
conjugate seed θ̄ is strict with R(θ̄) = R(θ), its Gram data are conj G_h(θ), conj G_v(θ), and conjugating a side
conjugates its Gram datum and its signature. (`cover`, `mem_of_conj`, `side_h_mem`, `side_v_mem`.) ∎

*Proof of Theorem J.* (ζ − ζ̄)² = χ² − 4g²η = −R < 0, so Im ζ ≠ 0. By Proposition J.6 there is a side B with the
given Gram datum and sign Im T(B) = sign Im ζ. By Lemma 1.1, T(B) is a root of the same quadratic, so T(B) ∈ {ζ, ζ̄},
and the sign excludes ζ̄. (`exists_side_of_mem`.) ∎

**No new mathematics.** Everything above is in the brief: identity (J) (in its Laplace form), the inverse
function theorem, compactness of the torus of sides, Lemma 1.1, and route A's clopen/maximum argument with the H₀
anchors. The other sign comes from conjugating the seed rather than from conjugation-closure of the anchor orbit;
this is the symmetry the brief invokes, applied at every strict seed instead of at the anchors. Conjecture C is not
used.

**Inputs.** Lemma 1.1 (`PRM/SideRoot`), Theorem 2.1 (`Step1Geo.maximumCensus`), H₀ and the anchor transport
(`Step2/BaseAnchor`, `Step2/AnchorTransport`), the Step 2 superlevel lemma (`Step2/TopologyCore`), and Mathlib's
inverse function theorem (`HasStrictFDerivAt.map_nhds_eq_of_surj`). Neither [CT] nor return F's radicals is used.
Matched existence (L1) therefore now depends on Step 1 and H₀, which the main theorem uses anyway (Theorem 3.1).

## Lean changes

| | Before (`8481bda5`) | After |
|---|---|---|
| Side-existence modules | 12 (`SideBridge`, `SideCheckCore`, `SideCheckNorm`, `SideCheckY0`, `SideCheckY1`, `SideCircuits`, `SideConstruction`, `SideConstructionCore`, `SideConstructionPoly`, `SideExistence`, `SideIdentities`, `SideInput`) | 3 (`SideGram`, `SideJacobian`, `SideCover`) |
| Source lines | 1,674 (92.7 kB) | 674, of which 55 moved from `PRM/Converse` (`G_eq'`, `Gv_eq'`, `jS_eq` … `RS_eq`, `eq_or_eq_conj_of_roots`) |
| Net change in `lean/` | | 692 insertions, 1,749 deletions (about −1,060 lines) |
| Kernel/elaboration time | `SideCheckY1` about 42 min (10 GB), `SideCheckY0` about 12 min (8 GB), `SideCheckCore`/`Norm` minutes, plus the construction modules (from `lean/README.md`'s table; about 54 kernel-minutes in all) | `SideGram` 10 s, `SideJacobian` 15 s, `SideCover` 11 s wall, each at 5.8–6.0 GB peak RSS (the Mathlib import alone is about 5.8 GB) |
| `.olean` size | 17.6 MB for the 8 of the 12 modules built here (`SideConstructionPoly` 7.9 MB, `SideConstructionCore` 4.5 MB, `SideBridge` 3.6 MB, …); `SideCheckY0`, `Y1`, `SideExistence` and `SideIdentities` not built in this worktree | 13.3 MB (`SideJacobian` 10.3 MB, mostly the expanded 6×6 determinant; `SideCover` 1.6 MB; `SideGram` 1.4 MB) |
| Build of `NoFourMUBs.Complete` (L1) | about an hour (`README`) | about 20 min: what remains is `FlatCheckF00`–`F11` (218–252 s each, 11.1 GB, built one at a time) plus `FlatCheckMh`/`Qv` |

The norm identities |Pⱼ|² = g² + cⱼχ + cⱼ²η, which `FlatBridge` needs for P₀, P₁, P₂ ≠ 0, were kernel-checked
circuits (`SideCheckNorm`) after a phase rotation; they hold as polynomial identities in (s, s̄, t, t̄, r, r̄), and
are now one `ring` call (`SideGram.normSq_P`).

Call sites: `L1/Existence.lean` (`exists_side_h h …`, `exists_side_v h …`; the hypotheses `det(6I − G) ≥ 0` are no
longer needed there) and `PRM/Converse.lean` (`exists_side_v hst …`). `AxiomsComplete.lean` also audits
`exists_side_h` and `exists_side_v`.

## Checks

- `python3 lean/check_axioms.py --full`: LEAN PASS. `Axioms.lean` 32/32, `Step1/Audit.lean` 216/216,
  `AxiomsComplete.lean` 15/15 theorems, all with only `propext`, `Classical.choice`, `Quot.sound`.
  `NoFourMUBs.Final` is unchanged. Every module was built one at a time; the peak was 13.9 GB
  (`CoverageStripIdNonzeroCheckS1`, unchanged by this work).
- `python3 verify.py`: ALL PASS (69 s). It still replays return F (`l1_side_existence`), now as provenance.

## Open

- (E′), the Step-1-free form for every G ∈ 𝒢°, rests on Conjecture C and was not attempted.
- `SideJacobian`'s 10 MB `.olean` comes from expanding the 6×6 determinant by `simp`. Proving (J) only in its
  3×3 Laplace form, or with the `Identity` circuit checker, would shrink it if that matters.
- `lean/check_axioms.py` builds with Lake's default parallelism; with less than about 30 GB free, build `Complete`
  and `Final` module by module first, as was done here.
