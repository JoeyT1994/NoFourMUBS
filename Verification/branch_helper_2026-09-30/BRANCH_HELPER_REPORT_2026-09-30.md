# Branch-helper return — 30 September 2026

## Outcome

Two additive modules are provided. The residual work produced a new explicit global necessary seed relation and a useful whole-box strict-D0 certificate. The side-chart work produced an independently validated construction pilot and a Julia integration implementation, but **not an executed production quartet-cover pilot**.

| Piece | Completed local pilot | Meaning of acceptance | Remaining gap |
|---|---:|---|---|
| Residual signed-corner prune | **511 / 1,000** | No physical strict-D0 completion of the whole seed box, conditional on the labelled accepted side inputs | 489 sample boxes unresolved; no full residual-layer closure |
| Positive-R implicit side models | **617 / 1,000** | Both side orbits in each orientation and all four forced completion enclosures | 383 contraction failures; Julia runtime/parity/cover tests unrun |

All positive decisions use outward intervals, not floating root/norm estimates. Both 1,000-record pilots are deterministically drawn from the supplied representative lists; they are not the numerical agent's eventual full-refinement survivor lists. Neither sample rate is asserted for the full campaign.

## 1. New residual certificate

The new module is `ProvenResults/SymmetricSignedCornerPrune`.

For a physical horizontal side with columns (1,x_l,y_l), the six symmetric moments needed for the signed determinant of a mixed corner are expressible through s,t,r, the side products u,v, and Pi. Combining the polarized moment identities with the accepted side formulas cancels both the cube-root construction and the 1/g denominator. For each known seed-column pair j<k and each of the two side signs sigma,

    mean_l f(known columns j,k; side column l)
        = alpha_jk(theta)+sigma beta_jk(theta) sqrt(R(theta)).

Here f=i det(L) is real, and alpha,beta are explicit rational functions of the four phase seeds. All six Laurent coefficients and the complete formulas are in `PROOF.md`; the implementation does not leave an unspecified eliminant or a fitted function.

The archive's complementary-square identity implies

    M(H) >= [alpha_jk+sigma beta_jk sqrt(R)]^2.

Therefore a strict-D0 completion must have one side sign for which all three such squares are at most R. The predicate excludes a whole seed box when it proves a violating pair for **each** sign. Different signs may use different pairs. The transpose is an additional independently justified frame, not an unproved coverage guess.

The rational coefficients are bounded with outward second-order derivative jets. Their derivatives do not contain 1/sqrt(R). When the seed box crosses R=0, only the physical strict subset is used in the final square-root interval. This is why the method can work when every corner is small and raw side radicals fail.

### Demonstrated exclusions

The horizontal test accepted 471 boxes; the transpose accepted another 40. All 511 are signed-mean exclusions, not merely R≤0 exclusions. **172 of them have a recomputed R enclosure crossing zero.**

| Nearest-F6 class, source metadata | Tested | Excluded |
|---|---:|---:|
| 0,0,2,4 | 88 | 88 |
| 0,2,3,0 | 318 | 128 |
| 0,2,3,2 | 49 | 39 |
| 1,2,2,4 | 207 | 10 |
| 2,4,4,2 | 321 | 229 |
| 4,5,0,3 | 17 | 17 |
| **Total** | **1,000** | **511** |

The result does **not** certify an F6 carrier chart, use the inactive-class constant (1112/1915)^2, or identify seed distances with matrix radii. It bypasses that lifting problem. It does not assert that the remaining boxes contain physical D0 carriers.

### Verification

The included full replay checks source hashes and source-line selection; independently regenerates the 48-term determinant, the universal complementary-square identity and transpose invariance; checks the implemented coefficient factors and polarized moment identities; verifies all three denominator cancellations; checks the exact mean-square inequality; and replays all 1,000 outward seed decisions. Six negative controls containing exact physical D0 Fourier-family points are rejected, as required.

The accepted side-fiber exhaustion and side-formula identities are explicitly labelled assumptions. Their source hashes are checked; their global proofs are not claimed to have been supplied here. The arithmetic backend is part of the stated software trust base.

## 2. Implicit side-chart provider

The new module is `ProvenResults/SideChartCover`.

