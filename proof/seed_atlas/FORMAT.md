# Seed atlas certificate format (`seed-atlas-v1`)

Owner: piece B (the driver, `proof/seed_atlas/driver/`). Pieces A (Arb certifier), C (Julia replay) and D (Lean) read
this file. It follows SPEC §8, with three changes, each explained where it occurs:
- boundary boxes are dyadic integer boxes, grouped by transfer target (§4);
- windings and corner orders are explicit (§5);
- the record boundary is listed box by box rather than replayed (§6).

The file is `proof/seed_atlas/results/seed_atlas_certificate.json.gz`: gzip-compressed UTF-8 JSON, one object.

## 1. Numbers

- **Floats** are binary64 values written as Python `float.hex()` strings (`"0x1.921fb54442d18p+1"`). Each one is the
  exact rational it denotes. Julia reads them with `parse(Float64, s)`.
- **Integers** are JSON integers.
- **Angles** are in radians.
- **Matrices** are flattened row-major. A 36-vector indexes the 6×6 matrix as `6*a + b` (row a, column b, 0-based).
- **Fields** named `info` hold the driver's float diagnostics. Checkers must ignore them, and any other field not
  listed here.

## 2. Top level

```json
{ "format": "seed-atlas-v1",
  "max_level": 9,
  "seeds":   [ <seed>, ... ],
  "records": [ <record>, ... ],
  "fourier_record": 0,
  "tao": { "R": "<hex>", "label_radius": "<hex>" },
  "info": { ... } }
```

