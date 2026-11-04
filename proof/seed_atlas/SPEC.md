# Seed atlas: specification

The specification both certifiers implement (with `FORMAT.md` for the file layout): balls in the **four seed phases**
θ ∈ Ω = {R > 0} ⊂ T⁴ (`PROOF.md` Steps 3–5). Every quartet exclusion runs on the matched completions H_o(θ). The local tests
(Stage C in the code: `proof/atlas/stagec.py`, Lean `StageC/`) are reused unchanged. What is new is how each ball's
enclosure P + U w + ν is certified, and how openness is proved.

**Current form.** The certificate as built differs from the original design in two parts. Both forms are described
below:
- **F₆.** F₆ is the centre of the ball at F₆ (§10, the X-ball or edge ball in the code), instead of a full-matrix
  record (§3, §6). Its image is excluded, with no local tests on its enclosure, by the exact cover of the phase
  ball of radius 7/40 around F₆ ([`QuartetExclusion/theorems/X_no_quartet_near_F6/`](../../QuartetExclusion/theorems/X_no_quartet_near_F6/REVIEW.md)).
  Certificates list no full-matrix records except Tao's zero-dimensional one.
- **The enclosure (claim C1).** C1 is first certified by the whole-ball method of the completion-Hessian theorem
  ([`proof/theorems/Z_completion_hessian/`](../theorems/Z_completion_hessian/REVIEW.md), `cert/wholeball.py`), from
  one centre computation. The box method of §2 and §11 is the fallback.

The prototype is in `proof/seed_atlas/prototype/`, described in its `README.md`. Numbers there are
binary64 and **not** a proof. This spec is what the certified versions implement. The driver is
`proof/seed_atlas/driver/`, with the horizontal gauge and adaptive boxes of §11.

## 1. Objects and conventions

- **Seed.** θ = (θ₁, θ₂, θ₃, θ₄) ∈ ℝ⁴, with the dephased corner E(θ) = [[1,1,1],[1,e^{iθ₁},e^{iθ₂}],[1,e^{iθ₃},e^{iθ₄}]].
  The code writes a, b, c, d = e^{iθ₁}, …, e^{iθ₄}. Matrix indices in this spec are 0-based, as in the code, so
  θ₁ ↔ E₁₁, θ₂ ↔ E₁₂, θ₃ ↔ E₂₁ and θ₄ ↔ E₂₂.
- **Overlap matrices.** G_h = 6I₃ − EE† and G_v = 6I₃ − EᵀĒ.
- **Normalised sides.**
  - Horizontal side B: first row (1,1,1), rows 1 and 2 equal to e^{iφ_h[0..2]} and e^{iφ_h[3..5]}, and BB† = G_h.
  - Vertical side V = Cᵀ: the same shape, with VV† = G_v.
- **Overlap residual.** F(φ; G) ∈ ℝ⁶ consists of the real and imaginary parts of the entries (0,1), (0,2), (1,2) of
  SS† − G, where S is the side built from φ. Its Jacobian ∂F/∂φ is nonsingular exactly when Im Ψ(S) ≠ 0. On an actual
  side this holds iff R > 0, since R = 4(Im Ψ(S))² (Methods, four-phase reconstruction).
- **Side label.** The label of a side S is Ψ(S) = perm(S) det(S)² / ∏ S_ab, as in the paper. Its root is
  z = −Ψ(S)/g, which is the paper's ζ when S = B and o = −1 (ζ̄ for the stored o = +1).
- **Orientation.** o ∈ {+1, −1} is the sign of Im Ψ(B). The completion is *matched* iff sign Im Ψ(C) = −o.
  The paper's H₊ is o = −1, and the stored balls use o = +1, which is conj H₊(−θ). The
  subscript of H_o and f_o below is o, so H₋ and f₋ in this spec are the paper's H₊ and f₊.
- **The class map.** H_o(θ) = [[E, B], [C, D]], with D = −C E† (B†)⁻¹ and sides chosen with orientation o and matched.
  Its class f_o(θ) is well defined on Ω: matched existence (`L1.matchedExistence`) and uniqueness
  (`Step2.matchedUniqueness`). Moreover f₋(θ) = conj f₊(−θ).
- **Gauge.** In this gauge H has first row and first column all ones. Q(θ) ∈ ℝ³⁶ (row-major) are its entry phases,
  each taken modulo 2π.

