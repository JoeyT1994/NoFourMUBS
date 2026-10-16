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
    (htP : ∀ j < bd.tg.length, (A (tg j)).P = Pmat (bd.tgP j))
    (htR : ∀ j < bd.tg.length, ((bd.tgt j).Rt : ℝ) ≤ (A (tg j)).R) : Nonempty (BoundaryCover A l)
```

`bd.tgP j` is the target's exact binary64 centre and `(bd.tgt j).Rt` its radius, as rationals in the data. At assembly
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

**Checker and soundness** (`BoundaryK.lean`):
* `walk`: the recursive tree check over the packed code (`fuel` = maximal depth + 1);
* `walk_sound`: `walk … = some s'` implies that every shell point of the box transfers into some target;
* `tgtOK_sound`: the per-target one-time checks give the identity `‖x‖² = wᵀĜ_j w/κ_d²` and the bound on `D`;
* `cover_sound`: from `bOK D = true` (all checks) to the `hcover` statement above, for any `RecordCert` whose
  `P, T, R, g, λ, n` match the data;
* `boundaryCover_of_check`: the `BoundaryCover A l`.

## 3. Cost estimate

From the mirror (`kbound.py`, about 3 s per Record in Python), Record 100: 65 targets, 7,697 tree nodes (3,601 off,
3,615 leaves, 481 splits), maximal depth 6, `L` of 109 bits, the packed tree 92 kbit. The per-box tests are a handful of
integer operations, so the tree costs far less than one Stage C slab; the per-target precomputation (permutation,
`hor36`, a 5 × 5 Gram of 36-entry integer matrices) is a few thousand Int operations per target. Over the sample in
`KERNEL_FEASIBILITY.md` (8.7k boxes and 57 targets per Record on average) this is a minor term next to Stage C. Measured
kernel costs are in §4.

## 4. Status and measurements

See below (filled in as the Records are checked).
