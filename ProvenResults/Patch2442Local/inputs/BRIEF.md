# Brief: explicit seed-radius exclusion at the stationary F3 seed (2,4,4,2)

*NoFourMUBS, 3 October 2026. Read this file first, then `repo/ProvenResults/Patch2442Region_v3/PROOF.md`.*

## 1. Where the proof stands

The theorem we are proving is: C^6 has no four mutually unbiased bases. The proof is a computer-assisted
contradiction over a four-phase seed space.

**Seeds.** Let θ = (θ1..θ4) be four angles and put (a,b,c,d) = e^{iθ}. Every complex Hadamard matrix of order six
other than F6 and Tao is equivalent to H₊(θ) for some seed θ with R > 0. Here H₊ is the positive-sheet completion
of the dephased corner E(θ) = [[1,1,1],[1,a,b],[1,c,d]]; see `repo/MinimalConstruction/RECONSTRUCTION.md`.

**The search domain.** The search runs over strict D0, the seeds whose corner E(θ) is the maximal one among all 400
positional 3×3 corners of H, with R > 0. F6 and Tao are excluded by published theorems.

**What each piece of the domain needs.** Every box of seeds must carry one of two certified statements:
- **(a)** no physical Hadamard has this corner in strict D0 anywhere in the box;
- **(b)** H₊(θ) is not a quartet edge, i.e. {I, H₊(θ)/√6} does not extend to four MUBs.

**Status.** Everything is closed except one patch: a ring of seed boxes around the **stationary F3 seed**
θ0 = (2,4,4,2)·π/3, that is (a,b,c,d) = (ω, ω², ω², ω) with ω = e^{2πi/3}.
- At θ0, E is F3, R = 0 and H₊ is F6, which is excluded.
- In the pilot, the open boxes have centres at sup-circular distance **0.04129 to 0.04666 rad** from θ0. Each box
  has half-width π/8192 + 2^-40 ≈ 0.000384.
- Every box nearer to θ0 was already closed by earlier stages.

**What has been tried on the ring.**
- The production cover fails there: it reaches a branch point of D0.
- `Patch2442Region_v3` uses the signed-mean exclusion test with outward Taylor models. It certifies 70% of the
  hardest leaves. Every failure is a CPU timeout; none fails the inequality.
- **At every one of the 4,174 open leaf centres, the exact-point version of that test succeeds**
  (`repo/ProvenResults/Patch2442Region_v3/results/point_diagnostics.jsonl.gz`).

So statement (a) appears to be true on the whole ring. What is missing is a proof that is uniform near the
degenerate point θ0. The full run's ring is roughly 100 times the pilot. Its exact extent will be known on
Sunday, 4 October.

## 2. The task: prove (a) on an explicit punctured ball around θ0

**Theorem to prove.** There is an explicit r* > 0 such that, for every θ with 0 < ‖θ − θ0‖∞ ≤ r* (sup-norm of
circular distances), no physical order-six Hadamard matrix has the dephased leading corner E(θ) with R(E) > 0 and
R(E) maximal among all 400 positional corners.

**Targets for r\*.**
- **Pilot ring: r\* ≥ 0.0475.** This covers it: 0.04666 + 0.000384, rounded up.
- **Full run: as large as you can.** Report the best r* the method gives, and how it trades off against effort.
  r* ≥ 0.06 would very likely cover the full run as well.

**Symmetry.** Also treat the conjugate seed (4,2,2,4)·π/3. Complex conjugation maps θ to −θ. Either prove the
symmetry statement that transfers the theorem to that seed, or prove both cases.

### Suggested route: local expansion (blow-up) at θ0

1. **Formulas.** Use exactly the definitions in `Patch2442Region_v3/PROOF.md` §1–2:
   - s, t, r, X, Y, Z, p, J, W, g, η, χ and R;
   - P0, P1, P2 and Δ = |P0 P1 P2|²;
   - the cleared signed-mean coefficients A, B (from SignedCornerPSDPrune `PROOF.md`, equations (7)–(8)) and
     D = 3Δ;
   - C = A² + (B² − D²)R, T = 2AB and F = C² − T²R.

   At a physical strict point, each side sign σ requires C + σ T √R ≤ 0. The condition C > 0 and F > 0 excludes
   both signs. The per-sign variants, and the combination of the two orientations via MC4 (when R < 243), are in
   §1 and §4 of that PROOF.md. Use any of them.
2. **Orders of vanishing.** Put θ = θ0 + u. Compute exactly, in u, the orders of vanishing at u = 0 and the leading
   homogeneous forms of R, A, B, Δ, C and F. The phases are a = ω e^{iu1}, and similarly for b, c, d.
   - The seed is called "stationary" because R has a degenerate critical point there, so expect high orders.
   - Note whether Δ vanishes at θ0.
3. **Leading-order inequality.** Prove the needed inequality for the leading forms on the unit sup-sphere ‖u‖∞ = 1.
   This is a compact, finite problem: use an exact interval cover, SOS, or exact algebra.