## 2. Seed balls and claim C1 (the enclosure)

A seed ball record holds:

| field | meaning |
|---|---|
| `theta0` (4), `Mth` (4×4) | parametrisation θ(w) = θ0 + Mth w, with `Mth` the paper's M_{θ₀} |
| `r` | radius, the paper's r_H: the ball is E = {θ(w) : ‖w‖₂ ≤ r} |
| `o` | orientation ±1 |
| `P` (36), `U` (36×4) | centre and frame of the enclosure, used by the local tests |
| `n` | enclosure remainder |
| `label_radius` | label radius of the local tests |
| `k` | boxes per axis used to certify C1 |

All floats are exact binary64 rationals, stored as hex strings as in the current certificate. The prototype takes
Mth = V S⁻¹ and U = T·Mth, where T = DQ(θ0) = U S Vᵀ. With this choice, U has nearly orthonormal columns and the image
of E is nearly a round 4-disc of radius r.

**C1 (the enclosure).** For every w with ‖w‖ ≤ r, writing θ = θ(w): θ ∈ Ω, and some representative of f_o(θ) in the gauge of §1 has
phases Q with ‖Q − P − U w − 2π N‖₂ ≤ n for some integer N ∈ ℤ³⁶.

The local tests are then run on the enclosure δ = U w + ν, with ‖w‖ ≤ r, ‖ν‖ ≤ n, column bound
rcol = maxᵢ ‖U_{(·,i)}‖₂ r + n and Frobenius bound rF = ‖U‖₂ r + n. All three norms are rigorous upper bounds.
`stagec.stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)` must return ok. The existing
lemmas of the local tests apply verbatim: they only use that every Hadamard of the ball is e^{i(P+δ)} with δ of this form.

**How C1 is certified** (prototype: `proof/seed_atlas/prototype/tmball2.py`, `tm2.py`). Partition [−r, r]⁴ into k⁴
boxes of half-width h = r/k and keep the boxes that meet the ball. On a box with centre w_c and variable
u ∈ [−h, h]⁴, set θ = θ_c + Mth u, and work in **second-order Taylor models** in u. Each quantity is
c + g·u + uᵀ H u + e with |e| ≤ ρ. Products keep orders 0 to 2 exactly and push degree ≥ 3 into ρ. The steps:

1. **E, G_h, G_v as Taylor models.** Use the e^{iφ} rule with
   ρ_new = ρ + L₁(L₂ + ρ) + ½(L₂ + ρ)² + (L₁ + L₂ + ρ)³/6, where L₁ = Σ|g_j| h_j and L₂ = Σ|H_jl| h_j h_l.
2. **Side tube (parametric Krawczyk), for each side.**
   - Predictor: φ_pred(u), any second-order Taylor model. The prototype uses numerical derivatives at θ_c. Any choice
     is valid.
   - Residual: Y is any real 6×6 matrix (≈ J(φ_c)⁻¹) and b = sup_box |Y F(φ_pred(u); G(u))|, entrywise.
   - Contraction: q_i is the i-th row sum of sup |I − Y J(φ_pred + [−ρ, ρ]⁶)|. If b_i + q_i ρ < ρ for every i, then for
     every θ in the box there is exactly one solution of F = 0 in φ_pred(u) + [−ρ, ρ]⁶. Its distance from the predictor
     is at most b + qρ.
   - Orientation: certify sign Im Ψ(B) = o and sign Im Ψ(C) = −o over the tube enclosures, i.e. bounded away from 0.
3. **Forced block D by residual correction.**
   - Take any second-order predictor X_p(u) for D. The prototype uses numerical derivatives.
   - The true D satisfies D − X_p = −(C E† + X_p B†)(B†)⁻¹.
   - Bound this by multiplying the residual's bound matrix by an entrywise bound on |(B†)⁻¹| over the box (Neumann
     series with q = ‖|A₀| var(B†)‖_∞ < 1, A₀ = (B†_c)⁻¹).
   - **Do not form D as a product with an inverse:** that amplifies remainders about 100×.
4. **arg D_jk** by arg(c(1 + u)) = arg c + Im(u − u²/2) + R with |R| ≤ |u|³ / (3(1 − |u|)), on the branch nearest P.
5. **The bound per box.** The residual Q − P − U(w_c + u) = a + b·u + uᵀ H u + e is bounded by
   max over the 16 vertices of ‖a + b u‖ (it is convex in u), plus Σ_{jl} ‖H_{·jl}‖ h_j h_l, plus ‖ρ‖.
   Then n ≥ max over boxes.