`provider.jl` supplies `sidechart_models(theta,rho)` and `certify_cell_sidechart(theta,rho)`. Its side models come from polynomial predictors validated by the six-phase moment contraction test. Completion uses a separately validated fixed inverse of the actual C* block and an outward residual bound. It contains no `hplus_tm` call.

The H injection is in an additive `cover_model.jl`. A verifier confirms that its cover body differs from the pinned production function only in the function's H argument and the replacement of hcell/CoverCell(cell.H) by CoverCell(H). The guarded production FastTM hash is

    7e9c0bc3c08a42094d1f1dca34a61238c7a3510f091db189fa7947f1c2f35baa

### Which completions are covered?

At every seed, two validated side solutions are proved distinct under all six column permutations. The accepted **exactly-two-orbit** theorem then gives complete side-fiber coverage, independently of the floating proposal sign. Do this in both orientations and retain all four pairings. Their independent ordinary side-row and side-column permutations give a finite enclosure of all physical framed completions, including the pointwise H+. Thus there is no unsupported principal-root matching claim and no omitted exceptional pairing.

Only four representatives need be sent to the quartet cover, because ordinary permutations preserve its extension question. All four cover calls must succeed. Nonflat cross-pairings are retained as harmless overenclosures; they are not assumed physical.

The implementation explicitly restores the vertical predictor's seed-variable order before combining it with E and B. It does not apply the ten-chart universal inverse constant to an uncertified original split.

### Executed construction pilot, and its limits

The independent Python implementation uses quadratic implicit phase predictors and a constant-center completion bound. It validates 617 whole boxes and fails side contraction on 383. All 1,000 independently pass inf R>1. Every accepted frozen polynomial, preconditioner, radius and completion residual was revalidated by a separate replay.

On accepted boxes, the median largest side-phase error is approximately 0.000576 radians; the largest is approximately 0.002867 radians. The median largest **complex completion-entry amplitude error** is approximately 0.195; the largest is approximately 0.290. These errors are not seed radii or whole-matrix phase radii. The relatively wide constant-completion enclosures motivate the polynomial completion in the Julia implementation; no measured improvement is claimed without its runtime test.

Julia was absent here and the attempted runtime download failed. **The Julia code has not been compiled or executed.** Consequently the requested regular-box parity and 1,000-box production quartet-cover success rate are not available. `test_regular.jl` and the bounded, shardable `pilot.jl` are supplied for that integration gate. They must not be recorded as passing tests. The Python construction count is not a proxy for them.

The supplied `ResidualCells/atlas.jl` is subdivision followed by hplus_tm retries rather than the implicit model provider described in the brief. No success was attributed to that path.

## 3. Cost and operating constraints

| Executed task | Summed worker CPU seconds | CPU seconds per attempted box | Four-worker wall seconds |
|---|---:|---:|---:|
| Residual signed-mean pilot | 439.810 | 0.439810 | 111.301 |
| Frozen implicit construction pilot | 97.829 | 0.097829 | 28.296 |

At these throughputs, scanning the supplied 338,054-record residual list would take about **41.3 CPU hours**; construction-only scanning of the 179,671-record positive-R list would take about **4.88 CPU hours**. These are arithmetic throughput extrapolations on comparable hardware, not measured full-list runs or coverage-yield predictions. Production cover cost is unmeasured. Costs for the final refined branch layer cannot be inferred from these two representative lists.

Only the local bounded pilots and verification replays were run. No cluster task was submitted, and no run approached 5,000 CPU hours. Cell records are bundled into one shard per pilot, not one file per box. No existing production source, registry or run-of-record results were edited.

## 4. Files and replay

Each module contains `PROOF.md`, `verify.py`, a public predicate, `INPUTS.json`, bundled sample/pilot data, a summary, and `verification_receipt.txt`. The side module additionally supplies the additive Julia provider, cover injection, regular regression and bounded cover pilot. Python package versions are listed in `requirements_branch_helper.txt`.

```sh
python ProvenResults/SymmetricSignedCornerPrune/verify.py --project-root /path/to/NoFourMUBS --all
python ProvenResults/SideChartCover/verify.py --project-root /path/to/NoFourMUBS --all
```

The Python replays passed on the delivered data. The mathematical result is partial but useful: 511 whole residual boxes are removed from strict D0. The engineering result is a validated construction path plus unexecuted integration code, not a completed branch-layer or no-four-MUB certificate.
