# Band certificate (approach A): reconstruction-free non-maximality near the R = 0 curve

This report covers a whole seed box Θ. Within that box it addresses every order-6 complex Hadamard H whose dephased top-left corner is E(θ), with θ ∈ Θ.

*Status: 12 of 12 hard boxes certified with every leaf verified in Arb, 7 Oct 2026.*

## Statement

The certificate shows that every such H has a corner c with R_c(H) > M_Θ, where M_Θ ≥ max over Θ of R(E). Hence E is never a maximal corner of any completion, H₊ included, so Θ ∩ D₀ = ∅.

**Inputs not used.** The certificate uses neither the radical formula nor H₊. It does not use MC2 or any side-orbit count. It does not use R(θ) > 0, so it covers the whole closed box.

## Method

**1. Side coordinates.** Orthogonality gives three equations for the side block B = [[1,1,1],[x₁,x₂,x₃],[y₁,y₂,y₃]]:
- Σx = s
- Σy = t
- Σ y x̄ = r

Two unit numbers with sum m are u(|m|/2 ± ik), where u = m/|m| and k = √(1 − |m|²/4). So the label (arg x₁, arg y₁) fixes B up to one sign. In the same way, the label (arg p₁, arg q₁) fixes C up to one sign.

**2. Fixing the remaining signs.** Swapping columns 4 and 5 of H, or rows 4 and 5, permutes the 400 corners and so preserves the conclusion. Hence one root choice for x₂ and one for p₂ may be fixed without loss of generality.

**3. Arc reduction (optional).**
- *Lemma.* If three unit numbers sum to a number of modulus below 1 − 2cos(9/8) ≈ 0.1376, then one of them has phase in [−9/8, 9/8].
- *Use.* The hypothesis is re-checked in Arb on the box (|s|, |s_v| ≈ 0.045 here). It reduces the number of label pairs about eightfold.

**4. The D block without radicals.** The identity gD + CWB = 0, with W = E†adj(G), comes from PairedSidePrune. Here g ≈ 26.9 is certified away from 0, so D = −CWB/g.

**5. Branch and bound.** The search runs over 8-dimensional boxes: the two side labels plus θ. Every quantity is a first-order complex affine form with an explicit Taylor remainder. Each box gets the following tests:

| Test | Condition | Outcome |
|---|---|---|
| T1 | the B side identity cannot vanish on the box | excluded |
| T2 | the C side identity cannot vanish on the box | excluded |
| T3 | some \|D_ij\|² − 1 cannot vanish (flatness fails) | excluded |
| ACC | \|Q(N)\| > √(M_Θ/64) for some 3×3 block N | accepted |

ACC uses the complementary-corner identity R = 64Q². The entry form of Q was checked against all 400 corners to 1e-11.

Boxes that pass no test are bisected adaptively. If the budget or minimum radius is reached first, the result is "not accepted".

## Rigour

1. **Search.** The float search (`cert.py`, `aff.py`) only proposes a tree, which it writes to a tape.
2. **Arb replay.** `verify.py` and `arb_replay.py` rebuild the tree from the seed box alone and re-check every leaf decision in Arb at 106 bits. A missing node or an unconfirmed decision fails the run.
3. **Exact coverage.** `cover_check.py` checks, in exact rationals, that every bisection and every label root is covered.
4. **The cap.** M_Θ is the repo's Arb Taylor cap (SideColumnPrune `R_upper_bound`, unchanged).

**Controls.**
- Exact numerical completions in all 36 row and column orders are never excluded at their own point.
- Tampered tapes are rejected: a raised q₀, a flatness leaf relabelled as accepted, and a deleted split.
- At c₀ = 1000 nothing is accepted, so the exclusion tests are not vacuous.

## Results on the 12 hard boxes

| Quantity | Value |
|---|---|
| Boxes accepted, Arb-verified (`results/final.json`, `results/final_verify.json`) | 12 of 12 |
| M_Θ | 2.8e-5 to 4.4e-5 |
| Nodes per box | 205k to 384k |
| Accepted leaves per box | 1.6k to 5.3k |
| Label half-width at accepted leaves | ≥ 0.0156 rad, mostly 0.03 to 0.06 |
| Seed-box subdivisions | none |
| Search time per box | 15 to 28 s |
| Arb verification per box | 218 to 309 s |