The certified version does all of this in Arb ball arithmetic (python-flint `arb`/`acb`). Every centre, coefficient and
remainder is a ball, and rounding is absorbed by the balls. The prototype's binary64 REL/ABS inflation is not
acceptable.

## 3. Full-matrix records

These are the existing `RecordCert` objects (`proof/atlas/ballrecord.py`, Lean `Record.lean`), 25-dimensional and
unchanged. The atlas holds a small set of them:
- **F₆'s record.** Required: it contains F₆ in its interior (`nonempty.py`).
- **Optionally, a few records near F₆,** where seeds are close to the boundary of Ω. In the feasibility run, every
  centre at distance below 0.05 from the boundary of Ω is near F₆.
- **Tao's record** (`proof/atlas/tao.py`), unchanged.

## 4. The covered set and claim C2 (the boundary transfers)

Let G4 = {id, conj, transpose, conj∘transpose}, acting on classes. The covered set is W ∪ (the records), with

  W = ⋃_{seed balls j} ⋃_{g ∈ G4} g·f_{o_j}(E_j),   the records = ⋃_{records l} ⋃_{g ∈ G4} g·[Rec_l].

§10 adds the ball at F₆ to W, which is then the paper's W: the seed balls and the ball at F₆, with their symmetry
images. In the certificate the ball at F₆ replaces F₆'s record, and the covered set is W ∪ Tao's record.
Quartet extendability is invariant under G4, as in the current atlas.

**C2 for a seed ball j.** The sphere {‖w‖ = r_j} is covered by finitely many closed w-boxes β, each with one target.
The target kinds T0, T1 and T3 (§10) are the paper's same-corner, corner-change and into-the-chart transfers:

- **(T0) same corner.** A seed ball l with θ_j(β) ⊂ int E_l (all 16 vertices of the parallelotope θ_j(β) satisfy
  ‖Mth_l⁻¹(θ − θ0_l + 2πN)‖ < r_l for a fixed winding N ∈ ℤ⁴), and o_l = o_j.
  This is pure seed-space geometry with no matrices, and exact.