| field | meaning |
|---|---|
| `max_level` | the deepest box level (§4) used anywhere; a coverage traversal may stop there |
| `seeds` | seed balls (§3) |
| `records` | full-matrix 25-dimensional records (§6) |
| `fourier_record` | index in `records` of the record containing F6 (check with `proof/atlas/nonempty.py`'s test) |
| `tao` | Tao's zero-dimensional record (`proof/atlas/tao.py`): the ball radius `R` and the Stage C label radius |

## 3. Seed balls

```json
{ "theta0": [4 hex], "Mth": [16 hex], "r": hex, "o": 1, "k": 4,
  "P": [36 hex], "U": [144 hex], "n": hex, "label_radius": hex,
  "transfers": [ <group>, ... ],
  "info": { ... } }
```

| field | meaning |
|---|---|
| `theta0` | seed centre θ0 = (θ₁, θ₂, θ₃, θ₄): θ₁ ↔ E₁₁, θ₂ ↔ E₁₂, θ₃ ↔ E₂₁, θ₄ ↔ E₂₂ (SPEC §1) |
| `Mth` | the 4×4 matrix, row-major: θ(w) = θ0 + Mth w, i.e. θ_a = θ0_a + Σ_b Mth[4a+b] w_b |
| `r` | radius: the ball is E = {θ(w) : ‖w‖₂ ≤ r} |
| `o` | orientation ±1 (SPEC §1). This build uses o = +1 throughout: f₋(θ) = conj f₊(θ̄), and G4 is applied anyway |
| `k` | C1 is certified on the k⁴ boxes of half-width r/k that partition [−r, r]⁴ (in w), keeping those that meet the ball |
| `P` | the 36 Stage C centre phases, row-major |
| `U` | the 36×4 frame, row-major: (U w)_e = Σ_i U[4e+i] w_i |
| `n` | the C1 remainder (SPEC §2) |
| `label_radius` | the Stage C label radius |

**C1 and Stage C** are exactly as in SPEC §2:
`stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)`, with rcol = maxᵢ‖U_(block i)‖₂ r + n and
rF = ‖U‖₂ r + n.

**The phase representative Q.** For θ = θ(w), Q(w) denotes the phases of the matched completion H_o(θ) in the gauge of
SPEC §1, taken entrywise as the representative nearest P + U w, i.e. |Q_e − (P + U w)_e| < π. This is unambiguous
whenever C1 holds, since n < π. It is also what the C1 Taylor models compute on a box (arg D on the branch nearest P,
side angles continued from P). Every winding below is relative to this representative.

## 4. Seed-ball transfers (C2)

**Boxes.** A box is written `[m, i0, i1, i2, i3]`: a level m ≥ 0 and four integers 0 ≤ i_a < 2^m. In normalised
coordinates u = w / r it is

  u_a ∈ [−1 + i_a·2^(1−m), −1 + (i_a+1)·2^(1−m)],  a = 0..3,

and the w-box is β = r·[lo, hi]. Level 0 is the whole cube [−1, 1]⁴. The children of a level-m box are its 16
level-(m+1) halves. Every endpoint is a dyadic rational, so the coverage check below is exact, and the box in w is the
exact real box r·[lo, hi]. Use ball arithmetic for it; do not round r·lo.

**Coverage condition.** The union of all boxes listed in a seed's `transfers` must contain the unit sphere
{u : ‖u‖₂ = 1}, i.e. the sphere ‖w‖ = r. An exact check is a traversal from the level-0 box:
- a box is covered if it is listed;
- or it misses the sphere: min over the box of ‖u‖² > 1, or max over the box of ‖u‖² < 1, in exact rationals;
- or each of its 16 children is covered, and m < `max_level`.

Listed boxes need not meet the sphere, and may overlap.

**Groups.** `transfers` is a list of groups, and every box in a group has the group's target:

```json
{ "kind": "T0", "target": l, "wind": [4 ints], "boxes": [[m,i0,i1,i2,i3], ...] }
{ "kind": "T1", "target": l, "g": "id", "rows": [i0,i1,i2], "cols": [j0,j1,j2], "wind": [4 ints], "boxes": [...] }
{ "kind": "T2", "target": t, "g": "conj", "rows": [6 ints], "cols": [6 ints], "wind": [36 ints], "boxes": [...] }
```

For seed ball j and every box β of a group, the certifier checks the following.

- **T0** (target `l` is a seed index). o_l = o_j, and for each of the 16 vertices v of β,
  ‖Mth_l⁻¹(θ0_j + Mth_j v − θ0_l + 2πN)‖₂ < r_l, with N = `wind`. Then θ_j(β) ⊂ int E_l, by convexity.
- **T1** (target `l` is a seed index).
  - **The matrix.** K = g·H_{o_j}(θ) for θ ∈ θ_j(β), with phases Q′ = g·Q:

    | g | id | conj | T | conjT |
    |---|---|---|---|---|
    | Q′_ab | Q_ab | −Q_ab | Q_ba | −Q_ba |

  - **The corner seed** at the ordered corner I = `rows` = (i0, i1, i2), J = `cols` = (j0, j1, j2), 0-based indices
    of K:

    θ′_1 = Q′_{i1 j1} − Q′_{i1 j0} − Q′_{i0 j1} + Q′_{i0 j0},  θ′_2 = Q′_{i1 j2} − Q′_{i1 j0} − Q′_{i0 j2} + Q′_{i0 j0},
    θ′_3 = Q′_{i2 j1} − Q′_{i2 j0} − Q′_{i0 j1} + Q′_{i0 j0},  θ′_4 = Q′_{i2 j2} − Q′_{i2 j0} − Q′_{i0 j2} + Q′_{i0 j0}.

  - **The test.** Over the box, ‖Mth_l⁻¹(θ′ + 2πN − θ0_l)‖₂ < r_l, with N = `wind`.
  - **Orientation.** sign Im Ψ(K[I, Jᶜ]) = o_l and sign Im Ψ(K[Iᶜ, J]ᵀ) = −o_l. Ψ is invariant under row and column
    permutations and under unimodular row and column scalings, so the order of Iᶜ, Jᶜ and the dephasing do not
    matter.
  - **Remark for certifiers.** When I and J are both orderings of (0, 1, 2), θ′ is an integer-linear function of θ
    alone, because the corner block of Q is (0, 0, 0; 0, θ₁, θ₂; 0, θ₃, θ₄) exactly, so no Taylor model is needed. For
    g ∈ {id, conjT} the two sides are B and C (up to conjugation and order), so the orientation is o_j and matched
    automatically. For g ∈ {conj, T} it is −o_j. The driver uses these "corner symmetry" transfers between charts
    that are images of each other under the 72 seed symmetries.
- **T2** (target `t` is a record index).
  - **The matrix.** Q″_ab = Q′_{rows[a], cols[b]}, with Q′ = g·Q as in T1 and `rows`, `cols` permutations of 0..5.
  - **The test.** Over the box, ‖hor(Q″ + 2πN − P_t)‖₂ < R_t, with N = `wind` (6×6 row-major) and
    hor(X)_ab = X_ab − mean_b′ X_ab′ − mean_a′ X_a′b + mean X. Then K″ = e^{iQ″} is equivalent to
    e^{i(P_t + δ)} with δ = hor(Q″ + 2πN − P_t) horizontal, ‖δ‖ < R_t, a point of record t.

**Why not SPEC §8's `{"lo": [4 hex], "hi": [4 hex]}` per box.** The driver produces about 10⁶–10⁷ boundary boxes.
Explicit hex boxes would make the file a few GB; integer boxes grouped by target need about 15 bytes each. Dyadic
boxes in units of r also make the sphere-coverage check exact. Neither change alters what is certified.

## 5. Windings and corner orders

SPEC §8 leaves the windings to the certifier (`"wind": [...]` "as in the current atlas format", where the current
atlas recovers N by rounding). Here every winding is stored explicitly, with the sign convention of SPEC §4: the
target's coordinate is computed from (image + 2πN − target centre). A certifier may recompute N by rounding and
compare, but the stored N is what is checked. Corner orders `rows`/`cols` for T1 and T1′ are ordered triples, so the
seed is unambiguous; for T2 and `rec` they are full permutations of 0..5.

## 6. Full-matrix records

```json
{ "phi": [36 hex], "R": hex, "label_radius": hex, "Tint": [144 ints],
  "eta_scale": hex,
  "boundary": [ <group>, ... ],
  "info": { ... } }
```

| field | meaning |
|---|---|
| `phi`, `R`, `label_radius`, `Tint` | as in the current atlas certificate: `proof/atlas/export.py`, `certify.certify_record`. The frame is `Tint` (36×4 row-major integers, units 2⁻³⁰, projected exactly onto the horizontal space); σ, r_H and the normal bound n (including the frame-rounding term dT·r_H) are recomputed by the certifier with `ballrecord.BallRecord`. In SPEC §8, `R` and `label_radius` were plain floats; here they are hex |
| `eta_scale` | boxes live in η = eta_scale·u, u ∈ [−1, 1]⁴. The certifier checks eta_scale ≥ its own r_H |

**Coverage condition.** The boxes, read as in §4 but in units of `eta_scale`, must cover the record's boundary shell
as in SPEC §4: {η : ‖η‖ ≤ r_H, R² − n² ≤ ‖Tη‖² ≤ R²}. This holds because, on the boundary ‖δ‖ = R, δ = Tη + ν with ν
in N exactly orthogonal to span T, so ‖Tη‖² = R² − ‖ν‖². Here T is the certifier's exact frame and n its normal bound for
that frame. This shell is thinner than the [R − n, R + n] shell of `atlas.offshell` (24 Oct: changed from that shell,
before any certifier used it). The traversal is the same as in §4, except that a box is discarded if it is certified to
miss the shell: max over the box of ‖Tη‖² < R² − n², or min > R², or min ‖η‖ > r_H.

**Boundary groups.**

```json
{ "kind": "rec",     "target": t, "g": "id", "rows": [6 ints], "cols": [6 ints], "wind": [36 ints], "boxes": [...] }
{ "kind": "T1prime", "target": l, "g": "id", "rows": [3 ints], "cols": [3 ints], "wind": [4 ints],  "boxes": [...] }
```

For record s and every box of a group:
- **rec** (target `t` is a record index). The current transfer test, with the alignment written as (g, rows, cols):
  sup over η in the box of ‖hor(π(g·(P_s + Tη)) + 2πN − P_t)‖ + n_s < R_t. Here π(X)_ab = X_{rows[a], cols[b]}, g acts
  on phases as in §4, and N = `wind`.
- **T1prime** (target `l` is a seed index). For every η in the box and every ν with ‖ν‖ ≤ n_s (ν in the complement N
  of the frame), K = g·e^{i(P_s + Tη + ν)} satisfies the T1 test of §4 at corner (`rows`, `cols`) with N = `wind`:
  θ′ ∈ int E_l, orientation o_l, matched.

**Pending (sent to the coordinator, 24 Oct).** With only ‖ν‖ ≤ n_s, T1prime fails at every scale near F6:
- ‖Mth_l⁻¹ L‖ ≈ 60, 25 and 12 at distances 0.125, 0.3 and 0.6 from F6, against n_s ≈ 2R² (0.0162 at R = 0.125).
- SPEC §4's ‖Lν‖ ≤ 2n should read ‖Lν‖₂ ≤ 3n; per component, |(Lν)_k| ≤ 2n.

**Proposed refinement (needs the coordinator's approval before A, C or D implement it).** Enclose ν over the η-box by a
parametric Krawczyk, in the same way C1 encloses the sides:
1. **The system.** Write ν = N_b x, with N_b a basis of N (21 columns). Take
   F(η, x) = Y·Φ(P_s + Tη + N_b x) ∈ ℝ²¹. Here Φ is the record's 30 off-diagonal Gram coordinates and Y is any real
   21×30 matrix (≈ a left inverse of ∂Φ/∂x at the box centre).
2. **The test.** Take a predictor x_p(η) (any quadratic Taylor model) and an inclusion set X = x_p(η) + [−ρ, ρ]²¹.
   ρ must be large enough that X contains every x with ‖N_b x‖ ≤ n_s. Check componentwise:
   sup_β |F(η, x_p(η))| + q ρ < ρ, with q the row sums of sup |I − Y ∂F/∂x| over X.
3. **What it gives.** Every Hadamard of record s with η ∈ β has ν = N_b x with x ∈ x_p(η) + [−ρ₁, ρ₁],
   ρ₁ = sup|F(η, x_p)| + q ρ ≪ n_s. The reason: it is a zero of F in X, and that zero is unique.
4. **Then.** Q(η) = P_s + Tη + N_b x is a Taylor model in η. Apply the T1 test of §4 to it.

The driver float-checks T1prime at the actual Hadamard points: ν(η) by Gauss–Newton in N, on a 3⁴ grid of each box,
with a 3% margin. It does not use ‖ν‖ ≤ n_s.

## 7. What the driver guarantees (float self-check, not a proof)

Before writing the file, the driver re-checks in binary64, with margins:
- every C1 bound, by the prototype Taylor models of `explorations/seed_balls/tmball2.py`, adapted to general Mth;
- every Stage C call;
- every transfer box, by its kind;
- the coverage traversal of every sphere and shell.

The certifier (piece A) redoes all of this in Arb.