## Production on the open set (7 Oct 2026)

**Input.** The 6,408 inventory boxes still open after hybrid round 2, at radius π/2¹³ + 2⁻⁴⁰ (`band_prod.py`, 24 preempt nodes, ~2 h).

**Results.**

| Outcome | Boxes |
|---|---:|
| Accepted: float search, Arb replay of every leaf, exact split and root coverage | **6,370** |
| Search reached the minimum radius | 38 |
| Search succeeded but replay failed | 0 |

Each accepted box took about 10 core-minutes. Results, tapes and tape hashes are in `$PSD_ROOT/band/prod/out/c*/`. The ledger source `band` in `full_ledger.py` rechecks each tape hash, the box against the inventory centre and radius, and the tiling of any split children.

**The 38 boxes that fail all lie at exact seeds.**
- **2 boxes at the (2,4,4,2)/(4,2,2,4) seeds** (6491830, 17434864). They are already credited by `ball40_seed`: the punctured 1/40-ball theorem plus R = 0 at the seed.
- **36 boxes within about 10⁻³ of the (0,0,2,4)-class seeds** ±(0, 0, 2π/3, −2π/3).

**What happens at the (0,0,2,4)-class seeds.**
- At the seed the corner has two equal rows. So g = det(6I − EE†) = 0 in every frame, and the side parametrization sits at a square-root branch point.
- The completions form a continuum through F6.
- `seed0024/seed_quartic.py` proves exactly that R = −1296·q(h)² + O(h⁵) for an explicit quadratic q. But R ≈ +c·t⁶ > 0 on the cone q = 0, so R < 0 cannot exclude these boxes.
- Splitting does not help: all 608 children of the first split failed the same way.
- Both forms of D are singular at the reframed F6 point, D = −CWB/g and D = −(C†)⁻¹E†B. Condition numbers there are about 4·10¹⁵.
- The Arb cap of R(E) on these boxes is at most 1.6·10⁻⁸. A completion in which E is maximal therefore has every corner below that, and the averaging lemma (Step 2 of `simplerproof/`, needed here only in a very weak form) puts it inside the 1/30 F6 tube.
- These 36 boxes are the only part of the post-E inventory that this run leaves to that lemma. The ledger lists them as delegated.

## Findings

- **A fixed target c₀ = 1 is too strong near F6.** At a point of the curve the completions form one closed loop, numerically about 38 to 40 rad long in the 21 free phases. Along it the largest corner R has median about 100 to 160. But it dips to 0.73–9.4 where H comes within about 0.04 rad of an F6-equivalent matrix. The right comparison is with sup R(E), which is what this certificate proves.
- **Approach B (a root-certificate tube) is not recommended.**
  - The tube would need a width of up to about 0.6 rad.
  - The Krawczyk contraction fails at that width, since σ₂ ≈ 0.011 to 0.04.
  - Completeness outside the tube would need approach A anyway.

## Files

| Role | Files |
|---|---|
| Certificate | `aff.py`, `cert.py` |
| Verifier | `arb_replay.py`, `verify.py`, `verify_all.py`, `cover_check.py` |
| Drivers | `run_one.py`, `run_all.py`, `band_prod.py` (production on a box list), `band_split.py` (16-child split with exact tiling) |
| Seed analysis | `seed0024/seed_quartic.py` (exact Taylor structure of R at the (0,0,2,4) seeds), `seed0024/seed_boxes38*.json*` |
| Control | `test_sanity.py` |
| Exploration (not rigorous) | `numlib.py`, `explore_*.py`, `test_labels.py`, `explore/` |
| Results | `results/` (tapes: `results/tapes/`) |

**To reproduce:**
1. `python3 run_all.py final '{"arc": true, "tape": true}'`
2. `python3 verify_all.py final`
3. `python3 cover_check.py final`

**Before citing.** The affine remainder bounds and the entry form of Q should get an independent review.
