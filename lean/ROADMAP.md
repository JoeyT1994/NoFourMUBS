# Roadmap: formalising the minimal proof in Lean

Target: discharge `NoFourMUBs.Inputs` so that `no_four_mubs` holds unconditionally, except for one explicitly named, externally checked computational certificate.

## Layer 0: done
- `Basic`: MUBs, quartet edges, and four MUBs ⇒ a Hadamard quartet edge.
- `Skeleton` and `Invariance`: invariance under equivalence and conjugation.
- `Main`: `no_four_mubs : Inputs Ball → ¬ FourMUBs`.

## Layer 1: the local lemmas (Lean engineering; the mathematics is written)

| Module | Statement | Source | Notes |
|---|---|---|---|
| `Horizontal` | horizontal matrices, the projector h, and the gauge e^{iY} ≅ e^{ih(Y)} | PROOF.md §0 | linear algebra |
| `NormalBound` | Lemma 3.1, including ‖Φ″[w, w′]‖ ≤ 2√3‖w‖‖w′‖ on horizontal w, w′ | `proof/atlas/ballrecord.py` docstring, `RIGOUR.md` §1 | Taylor with remainder on a segment, plus Cauchy–Schwarz |
| `StageC` | C1–C5 of `STAGEC.md`: bin geometry, single-vector and joint tests, labels, edges, the clique implication | `proof/atlas/STAGEC.md` | complex exponential estimates; the clique search is a decidable finite statement |
| `Transfer` | Lemma 4.1 | `proof/atlas/COVERAGE.md` | norms and permutations |
| `TaoRecord` | Remark 3.3: S₆ isolated, and not a quartet edge given its Stage C certificate | `proof/atlas/tao.py` | mean-value theorem plus Lemma 3.1 with k = 0 |

## Layer 2: the certificate interface
- `Certificate`: a Lean structure mirroring `atlas_certificate.json.gz` (centres, radii, frames, targets).
- `CertificateValid`: the Prop stating that every check of `certify.py` holds: σ, normal bound, Stage C outcome, boundary tree and nonemptiness.
- **Decision:** `CertificateValid cert` stays an explicit hypothesis of the final theorem. It is checked externally, twice and independently (`proof/atlas/certify.py`, `proof/independent/`). This mirrors upstream's treatment of its retained calculations.
- **Optional, later:** a Lean checker proved sound and run with `native_decide`. This needs a much smaller certificate first, and adds trust in Lean's compiler.

## Layer 3: coverage (Steps 1, 2 and 4)

| Module | Statement | Needs |
|---|---|---|
| `QuotientSpace` | X = (𝓗/≅) ∖ {Tao}, with the quotient phase metric and its topology | Mathlib quotients and metric spaces |
| `Clopen` | the coverage corollary: a nonempty finite union of Γ-closed Records with certified transfers is clopen, hence everything (Mathlib `IsClopen.eq_univ`) | `Transfer` plus `QuotientSpace` |
| `Step1` | the census of maxima of R: deltoid reduction, resultants, Sturm counts, the two-boundary classification | exact polynomial identities (`ring`/`polyrith`), Sturm or SOS certificates, rational intervals. **Handoff:** re-express the Sturm-count steps as Lean-checkable certificates |
| `Reconstruction` | H₊(θ) and its continuity on S as a class map | the formulas of `MinimalConstruction/RECONSTRUCTION.md` |
| `Step2` | X is connected | `Step1` and `Reconstruction`, plus MC1–MC5 |

## The upstream gap (must be closed for Step 2)

Upstream's `LEAN_ASSUMES_AND_PROVES.md` says the following are not formalised, yet MC1–MC5 use them:
- the physical seed-domain theorem (`thm:regular-seed-domain`);
- global product-regular reach (`thm:global-product-regular-escape`);
- the generic quadratic–cubic reconstruction geometry.

Plan: formalise them in our repository on top of upstream (or upstream them with Mateo). Their paper proofs exist in `ClassificationPaper/source`. A handoff is needed only where a paper step relies on facts that aren't stated precisely enough to formalise.

## Mathematics handoffs (in flight or planned)
- **In flight:** uniform conditioning (rank 21, σ ≥ √3), which would simplify Layer 1 (uniform Records).
- **In flight:** MUB triples (T = Fourier families; the ω-locus).
- **Planned:** Lean-friendly certificates for Step 1's Sturm and interval steps.
- **Planned:** a precise statement list for the seed-domain and global-reach theorems.