- **(T1) corner change.** Data: a seed ball l, g ∈ G4, and an ordered corner (I, J), I = (i0, i1, i2),
  J = (j0, j1, j2). Let K = g·H_{o_j}(θ) for θ ∈ θ_j(β), using the C1 Taylor models of Q over β. The dephased seed of
  K at (I, J) is linear in K's phases:
  θ'_1 = Q'_{i1 j1} − Q'_{i1 j0} − Q'_{i0 j1} + Q'_{i0 j0}, and likewise for the other three entries.
  Certify that ‖Mth_l⁻¹(θ' − θ0_l + 2πN)‖ < r_l over the box, and that K's sides at that corner have orientation o_l
  and are matched (signs of Im Ψ of K[I, Jᶜ] and of K[Iᶜ, J]ᵀ). Then [K] ∈ f_{o_l}(int E_l) by matched uniqueness.
  **The nonmatched converse (SM Proposition S.4) is not needed.**
- **(T2) into a record.** T2, and T1′ below, move into or out of full-matrix records. The final certificate uses
  neither. Data: a record l, g ∈ G4, a signed permutation and windings, as in the current
  `BoundaryCover`. Certify frob(hor(π(g·Q) + 2πN − P_l)) < R_l over the box.

**C2 for a record l.** This is the current boundary-cover format: η-boxes covering the shell R² − n² ≤ ‖Tη‖². Targets
may now also be seed balls:
- **(T1′).** The corner seed of every K = e^{i(P + Tη + ν)} with η in the box and ‖ν‖ ≤ n lies in int E_l, with
  orientation o_l and matched. Use |ν_e| ≤ n per entry, and ‖L ν‖ ≤ 2n for the linear corner map L.

## 5. Openness, and why the argument closes

**The covered set is closed:** it is a finite union of compact sets. Each E_j ⊂ Ω is compact, and f_o is continuous
(SM Proposition S.3, Completion and continuity).

**The covered set is open:** take [K] in it.
- If [K] = g·f_o(θ) with θ ∈ int E_j, the **open-map lemma** below gives a neighbourhood inside the covered set.
- If θ ∈ ∂E_j, C2 places [K] in g′·f(int E_l) or in a record interior. The same lemma, or the existing record-interior
  lemma, gives a neighbourhood.
- Record boundaries are handled by C2 for records.

**Open-map lemma (new, proof sketch).** For θ ∈ Ω and o = ±1, f_o maps every neighbourhood of θ onto a neighbourhood
of f_o(θ) in the space of Hadamard classes.
- Let [K] be close to f_o(θ). Choose a representative K′ entrywise close to H_o(θ).
- K′'s corner at the same position has dephased seed θ′ close to θ, so θ′ is strict.
- The roots of K′'s sides are close to z_o(θ) and z_{−o}(θ): Ψ is continuous and g > 0.
- By SM Proposition S.2 (Reconstruction of B and C) each root is z₊(θ′) or z₋(θ′). These are distinct, so continuity fixes them: orientation o, matched.
- Matched uniqueness then gives [K] = f_o(θ′).

**Coverage.** This is the current Lean route (`Step2.coverage_of_matched_density` with the weaker classification):
- The covered set is clopen and contains F₆'s record.
- The preimage under f₊ of the covered set is clopen in Ω and nonempty, so it is all of Ω by
  `Step2.isConnected_strict`.
- The Fourier families are connected and contain F₆, so they lie in the covered set.
- Every other non-Tao class has a matched strict corner.
- Tao is excluded by its record.

## 6. Why F₆ needs its own chart

A finite union of seed-ball images is compact and lies in f₊(Ω) ∪ f₋(Ω). F₆ lies in the closure of f₊(Ω) ∪ f₋(Ω)
but not in it, since every corner of F₆ has R = 0. So no seed ball contains F₆, and seed balls alone can never close
up. F₆ therefore needs a chart of its own. The original design used a 25-dimensional full-matrix record at F₆ (§3).
The certificate uses the four-dimensional chart of §10 instead.

## 7. Deliverables and file ownership

Each part lives in its own files and does not edit the files of another part.

| part | directory | writes |
|---|---|---|
| Arb certifier | `proof/seed_atlas/cert/` | `seedcert.py` (C1 and every C2 target type in Arb), `certify_seed_atlas.py` (checks a whole certificate JSON, including the local tests via `proof/atlas/stagec.py` and the existing record checks), `tests/` (negative tests: corrupted n, r, P, U, targets, orientation, each of which must be rejected) |
| Driver | `proof/seed_atlas/driver/` | builds the atlas (untrusted floats), writes `proof/seed_atlas/results/seed_atlas_certificate.json.gz` in the §8 format, and runs on rusty |
| Julia checker | `proof/independent_seed/` | independent re-implementation of C1, C2 and the seed-ball calls of the local tests from this spec alone, in IntervalArithmetic.jl. It may import the local-test code of `proof/independent/src`, but does not edit it |
| Lean | `lean/NoFourMUBS/SeedAtlas/` | new modules only. It may add imports to a new top-level `lean/NoFourMUBS/FinalSeed.lean`, and does not change existing modules |

## 8. Certificate format (`seed_atlas_certificate.json.gz`)

```json
{ "format": "seed-atlas-v1",
  "seeds":   [ {"theta0": [4 hex], "Mth": [16 hex, row-major], "r": hex, "o": 1, "k": 4,
                "P": [36 hex], "U": [144 hex, row-major 36x4], "n": hex, "label_radius": hex,
                "transfers": [ {"box": {"lo": [4 hex], "hi": [4 hex]},
                                "kind": "T0" | "T1" | "T2",
                                "target": int,                         // index into seeds (T0, T1) or records (T2)
                                "g": "id" | "conj" | "T" | "conjT",    // T1, T2
                                "rows": [i0,i1,i2], "cols": [j0,j1,j2], // T1
                                "perm": ..., "wind": [...]              // T2, as in the current atlas format
                              } ] } ],
  "records": [ { ...current atlas record fields..., "boundary": [ ...boxes with targets, kind "rec" or "T1prime"... ] } ],
  "fourier_record": int, "tao": { ...as in proof/atlas/tao.py... } }
```

The driver fixes the exact field names and documents them in `proof/seed_atlas/FORMAT.md`. Both certifiers read that
file, and this section is a sketch of it.

## 9. Lean target

```lean
structure SeedBallCert where ...           -- theta0, Mth, r, o, P, U, n, label_radius + numeric Stage C data
structure SeedAtlasCertificate where ...    -- seeds, records (existing RecordCert), transfers, F6, Tao
theorem NoFourMUBs.FinalSeed.no_four_mubs_seed (C : SeedAtlasCertificate) : ¬ FourMUBs
```

Required: Lean's three standard axioms only, and no sorry.
- **The enclosure C1 enters as a hypothesis field,** stated semantically: for all w with ‖w‖ ≤ r there is a phase
  matrix of a representative of f_o(θ0 + Mth w) within n of P + U w. This mirrors how certify.py's numeric conditions
  enter `AtlasCertificate` now.
- **Exclusion by the local tests:** reuse `StageC/`.
- **The open-map lemma** (§5).
- **Transfers:** T0, T1 and T2 lemmas, stated semantically, plus T1′ for records.
- **The clopen argument and coverage,** reusing `Step2.coverage_of_matched_density`'s route and `Final`'s weaker
  classification.

A second, optional target: the soundness of the C1 certification method itself, so that the hypothesis field can be
replaced by finite inequalities. That means the parametric Krawczyk lemma and Taylor-model operation lemmas
(add, mul, e^{i·}, the residual correction, arg).

## 10. The ball at F₆: the four-dimensional chart through F₆ (replaces F₆'s 25-dim record)

The code calls this ball the edge ball, or X-ball. Source: the fold theorem at R = 0
([`proof/theorems/U_fold_at_edge/`](../theorems/U_fold_at_edge/REVIEW.md), replayed), which gives the analytic
completion across R = 0 and the chart at F₆. Prototype: `proof/seed_atlas/prototype/edgeball.py`, `edge_stagec.py`.
In binary64, a ball at F₆ passes the local tests at r = 0.125 (label radius 0.03, sampled n ≈ 9e-3, 223 labels) and fails at 0.15.

**Chart.**
- Centre: F₆, at its corner with rows and columns (0,1,2).
  - θ⁰ = (1,2,2,4)π/3.
  - φ⁰ = (3,4,5,0,2,4)π/3 for both the horizontal side and the vertical side V = Cᵀ (C₀ = B₀ᵀ).
  - These are exact multiples of π/3. The certifiers use them exactly (Arb π), not as stored floats.
- Parameters: p = (u₁, u₂, u₃, y).
- Horizontal unknowns: x_h = (t, ϕ_h) ∈ ℝ⁷, solving the augmented system (the seven real equations of the SM's
  Fourier neighborhood section), where S(φ) is the side built from φ as in §1:
  - γ(φ⁰ + ϕ_h) = Γ_h(θ), with θ = θ⁰ + (u₁, u₂, u₃, t),
  - Im Ψ(S(φ⁰ + ϕ_h))/24 + y/48 = 0, that is Im Ψ(B) = −y/2.

  Here γ = (Re s, Im s, Re t, Im t, Re r, Im r), with s = Σx_j, t = Σz_j and r = Σx̄_j z_j, where (x₁, x₂, x₃) and
  (z₁, z₂, z₃) are the side's rows 1 and 2. Γ_h(θ) is the same three entries of G_h = 6I₃ − EE†, namely (1,0),
  (2,0) and (2,1).
- Vertical unknowns: x_v = (t′, ϕ_v), solving the same system for Eᵀ at parameters (u₁, u₃, u₂, −y).
  **Require t′ = t:** the fold theorem certifies ∂_{θ₄}R > 1158 on its box, and the certifier must prove ∂₄R > 0 on
  the whole ball's seed range, so that both solves complete the same corner.
- H(p) = [[E(θ), B], [C, D]], with B = S(φ⁰ + ϕ_h), C = S(φ⁰ + ϕ_v)ᵀ and D = −C E† (B†)⁻¹ (residual correction, as in
  §2). The roots of its sides are z = (χ + iy)/(2g) and z̄. H(p) is Hadamard:
  - for y ≠ 0, by matched flatness,
  - for y = 0, by §3.1–3.2 of the fold theorem, provided g > 0 and R = 0 is regular there (∂₄R ≠ 0), which also
    gives d_h d_v ≠ 0.

**The record of the ball at F₆.** Fields: Mth (4×4), r, P (36: F₆'s phases, stored float), U (36×4), n, label_radius, k, and
transfers. The ball is E = {p = Mth w : ‖w‖ ≤ r}.

**C1e (the enclosure of the ball at F₆).** For every w with ‖w‖ ≤ r:
1. the two augmented systems have solutions x_h, x_v in the certified tubes, unique there, with t′ = t,
2. g > 0 and ∂₄R > 0 along the segment between the two seed phases,
3. the resulting H(p) has phases Q with ‖Q − P − U w − 2πN‖ ≤ n.

Certify it like C1: k⁴ w-boxes, second-order Taylor models in w, a parametric Krawczyk tube for each 7-unknown system
(predictor from p = 0 by numerical derivatives, or the fold theorem's exact first-order predictor, its Eq. (21)), D by
residual correction, then arg and the per-box bound. The local tests then run exactly as for a seed ball. The y-extent is large
(|y| ≲ 2 at r = 0.125, since y's singular value in DQ is 0.063), so expect k ≥ 6 along that axis.

**Transfers.**
- *Out of the ball at F₆:* corner-change transfers (T1: the corner seed is linear in Q, plus Ψ signs) into seed
  balls, as for seed balls.
- *Into the chart at F₆, kind T3:* data (g ∈ G4, ordered corner (I, J)). For K = g·(source matrix) over the box:
  - corner seed θ_K (linear in K's phases) and y_K = −2 Im Ψ(K[I, Jᶜ]),
  - p_K = (θ_K,1..3 − θ⁰_1..3, y_K) must lie in int E,
  - K's dephased side angles and θ_K,4 − θ⁰_4 must lie inside the certified horizontal tube at p_K, and likewise for
    the vertical side at (u₁, u₃, u₂, −y_K).

  Uniqueness then gives K ∼ H(p_K).

**Global argument.** The covered set is W ∪ Tao's record, where W is the union of the seed-ball images and the image
of the ball at F₆ (all with G4), as in the paper. There are no 25-dim records except Tao's. Openness at points of the
ball at F₆:
- y ≠ 0: the open-map lemma (§5).
- y = 0 (regular points of R = 0): uniqueness in the augmented tubes gives the same argument. A Hadamard K close to
  H(p) has a corner seed and y close to p, and its sides lie in the tubes, so K ∼ H(p′). A K near H(p) whose two sides
  carry equal nonzero labels would be nonmatched strict, hence Tao, which is far away.

F₆ lies in the interior of the image of the ball at F₆ (p = 0). As §6 says, F₆ needs a chart that is not a seed ball.
The ball at F₆ is that chart, and it is four-dimensional.

### 10.1 Openness at y = 0, corrected

The argument above ("equal nonzero labels ⇒ nonmatched strict ⇒ Tao") rests on the strict-corner converse, SM
Proposition S.4 (Equal roots at a strict corner). The route below does not use it. Openness of the image of the ball at F₆ at every
point, y = 0 included, is proved from two certified facts plus the inverse function theorem, and the strict-corner
converse is not used.

**(G) Graph property near F₆** (the Arb certifier's normal tube, extended from the record shell to the whole ball).
Let P_F, T_F, N_F be the F₆ record's centre, exact frame and normal complement (as in Record.lean). There is ρ_G > 0 such that,
for every η with ‖η‖ ≤ ρ_G, at most one ν ∈ N_F with ‖ν‖ ≤ n_G makes e^{i(P_F + T_F η + ν)} Hadamard.
- **How it is certified:** the normal-tube Krawczyk/exclusion step over η-boxes covering the whole η-ball (not only
  the shell). This gives uniqueness, since the contraction is certified, together with an enclosure.
- **Consequence:** every Hadamard K whose horizontal phase displacement δ from P_F (after the alignment, with
  ‖δ‖ ≤ R_G) has the form T_F η + ν is determined by η(K) = T_F⁺ δ.

**(D) Chart derivative.** On the ball at F₆, the map p ↦ η(H(p)) = T_F⁺ hor(Q(p) − P_F) has an invertible derivative.
It is certified by an enclosure of DQ over each C1e box (the Taylor models' linear and quadratic parts give it) with
σ_min(T_F⁺ hor DQ Mth) ≥ σ_D > 0. The image of the ball at F₆ must also lie inside the region of (G): ‖η‖ < ρ_G and
‖δ‖ ≤ R_G.

**Openness.** Let K be Hadamard near H(p). Then η(K) is near η(H(p)).
1. By (D) and the inverse function theorem, η(K) = η(H(p′)) for some p′ near p.
2. By (G), K = H(p′) as phase matrices, up to the fixed alignment.

So a neighbourhood of [H(p)] lies in the image of the ball at F₆. This holds for every p in the open ball, y = 0
included, and needs neither labels nor the strict-corner converse.

**Certificate fields** added to the `edge` entry of the ball at F₆:
- `"graph": { "eta_radius": hex, "R": hex, "n": hex, "boxes": [...] }`: the η-boxes of (G), with the record's frame
  (`phi`, `Tint`) given inline as for a record,
- `"sigma_D": hex`.

Both certifiers certify (G) and (D). The Lean formalisation states them semantically and proves openness by Mathlib's
inverse function theorem (HasStrictFDerivAt.toPartialHomeomorph).

### 10.2 (G) needs no box computation

(G) follows from the mean value theorem, using the F₆ record's own constants.
- **Setting.** Let Φ be the 30 real off-diagonal orthogonality entries, J = Φ′, and N = N_F.
- **Constants.** At F₆, σ_min(J(0)|_N) = √3: the squared singular values are exactly {3, 9, 12}, and
  BallRecord certifies σ ≥ 1.7 by Arb Cholesky. And ‖J(x) − J(0)‖ ≤ L‖x‖ with L = 2√3 (RIGOUR.md, as in Record.lean).
- **The argument.** Suppose δ₁ = Tη + ν₁ and δ₂ = Tη + ν₂ are both Hadamard, with ‖δ_i‖ ≤ R_G. Then
  0 = Φ(δ₁) − Φ(δ₂) = (∫₀¹ J(δ₂ + s(ν₁ − ν₂)) ds)(ν₁ − ν₂). Every point of that segment has norm ≤ R_G, so the averaged
  Jacobian satisfies ‖· v‖ ≥ (σ − L R_G)‖v‖ on N.
- **Conclusion.** For R_G < σ/L (≥ 1.7/(2√3) ≈ 0.49), ν₁ = ν₂.

So (G) holds with R_G = 0.45, say, and the certificate only has to show that the image of the ball at F₆ lies in
‖hor(Q − P_F)‖ < R_G: it does, since ‖U‖ r + n ≈ 0.14. The `"graph"` field reduces to `{"R": hex, "sigma": hex}`.
The checker verifies σ by BallRecord's Cholesky at F₆ and R < σ/L. Lean has this lemma's ingredients in
Record.lean / NormalBound.lean.

## 11. Horizontal gauge and adaptive C1 boxes (format field `"gauge": "hor"`)

**Why.** In the dephased gauge (first row and column ones), a seed ball of radius r covers much less class space than r
suggests. The horizontal part of its frame has singular values 0.36–0.7, so it covers about 8% of the class volume of
a horizontal r-ball. The first full build needed 27,636 balls for that reason.

**The change.**
- Mth is taken from the SVD of hor(T), not of T, so the ball's image is round in *horizontal* phases.
- C1 and the local tests use the horizontal representative.
- A seed entry with `"gauge": "hor"` stores P = hor(P_g) and U = hor(T) Mth (orthonormal).
- The dephased-gauge centre and frame are recovered exactly by cross ratios:
  P_g = gauge(P), U_g = gauge(U), with gauge(X)_ab = X_ab − X_a0 − X_0b + X_00.

**C1 (hor).** For every w with ‖w‖ ≤ r, let Q_g be the matched completion's phases in the dephased gauge, on the branch
nearest P_g + U_g w (FORMAT §3). Then ‖hor(Q_g) − P − U w‖ ≤ n.
- e^{i hor(Q_g)} = D_r e^{iQ_g} D_c is equivalent to H_o(θ), so the local tests on (P, U, r, n) exclude the class.
- Corner seeds, and every transfer, are unchanged: they are cross ratios, invariant under hor.

**Adaptive boxes.** C1 may be certified on any finite set of boxes whose union contains the ball. The driver splits
every box whose bound exceeds 1.25× the sampled remainder, or whose side tube fails, into its 16 children that meet
the open ball, up to depth 4. The certifiers may refine the same way, with their own targets. `k` is only the starting
grid.

**Result** (floats, 128 sample centres): horizontal radii 0.125 for 59%, 0.1 for 37% and 0.08 for 5%. Each ball covers
about 13× the class volume of a first-build ball, so the expected atlas is about 2–4 thousand balls. The ball at F₆
keeps the dephased gauge (no `"gauge"` field).
