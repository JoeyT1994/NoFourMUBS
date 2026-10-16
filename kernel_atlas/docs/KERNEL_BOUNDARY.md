# The boundary field in the kernel: `BoundaryCover` (Lemma 4.1) for one Record (design and status, 16 Oct 2026)

**Optional side project, not part of the proof** (see `../README.md`). The proof's `AtlasCertificate.boundary` is
checked by `proof/atlas/certify.py` (Arb) and the Julia checker. This note designs and implements a kernel check of
the same field for one Record, following the pattern of the other kernel ingredients: an exact Python mirror
(`generators/kbound.py`), a Nat/Int/ℚ checker with a soundness theorem against the real-number statement
(`lean/KernelAtlas/BoundaryK.lean`), and generated per-Record data (`Rec<n>/Boundary.lean`,
`Rec<n>/BoundaryCover.lean`).

## 1. What the Lean statement needs

`BoundaryCover A l` (`lean/NoFourMUBs/Boundary.lean`) is a family of η-boxes with a target, a signed permutation and an
integer winding each, and two facts:

* `hcover`: every `η` with `√(Σ η_k²) ≤ r_H` and `R² − n² ≤ ‖Σ η_k T_k‖²` lies in some box;
* `htransfer`: on each box, `‖h(A P + 2πN − P_t) + h(A Σ η_k T_k)‖ + n < R_t`.

Here `r_H = gR` and `n = nroot σ (e₀ + j₁ r_H + √3 λ r_H²)` are the source Record's `RecordCert` fields, and `P_t`,
`R_t` are the target Records' fields `(A t).P`, `(A t).R`.

The boxes are only a device for the cover. The kernel version takes one "box" per **target**: box `j` is the set of
`η` for which the transfer inequality into target `j` holds. Then `htransfer` holds by definition, and all the content
is in `hcover`, which becomes

> every `η` in the shell `{‖η‖ ≤ r_H, ‖Tη‖² ≥ R² − n²}` satisfies the transfer inequality for some target `j`.

That is what the kernel checks, with an η-box tree as the certificate.

**What a per-Record theorem can and cannot say.** The transfer inequality mentions the target Records' centres and
radii, which belong to other `RecordCert`s. So the per-Record theorem is stated for an arbitrary family `A` and
index map `tg`, with the targets as hypotheses:

```lean
theorem Rec100.boundary {ι : Type*} (A : ι → RecordCert) (l : ι) (hl : A l = cert) (tg : ℕ → ι)
    (htP : ∀ j t, bd.tg[j]? = some t → (A (tg j)).P = Pmat t.pt)
    (htR : ∀ j t, bd.tg[j]? = some t → (t.Rt : ℝ) ≤ (A (tg j)).R) : Nonempty (BoundaryCover A l)
```

For the `j`-th target `t` of the data, `t.pt` is its exact binary64 centre and `t.Rt` its radius. At assembly
time both hypotheses close by computation: a kernel-built target certificate `RecT.cert` has
`P = Pmat RecT.tab.pq` and `R = RecT.bars.R` definitionally, so `htP` is an equality of two rational 6 × 6 literals
and `htR` a rational comparison.

## 2. The certificate and its exact arithmetic

All quantities are exact (ℤ, ℚ); nothing is rounded. Notation: `T = T̂/DT` with `T̂` the integer frame of the
Record (`Tmat tcfg tq`, `DT = 36·2³⁰`); `P_s`, `P_t` the binary64 centres; `π̃ = 3.14159265358979323846 ≤ π ≤ π̃ + 10⁻²⁰`.

**Tree.** `W ≥ r_H` is dyadic (`W = Wn/Wd`, `Wd = 2⁴⁰`). The box at depth `d` with integer centre `m ∈ ℤ⁴` is
`{η : |2^d η_k − W m_k| ≤ W}` (half-width `h_d = W/2^d`, half-diagonal `2h_d`); its 16 children are `2m + s`,
`s ∈ {±1}⁴`. The root is `d = 0`, `m = 0`, the cube `[−W, W]⁴ ⊇ {‖η‖ ≤ r_H}`. Each node is one of:

