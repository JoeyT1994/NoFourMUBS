# Can the atlas certificate be checked inside the Lean kernel? (prototype and benchmark, 14 Oct 2026)

**Short answer.**
- **Yes, in principle.** The dominant Stage C ingredient was checked end to end by `decide +kernel` on a real Record (Record 100, R = 0.08 rad). That ingredient is the vector-bin cover with the direct single-vector tests. A soundness theorem connects the check to the existing `StageC` predicates.
- **Trust base.** Only the standard axioms (`propext`, `Classical.choice`, `Quot.sound`). No `sorry`, no `native_decide`.
- **Cost as built.** About 26 CPU-minutes for that one ingredient on one Record. Each kernel declaration peaks at about 3.5–5.5 GB.
- **Naive extrapolation.** The full certificate (Stage C, normal bound and transfers) would take about **8,000–24,000 CPU-hours** for 12,021 Records, spread over millions of declarations.

**Recommendation: conditional GO.** There is no mathematical or technical blocker. All arithmetic is integer or rational, and the soundness proofs are mechanical. But do **not** scale up the prototype encoding. The gate is in §6: a Nat-only tangent-test checker on Record 100 at ≤ 10 ms and ≤ 1 MB per test. If it passes, run the full check on rusty, at roughly 1–2 days on a few hundred cores. If it fails, NO-GO for the bin-tree route in the kernel.

Everything new lives in:
- `lean/NoFourMUBs/KernelAtlas/` (Lean);
- `lean/generators/kernelatlas/` (Python).

None of it is imported by `NoFourMUBs.lean`, so the default build is unchanged. All files are untracked, for review.

---

## 1. What was built

| File | Content |
|---|---|
| `KernelAtlas/Trig.lean` (181 lines) | Rational enclosures of `exp(ix)` (so `cos x`, `sin x`) for `x : ℚ`, as dyadic integers at scale `2^p`. Proved sound against `Real.cos` / `Real.sin` |
| `KernelAtlas/Bins.lean` (884 lines) | The kernel bin checker (`rejectB`, `binOK`, `slabOK`, `topOK`) and its soundness theorem down to `StageC.LeafRej` and the `htree` cover |
| `KernelAtlas/Tables.lean` (399 lines) | Kernel-verified tables: `EU[k] ≈ e(k/192)`, `EP[j][i] ≈ exp(−iP_ji)`, and the node values `round(EU·EP/2^p)`. Turns them into the `NodeOK` / `TreeOK` hypotheses of `Bins.lean` |
| `KernelAtlas/Rec100/Data.lean` (generated, 158 KB) | Record 100's constants, thresholds, tables and 60 coordinate trees. Kernel checks: `parOK`, `tabOK`, `rootsOK` |
| `KernelAtlas/Rec100/Slab00…11.lean` (generated) | 144 kernel declarations `sub_b1_b2 : slabOK cfg leafT T1_b1 [T2_b2] L3 L4 L5 = true`, one per 1/144 of the level-12 grid |
| `KernelAtlas/Rec100/Cover.lean` (generated) | `Rec100.cover`, the end-to-end theorem below |
| `generators/kernelatlas/kbins.py` | Exact-integer mirror of the Lean checker and tables, bit for bit. Used for data generation and pre-flight counts |
| `generators/kernelatlas/export_record.py` | `python3 export_record.py <idx> <outdir>` writes `Data.lean`, `Slab*.lean` and `Cover.lean` for any Record |
| `generators/kernelatlas/workload_stats.py`, `tangent_y_rule.py` | Per-Record workload statistics (§4) and the multiplier-rule experiment (§5). Exploratory only |

### The end-to-end theorem (Record 100)

```lean
theorem NoFourMUBs.KernelAtlas.Rec100.cover {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tab.pq) T rH n r rF cfg.W0 leafT β
```

`Pmat tab.pq` is the Record centre: the exact binary64 phases in radians. `Covered … β` says β lies in a bin `(u, a)`, with `u₀ = 0` and `|β_j − u_j| ≤ a`, that satisfies one of two things:
- it is rejected for **every** admissible δ, i.e. `∀ δ, Admissible T rH n r rF δ → LeafRej ((1/2π)•P) δ u a`;
- or it is a depth-0 (M = 96) bin.