4. **Remainder.** Bound the remainders explicitly. Derivatives of unit exponentials have modulus at most 1. Then
   r* is the radius at which the leading term provably dominates.
5. **Directions where the leading form degenerates.** These include directions where R's leading form vanishes;
   157 open leaves have R crossing zero in both orientations. Use a weighted blow-up chart there. Alternatively use
   a τ = √R chart, as ExactPSDRegionCertificates does with τ² = R. Wherever R ≤ 0 holds, strict D0 is empty
   trivially.

**If the leading-order inequality fails in some direction,** report it with exact data. That would be a genuine
obstruction: physical strict-D0 seeds approaching the ring along that direction. It matters as much as a proof.

### Other routes, if the first stalls
- **(B) Close the remaining leaves box by box.** Extend v3 with a τ = √R chart, or a higher Taylor order, on its
  1,271 unresolved leaves (`results/leaves_bounded.ids.json`) and on the 497 parents.
- **(C) Statement (b) via the F6 tube.** It is proved unconditionally (`ClusterTube`) that no quartet edge lies within
  projector distance 1/30 of the F6 monomial orbit.
  - First measure the projector distance from H₊(θ) to that orbit over the ring.
  - If the ring lies inside the tube with margin, certify that whole boxes are inside it.
  - Do **not** convert seed radii into matrix radii by any unproved Lipschitz assumption.

## 3. Deliverable

A new directory, `ProvenResults/Patch2442Local/`, containing:

- **`PROOF.md`.** State the theorem with its explicit r* (an exact rational). List every adopted input by file and
  section, as `Patch2442Region_v3/PROOF.md` does:
  - SignedCornerPSDPrune §2–3 and §5;
  - CornerBounds §2;
  - MC2–MC4.

  Inputs MC1, S1 and S2 are optional.
- **`verify.py`.** An exact-rational or outward-rounded check of every finite computation in the proof: the cover
  of the sphere, the remainder constants and the symbolic expansions. It must also support
  `python verify.py --boxes LIST.jsonl.gz --output RESULTS.jsonl.gz`.
  - Input uses the format of the files in `data/`: exact rational strings for `centers` and `radii`.
  - Output is one record per input: `{"id", "ok", "reason", "statement"}`.
  - A box is accepted only if its whole closed box lies inside the ball 0 < ‖θ − θ0‖∞ ≤ r*, with exact circular
    wrap, around θ0 or the conjugate seed.
- **Controls.**
  - Boxes outside the ball must be rejected.
  - **Every known physical strict-D0 point must lie outside the ball.** v3's controls.py constructs six such
    points. If one of them lies inside the ball, the theorem is false.
- **`MANIFEST.sha256`** and the CPU cost.

## 4. Rules
- Acceptance is exact or outward-interval only. No sampling, and no extrapolation from samples.
- Seed radii (angles) and matrix or projector radii are different quantities. Never convert between them without
  a proof.
- Write only under `ProvenResults/Patch2442Local/`.
- Partial results are welcome if their scope is stated exactly. Examples: an r* below target, or a theorem on a
  stated set of directions.

## 5. Contents of this zip

**`repo/`**: source files, at their repository paths.

| Path | What it is |
|---|---|
| `PROOF_OF_RECORD.md` | §1: definitions, the reduction, and inputs A1–A4 and E1–E3 |
| `PROOF_OF_RECORD_STATUS.md` | What is closed |
| `MinimalConstruction/RECONSTRUCTION.md` | H₊ and the side constructor |
| `MinimalConstruction/Proofs/*.md` | MC1–MC5 |
| `ProvenResults/SignedCornerPSDPrune/` | Signed-moment identities, PROOF.md and engine |
| `ProvenResults/Patch2442Region_v3/` | The (3.2) test with Taylor/Bernstein enclosures, PROOF.md, engine and point diagnostics |
| `ProvenResults/ExactPSDRegionCertificates/` | The τ² = R chart |
| `ProvenResults/CornerBounds/PROOF.md` | The basic square identity |
| `ProvenResults/BalancedProducts/BalancedFourSeedIdentity.md` | Balanced four-seed identity (a pinned input of v3) |
| `ProvenResults/ChartConditioning/RESULTS.md` | Theorem 3 and Corollary 3.2: qualitative nonapproach |
| `ProvenResults/EffectiveConfinement/PROOF.md` | Effective confinement (inputs to E3) |
| `ProvenResults/FourierNeighbourhood/ClusterTube/` | The F6 1/30 tube |
| `NumericalCampaign/Campaign/branch95/f6_seeds.txt` | Seed table. Columns: kind, class (4), seed (4), in π/3 units |

**`data/`**: boxes. Radii are outward rationals of π/2^level + 2^-40, at most 2^-80 above the exact value. Centres
are exact binary64 dyadics.

| File | Contents |
|---|---|
| `pilot_ring_all_2354.jsonl.gz` | Every pilot ring box (level 13), with `seed_distance_rad` |
| `parents_497.jsonl.gz` | The 497 open after production cover and PSD |
| `leaves_4174.jsonl.gz` | Their 4,174 open level-14 leaves |