| Code | Node | Kernel test | Why it is sound |
|---|---|---|---|
| 0 | off the ball | `Σ_k max(|m_k| − 1, 0)² > B_d` | `B_d W² ≥ r_H² 4^d`, so `‖η‖ > r_H` on the box |
| 0 | inside the inner shell | `0 < Φ_d` and `mᵀ Ĝ_T m < Φ_d` | `‖Tη‖ ≤ ‖Tc‖ + √λ·2h_d`, `‖Tc‖² = (W/2^d DT)² mᵀĜ_T m`, `Φ_d (W/2^d DT)² ≤ (s_q − 2s_λ h_d)²`, `s_q² ≤ R² − n̄²` |
| 2 + j | transfer into target `j` | `0 < Θ_{j,d}` and `wᵀ Ĝ_j w < Θ_{j,d}` | below |
| 1 | split | the 16 children, in order | the children cover the parent |

`Ĝ_T` is the 4 × 4 integer Gram matrix of `T̂`. `s_λ ≥ √λ` and `s_q ≤ √(R² − n̄²)` are rationals with checked squares,
`n̄` is the kernel normal bound of the Record (`bars.nbar`, `0 ≤ n ≤ n̄`).

**Transfer test.** For target `j` with signed permutation `A` and winding `N`, let `Ŷ = L·(A P_s + 2π̃N − P_t)` (an
integer matrix for the common denominator `L`, checked once), and

* `H₀ = hor36(Ŷ)`, `H_k = hor36(A T̂_k)` (`hor36 Z = 36Z − 6·rowsums − 6·colsums + total`, so `hor Z = hor36 Z/36`);
* `Ĝ_j`: the 5 × 5 integer Gram matrix of `H₀, …, H₃` (computed once per target);
* `w = (Wd 2^d DT, L Wn m₀, …, L Wn m₃)`, `κ_d = 36 L Wd 2^d DT`.

At the box centre `c = W m/2^d`, `x = h(A P_s + 2π̃N − P_t) + h(A T c) = (w₀H₀ + Σ w_k H_k)/κ_d`, so
`‖x‖² = wᵀĜ_j w/κ_d²`. On the box, by linearity of `h` and `A` and `‖h(·)‖ ≤ ‖·‖`,

`‖h(A P_s + 2πN − P_t) + h(A Tη)‖ ≤ ‖x‖ + 2(π − π̃)‖N‖ + √λ·2h_d`,

with `2(π − π̃)‖N‖ ≤ 10⁻²⁰(Σ N² + 1)`. The test `wᵀĜ_j w < Θ_{j,d}` with the one-time check
`Θ_{j,d} ≤ (κ_d D_{j,d})²`, `D_{j,d} = R_t − n̄ − 2s_λ h_d − 10⁻²⁰(ΣN² + 1) ≥ 0` gives `‖x‖ < D_{j,d}`, hence the
transfer inequality on the whole box. The per-box work is one 5 × 5 quadratic form in integers (about 30 Int
operations); everything quadratic in the 36 entries is done once per target.

**Data per Record.** The targets (sign, transpose, row and column permutations and their inverses, `N`, `P_t`,
`R_t`, `Ŷ`, `Ĝ_j` and the thresholds `Θ_{j,·}`), the tables `B_d`, `Φ_d`, `Ĝ_T`, the constants
`W, L, s_λ, s_q, n̄, λ, R, r_H`, and the tree in preorder, packed as base-4096 digits of one natural number (code
`2 + j` for a leaf into target `j`). The kernel re-derives every claim; the data only steer it.

**Checker and soundness** (`BoundaryK.lean`, about 860 lines):
* the checks: `gOK` (constants, `Ĝ_T`, the tables `B_d`, `Φ_d`), `tOK` per target (permutations, `Ŷ`, `Ĝ_j`, the
  thresholds `Θ_{j,d}`), and `walk`, the recursive tree check over the packed code (`fuel` = maximal depth + 1);
* `offball`, `inner`, `transfer_ok`: the three box tests against the real-number statements (`transfer_ok` uses
  linearity of `h` and `A`, `hor_ofInt` (`hor = hor36/36`), `sumsq_lin` (the Gram identity), and the Record's own
  `hlam` for the off-centre part);
* `walk_sound` (induction on the fuel; `child_cover`: the 16 children cover the box) and `cover_sound`: every shell
  point transfers into some target, for any `RecordCert` whose `P, T, R, r_H, λ, n` match the data;