This is precisely `htree` together with the first disjunct of `hleaf` in `StageC.StageCCert` (`Cert.lean`). It is obtained from `leafRej_of_direct`, both the per-column test and the Frobenius test, in `Interface.lean`.

**Hypotheses that remain:**
- `hK`, `hKb`: the operator-norm bound K ≤ 1 + 10⁻⁹. This needs a small Gram-matrix checker, not yet written.
- `hr`, `hrF`: the Stage C radii in cycles, r ≤ r̄ and r_F ≤ r̄_F. These come from the normal bound (Lemma 3.1), whose evaluation is not in the kernel yet.

`#print axioms Rec100.cover` gives `[propext, Classical.choice, Quot.sound]`. The 144 slab declarations depend on no axioms at all.

## 2. How the checker works, and what is proved

**Trig (`Trig.lean`).**
- `taylorCS x n` is the exact rational Taylor polynomial of `exp(ix)`, computed with a `Nat.rec` recursion.
- `cisRound x n p` rounds it half-up to `2^{-p}`, so stored integers have p + 1 bits for any n.
- `cisRound_spec`: if `|x|/(n+1) ≤ 1/2`, then `‖exp(ix) − (c+is)/2^p‖ ≤ |x|^n/n!·2 + 2^{−p}`. This uses Mathlib's `Complex.exp_bound'`.
- `cos_encl` and `sin_encl` are the real-part and imaginary-part corollaries; `norm_exp_mul_I_sub_le` is the 1-Lipschitz bound used for argument perturbation.
- For |x| ≤ 8, n = 60 gives a remainder below 10⁻²⁷. For |x| ≤ π, n = 30 gives one below 10⁻¹⁷; this is what the atlas uses.
- In `Tables.euB_spec`, e(k/192) uses π̃ = 3.14159265358979323846 with Mathlib's `pi_gt_d20` / `pi_lt_d20`, so the π error is ≤ 10⁻²⁰.

**Arithmetic.**
- p = 28. Complex numbers are Gaussian integers at scale Z = 2^28, stored as offset naturals (`V12`), because kernel `Int` arithmetic is 3–4× slower than `Nat` (§4).
- A node of coordinate m at midpoint k/192 stores `round(EU[k]·EP[m][i]/2^p)`. Its proved error is `ε₁ = 2^{-p} + ε_U(1+ε_P) + ε_P ≈ 1.1·10⁻⁸`.
- A bin's column sums `Σ_i = Σ_j e(u_j)exp(−iP_ji) = √6 S_i` are `W0 + v₁ + … + v₅`, with error `E = 6ε₁ ≈ 6.7·10⁻⁸`. This is comparable to the Python margin of 10⁻⁷. The partial sums are shared between bins through β-redexes.

**The test (`rejectB`).** Per column, `N_i = |Σ̃_i|²` (exact) is compared with integer thresholds:
- `thi ≥ ((s̄₆(1+τ̄)+E)Z)²`;
- `tlo ≤ ((s̲₆(1−τ̄)−E)Z)²`.

The Frobenius test needs `|‖Σ_i‖ − √6|` without square roots. It uses
`D_i = ⌊2^q |N_i − 6Z²| / (Z(U_i + ⌈√6 Z⌉))⌋ − ⌈E 2^q⌉`, where `U_i ≥ √N_i` comes from two integer Newton steps (`newt_sq`). This lower bound loses less than 0.5% of the Frobenius rejections compared with exact square roots. A one-step (AM–GM) version lost 7%.

All thresholds are integers. Their validity is a rational inequality (`ParOK`), decided once per Record, with π ≤ 3.1415926535897932385 and rational bounds on √6, 1/√6 and √(29/6).

**Soundness chain (all proved).**
1. **One column:** `dterm_le` (Newton + AM–GM + error), `col_sound` and `frob_sound` give the inequality `hviol` of `leafRej_of_direct`.
2. **One bin:** `rejectB_sound` gives `∀ δ admissible, LeafRej`.
3. **Bin sums:** `acc_err` bounds the bin-sum error by 6ε₁ ≤ E from the node bounds.
4. **Tree:** `child` and `binOK_sound` (induction on depth, 32 children) give `slabOK_sound`, then `topOK_sound`. The level-12 roots cover [0,1]⁵ (`roots_cover`).
5. **Tables:** `euB_spec`, `epB_spec`, `nodeB_spec`, `treeB_spec` and `tabB_spec` establish `NodeOK` and `TreeOK` from the kernel-evaluated Taylor tables.

## 3. Benchmark (MacBook, Apple silicon, 64 GB; one Lean process at a time)

**Record 100** (R = 0.08, r_col = 0.0559 rad, r_F = 0.08 rad).

The checker's tree is the direct-test tree. It is a superset of `stagec.py`'s tree, which is also pruned by the tangent test.

| Level M | Bins tested | Rejected |
|---|---|---|
| 12 | 248,832 | 236,937 |
| 24 | 380,640 | 367,017 |
| 48 | 435,936 | 402,560 |
| 96 | 1,068,032 | 919,795 |
| **Total** | **2,133,440** | 148,237 survivors at M = 96 |

| Kernel job | Wall (lake build, incl. ≈ 10 s import) | Peak RSS (baseline ≈ 5.8 GB of mmapped Mathlib oleans) |
|---|---|---|
| `Data.lean`: tables (228 Taylor enclosures), 900 tree nodes, `ParOK`, roots | 32 s | — |
| 12 slab modules, 144 declarations | 105–148 s each; **1,546 s total (25.8 min)** | 9.3–11.3 GB, i.e. **3.5–5.5 GB of kernel state** |
| `Cover.lean`: assembly of the 144 facts + soundness | 13 s | — |
| **One bin test** | **≈ 0.66 ms** | **≈ 100 KB**. The kernel's whnf cache is never evicted within a declaration |

Further observations:
- **One whole slab as a single declaration fails.** 200k tests ran into `(kernel) deterministic timeout` after 125 s at 16 GB. Splitting into ≤ 41k tests per declaration is mandatory.
- **Precision does not matter for time.** p = 14 and p = 28 take the same time. The cost is kernel term manipulation, not big-integer arithmetic.
- **The same tree in the exact Python mirror takes 7.5 s,** about 200× faster than the kernel.
- **The work is embarrassingly parallel.** An edit to `Tables.lean` made Lake rebuild `Data` and all 12 slab modules concurrently, with its default job count, on 10 cores. This was unintended: it broke the one-process rule of the night. The whole chain finished in about 6 min of wall time, against 26 min sequentially. Peak memory was not recorded, but the machine stayed up.
- **Record 100 is lighter than average.** Over 20 sampled Records the direct-test tree has 3.1M tests on average (max 4.1M), so about **34 CPU-min per Record**.

**Calibration of a tangent-test-sized computation** (timing only, no soundness; `scratchpad` benchmarks, not committed). The computation is about 900 signed multiply-adds: J, B = JᵀT, Jᵀy, Bᵀy, G_y, N_y.

| Encoding | Time per test | Memory per test |
|---|---|---|
| List-based `Int` code | 45 ms | 8.8 MB |
| Straight-line `Int` code | 35 ms | 6.4 MB |

A `Nat`-only encoding (sign-split or offset, as in `Bins.lean`) should give the estimated 10 ms per test. This has not been measured.

## 4. Workload per Record, and the extrapolation

Measured on 200 random Records with the existing Python Stage C and boundary replay (`sample_stats.py` in the scratchpad). The sample has R = 0.08 for 181 Records, 0.063 for 13 and 0.05 for 6.

| Ingredient | Mean count per Record (median; max) | Kernel cost per unit | Kernel min per Record |
|---|---|---|---|
| Single-vector tests (direct + Frobenius + scalar) on the tangent-pruned tree | 828k (802k; 1.47M) | 0.66–1.0 ms (measured direct test, +50% for the scalar test) | 9–14 |
| Tangent test C2(b), with y = c (§5) | 145k (≈ 131k × 1.11) | 10–35 ms | 24–85 |
| Edge direct + support tests | 15.2k label pairs (11.3k; 94k) | ≈ 1 ms | 0.3 |
| Joint test (6.23) | 11.5k candidate edges | 20–70 ms (≈ 2 tangent tests) | 4–13 |
| Label membership (one hint per surviving bin) | ≈ 9k bins, 166 labels | ≈ 0.5 ms | 0.1 |
| Two-clique search | 221k steps (1.5k; **4.6M**) | 0.1–0.3 ms per bitset step | 0.4–1 (tail: 8–23) |
| Boundary tree | 8.7k boxes; 3.6k off-shell, 4.5k transfer leaves (one target hint per leaf), 57 targets | 5–20 ms | 1–3 |
| Normal bound | 21×21 exact LDLᵀ, J, e₀, j₁, Gram | not measured; est. 1–5 min | 1–5 |
| **Total** | | | **≈ 40–120 min** |

**Total for 12,021 Records: ≈ 8,000–24,000 CPU-hours**, with the soundness bridges below still to be written.

The direct-test tree alone, as built, would be 34 min/Record ≈ 6,800 CPU-h. But it leaves 150–230k unlabelled bins per Record, so it is **not** a complete Stage C. The tangent test is indispensable: it cuts the M = 96 survivors from 148k to 8k.

## 5. What would need to change to run it on a cluster

**1. Split declarations.**
- Peak memory per declaration is about 100 KB × bin tests, plus about 6 MB × tangent tests. Keep each declaration ≤ 40k bin tests or ≤ 400 tangent tests, i.e. ≤ 3–5 GB. That means about 150 (bins) + 350 (tangent) + 50 (edges, joint, clique, boundary) ≈ **550 declarations per Record, about 6.6M in total**.
- Group about 100 declarations per file, so the ≈ 5 s import cost is paid about 66k times (≈ 90 CPU-h).

**2. Data layout.**
- Today `Data.olean` is 6.6 MB per Record (79 GB for the atlas), because the 900 tree nodes are stored as literals.
- Store only the Record's certificate instead: the 36 phases, R, the frame `Tint`, the transfer targets and small hints, about 20 KB.
- Recompute the tables and trees in the kernel, which takes seconds per Record (`tabOK` already does exactly this).
- Otherwise a final `import` of all 12k Records would map tens of GB of oleans.

**3. No per-bin hints for the tangent test.**
- `stagec.py` uses a least-squares multiplier y. Measured on Records 100, 5305 and 2471, the computable choice y = c/‖c‖∞ still certifies all three. It costs only +11% tangent tests and +19% surviving bins.
- So y can be computed in the kernel, and no 6-number hint per bin needs storing. The alternative is 131k × 6 numbers per Record.
- Also, 7-bit-rounded least-squares multipliers are as good as floats, if hints are wanted.

**4. Encoding.** Use `Nat`-only arithmetic (offset or sign-split) for all signed quantities. `Int` costs 3–4× more kernel time and memory.

**5. Lane-parallel bignums.** This is the big lever, worth an estimated 10–50× on the bin tree, where 30–40% of the time goes. Each kernel operation costs about 10 µs whatever the integer size, so pack many bins into one natural number:
- store, per node, the projections ⟨Σ_i, ω_d⟩ on a few directions ω_d (an inscribed and a circumscribed polygon replace the disc tests) as lanes of one natural number;
- the 12 (or 2) children of the innermost coordinate then become lane-parallel additions, and comparisons become mask tests (`Nat.land`, accelerated in the kernel).

This has not been prototyped.

**6. Cluster run.**
- One job per Record, each `lake build` of its own modules with no shared state.
- At 4–6 GB per process, about 8–16 processes per 128 GB node. With ≥ 500 cores, 8–24k CPU-h is about 1–2 days.
- `export_record.py` already generates any Record. `kbins.py` pre-flights each Record in 7.5 s of Python, and can predict the declaration split.

## 6. What remains (beyond tonight)

The remaining work, in decreasing size:
1. **Tangent test C2(b)** and **scalar test (6.12)**. These are integer checkers plus soundness to `leafRej_of_linear` and `leafRej_of_scalar`. Most of the real-number work is already done in `Linear.lean` and `Scalar.lean`; what is missing is the integer bridge, as `col_sound` and `frob_sound` do for the direct test.
2. **Joint test**, using `edgeOExcl_of_joint` and `edgeUExcl_of_joint`.
3. **Label membership** as `leafOK`, using `inLabel_of_wrap` with one label index per surviving bin.
4. **Direct and support edge tests**, and the **exhaustive two-clique search**, a bitset recursion with a soundness theorem for `NoTwoCliques`.
5. **Normal bound in the kernel:** σ by exact LDLᵀ of a 21×21 rational matrix, e₀, j₁, λ_max and the column bound t. These give `hr` and `hrF`, plus K by a Gram bound. They then need linking to `RecordCert`'s `nroot` expressions.
6. **Transfers and the boundary tree** (`Transfer.lean`, `Boundary.lean`): c = h(A P_s + 2πN − P_t) with rational π bounds; off-shell and transfer tests on the η-box tree, with one target hint per leaf.
7. **Generator and orchestration** for all 12,021 Records, and the final `Atlas` assembly.

**Gate before scaling.**
- Implement step 1 with the Nat-only encoding and y = c.
- Benchmark it on Record 100.
- **GO** if it costs ≤ 10 ms and ≤ 1 MB per tangent test. That gives ≤ ≈ 60 min per Record and ≈ 10k CPU-h in total.
- Otherwise, prototype the lane-parallel bignum layout (§5, item 5) before committing cluster time.

From the pace tonight (about 1,500 lines of Lean for the direct test, tables and trig), I estimate items 1–7 at **2–4 weeks of agent work**.

## 7. How a tier-1 "no third MUB" region (route 2) changes the cost

**Tier 1 cannot reuse the bin checker.**
- `stagec.stage_c_triple` excludes a single 6-clique in the label O-graph. Measured on 7 Records, it fails at R = 0.08 on 5 of them: the label O-graph has 6-cliques even though the quartet test passes.
- At R = 0.12 and 0.16 the bins grow about 4× and 15×, and the quartet test hits the graph cap.
- So the tier-1 certificate must be the **branch-tube** certificate of `route2/DESIGN.md`, not the vector-bin cover. That certificate has about 50 certified branches of U(H) and about 1,300 pairwise orthogonality bounds per region.

**Its kernel cost per region is small.**
- It would be a few thousand interval evaluations of 6-term exponential sums, about 1–5 min per region by the per-operation costs above.
- No bin tree, no tangent tests, no two-clique search.

**It would also cover far fewer regions.**
- With region radius ρ ≈ 0.3–0.5 against R = 0.08, the 4-dimensional volume factor is (ρ/R)⁴ ≈ 200–1,500.
- The roughly 80% of the quotient that is tier 1 would then cost on the order of 10 CPU-h instead of about 10⁴.

**The kernel bill becomes the tier-2 share.**
- That is about 20% of the Records (near-triple, Fourier-adjacent), still with full Stage C: about 2,400 Records × 40–120 min ≈ **1,600–4,800 CPU-h**.
- Caveat: the tier-1 radii are floating-point exploration only (DESIGN.md). The tube certificate has neither a proof nor a cost measurement yet.

## 8. Reproduce

**Warning.** Editing `Trig`, `Bins` or `Tables` invalidates every `Rec*` module, and Lake then rebuilds them **in parallel** at about 5 GB each. On a shared machine, rebuild the slab modules one target at a time.

```bash
# data + modules for any Record (Python, single process; also prints the exact mirror's counts)
python3 lean/generators/kernelatlas/export_record.py 100 lean/NoFourMUBs/KernelAtlas/Rec100
# from lean/, one module at a time (use the shared lock script when other agents are building)
lake build NoFourMUBs.KernelAtlas.Rec100.Data          # 32 s
lake build NoFourMUBs.KernelAtlas.Rec100.Slab00        # ~2-2.5 min, <= 5.5 GB above baseline; repeat for 01..11
lake build NoFourMUBs.KernelAtlas.Rec100.Cover         # 13 s
```