* `coverOf`: the `BoundaryCover A l`, one box per target; `boundaryK`: the same for a Record built by `recordK`,
  with the match of the data checked by `bdMatch` (`R`, `r_H = gR`, `λ`, `n̄`, `DT`) and `0 ≤ n ≤ n̄` from
  `barsOK` (`nroot_bars`).

Generated per Record (`export_boundary.py <idx> <dir> [--v2]`): `Rec<n>/Boundary.lean` (the data `bd` and the kernel
checks `gOK_`, `tOK_`, `walk_`; imports only the Record's `TangentData`/`T2Data`) and `Rec<n>/BoundaryCover.lean`
(`bdOK_` and the theorem `boundary`; imports the Record's `Record.lean`/`Record2.lean`). Leaf hints are chosen by a
greedy set cover so that few targets need their one-time check.

## 3. Cost estimate (before the kernel runs)

From the mirror (`kbound.py`, about 1–3 s per Record in Python), Record 100: 65 stored targets (58 needed after the
set cover), 7,697 tree nodes (3,601 off, 3,615 leaves, 481 splits), maximal depth 6, `L` of 109 bits, the packed tree
92 kbit. Each box test is a handful of integer operations (a 4 × 4 or 5 × 5 quadratic form), and the per-target
precomputation (permutation, `hor36`, a 5 × 5 Gram matrix of 36-entry integer matrices) is a few thousand operations,
so the expectation was a few seconds of kernel time per Record. The kernel turned out slower per box than that (§4),
but still small next to Stage C.

## 4. Status and measurements (16 Oct 2026; MacBook, Apple silicon, 64 GB)

**Record 100: `Rec100.boundary : Nonempty (BoundaryCover A l)`** for any atlas `A` with `A l = Rec100.cert`, whose
targets `A (tg j)` have the data's centres and radii. `#print axioms` gives `[propext, Classical.choice, Quot.sound]`
for `Rec100.boundary`, `boundaryK` and the three kernel checks.

| Module | Wall time (`lake build`, incl. ≈ 5–10 s of imports) | Peak RSS (≈ 5.8 GB of it mmapped Mathlib) |
|---|---|---|
| `BoundaryK` (checker and soundness, once) | 12 s | 6.1 GB |
| `Rec100.Boundary` (data and `gOK_`, `tOK_`, `walk_`) | 85–100 s (170 s with 8 other cores busy) | 9.8 GB |
| `Rec100.BoundaryCover` (`bdOK_`, `boundary`) | 8 s | 5.9 GB |

Profile of `Rec100.Boundary` (65 targets): `gOK_` 0.2 s, `tOK_` 13.5 s (≈ 0.2 s per target), `walk_` 83 s. Within the
walk, the stream and the 481 splits cost 0.5 s and the 3,601 off-boxes 3.4 s (≈ 1 ms each); the 3,615 transfer leaves
cost the rest, ≈ 20 ms each. A pattern-matched 5 × 5 form instead of the `Fin`-indexed one saves only 15%, and big
`Int` products alone are cheap in isolation (≈ 30 µs), so the leaf overhead lies in how the kernel reduces the leaf
test in context; it is not chased further here (an obvious lever if the boundary ever dominates: leaf tests on
smaller, pre-scaled integers, or lane-packed forms as in `KERNEL_FEASIBILITY.md` §5).

**Record 146** (v2 data: `T2Data`, `Record2`; `export_boundary.py 146 … --v2`): **`Rec146.boundary`**, standard
axioms. 132 stored targets (97 needed), 5,249 boxes (2,465 off, 2,456 leaves, 328 splits), depth 5. `Rec146.Boundary`
125 s wall at 11.1 GB, `Rec146.BoundaryCover` 28 s at 5.9 GB (both measured while 8 Python workers ran the survey
below, so the times are pessimistic). The Record's own `Record2` (Stage C v2 and the normal bound) took about 40 min
of sequential builds here, with slabs at ≤ 12 GB and `Sigma` at 14 GB.

**All Records, mirror only** (`survey_boundary.py`, no Lean; `results/boundary/all.jsonl.gz`): **all 12,021
Records have a boundary cover in the exact mirror** with the kernel normal bounds `n̄`; since the mirror evaluates
the same integers as the Lean checker, none is expected to fail in the kernel (only Records 100 and 146 are actually
kernel-checked). Per Record: 58 stored targets on average (max 350), 52 needed after the set cover (p99 87, max 174),
8,278 boxes (p99 13,041, max 20,881), of which 3,773 transfer leaves (max 9,260); depth ≤ 6; 1.4 s of Python. In
total 45.3M leaves, 47.9M off-boxes and 631k target checks.

**Extrapolation.** With the Record 100 rates (≈ 20 ms per leaf, ≈ 1 ms per off-box, ≈ 0.2 s per target):
45.3M leaves ≈ 250 CPU-h, 47.9M off-boxes ≈ 13 CPU-h, 631k targets ≈ 35 CPU-h, so **≈ 300 CPU-hours for the 12,021
Records** (≈ 1.5 CPU-min and ≈ 10 GB per Record; the largest, 9.3k leaves and 174 targets, about 4 min), about 5% on
top of the Stage C bill (≈ 30 CPU-min per Record).

## 5. The small exact fields: `fourier`, `tao`, `anchor`

The three remaining fields of `AtlasCertificate` are exact memberships of special matrices in Records. They are
Lemma 4.1 with `u = ν = 0` (no tangent box): a matrix `e^{iΦ}` lies, after `Γ`, in the Record `(P_t, R_t)` if
`‖h(AΦ + 2πN − P_t)‖ < R_t`. Like `boundary`, each theorem takes the target Record's centre and radius as hypotheses.

| Field | Lean | Certificate | Kernel |
|---|---|---|---|
| `fourier` | `ExactK.fourierK`, `Special.fourier` | `fourierHadamard = e^{iπM}` exactly (`fourier_eq`, `M = m/3`, entries `ζ^m`, `ζ = e^{iπ/3}`); into atlas Record 877 (margin 0.057 of R = 0.08) | `memOK`: `sumsq(h(π̃M' − P_t)) < (R_t − 10⁻²⁰(‖M'‖² + 1)/2)²`, `M' = AM + 2N` |
| `tao` | `ExactK.taoK`, `Special.tao` | `cubic_roots`: `ω = e^{±2πi/3}`; `taoMatrix ω = e^{±2πiK/3}` (`tao_eq_pos`, `tao_eq_neg`); both into the zero-dimensional Tao Record of `proof/atlas/tao.py` (centre fl(2πK/3), R = 0.08) by plain permutations, so `Γ` is not needed | `memOK` twice |
| `anchor` | `AnchorK.anchorK`, `Special.anchor` | `H₀`'s entries as `ℚ(i)`-combinations of the 8 surd monomials (36 generated `ring` identities); per entry, `θ̃` = binary64 atan2, rational surd intervals and a Taylor enclosure of `e^{−iθ̃}` bound `‖z e^{−iθ̃} − 1‖`, and Jordan's inequality gives `|φ − θ̃| ≤ 3.8·10⁻¹⁶` (`entOK`, `phase_near`); into atlas Record 9319 (margin 0.037) | `entOK` × 36, `memOKg` with slack `Ē = 7.8·10⁻¹⁶` |

All three build in seconds (`Special.Exact` 15 s, `Special.Anchor` 11 s, wall, incl. imports) and depend only on
`propext`, `Classical.choice`, `Quot.sound`. Generators: `kexact.py`, `export_exact.py`, `export_anchor.py`.

## 6. What remains for these fields

* **Assembly.** Each per-Record `boundary` (and `fourier`, `anchor`, `tao`) needs its targets as kernel-certified
  Records with the same centres (`Pmat` of the same binary64 list, closed by `decide`) and radii. So the boundary of a
  Record can only be discharged once its ≈ 50–60 targets are certified; the natural order is all Records first, then
  all boundaries.
* **The Tao Record.** `tao` needs the zero-dimensional Tao Record as a `RecordCert` (`T = 0`, `σ = 3/√2` exact, Stage C
  on the ball): not yet in the kernel.
* **Records not yet certified in the kernel.** Transfers into the 26 Records that still fail the kernel Stage C
  (`KERNEL_TANGENT_V2.md`) cannot be discharged until those Records are.
