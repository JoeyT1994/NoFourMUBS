# Seed atlas: specification (24 Oct 2026)

The current atlas covers the non-Tao Hadamard classes with 12,021 balls in the 25 horizontal entry phases. This
specification replaces them by balls in the **four seed phases** θ ∈ Ω = {R > 0} ⊂ T⁴. Every quartet exclusion runs on
the matched completions H₊(θ). One full-matrix record is kept at F6, the one class the reconstruction reaches only as a
limit (see §6 for why that is forced), and Tao keeps its record.

Stage C (`proof/atlas/stagec.py`, Lean `StageC/`) is reused unchanged. What changes is how each ball's enclosure
P + U w + ν is certified, and how openness is proved.

The prototype is in `explorations/seed_balls/`; read its `README.md`. Numbers there are binary64 and **not** a proof;
this spec is what the certified versions implement. The feasibility run over all 12,021 old centres is in
`explorations/seed_balls/run/` (`analyze.py run`).

## 1. Objects and conventions

- **Seed.** θ = (θ₁, θ₂, θ₃, θ₄) ∈ ℝ⁴, with a, b, c, d = e^{iθ} and the dephased corner E(θ) = [[1,1,1],[1,a,b],[1,c,d]]
  (θ₁ ↔ E₁₁, θ₂ ↔ E₁₂, θ₃ ↔ E₂₁, θ₄ ↔ E₂₂).
- **Gram matrices.** G_h = 6I − EE*; G_v = 6I − Eᵀ Ē.
- **Normalised sides.**
  - Horizontal side B: first row (1,1,1); rows 1, 2 equal to e^{iφ_h[0..2]}, e^{iφ_h[3..5]}; with BB* = G_h.
  - Vertical side V = Cᵀ: the same shape, with VV* = G_v.
- **Gram residual.** F(φ; G) ∈ ℝ⁶ consists of the real and imaginary parts of the entries (0,1), (0,2), (1,2) of
  SS* − G, where S is the side built from φ. Its Jacobian ∂F/∂φ is nonsingular exactly when Im Ψ(S) ≠ 0; on an actual
  side this holds iff R > 0 (SM Prop. S.1: R = 4(Im Ψ)²).
- **Side signature.** Ψ(S) = perm(S) det(S)² / ∏ S_ab. The label of a side is −Ψ/g.
- **Orientation.** o ∈ {+1, −1} is the sign of Im Ψ(B). The completion is *matched* iff sign Im Ψ(Cᵀ) = −o.
- **The class map.** H_o(θ) = [[E, B], [C, D]], with D = −C E* (B*)⁻¹ and sides chosen with orientation o and matched.
  Its class f_o(θ) is well defined on Ω: matched existence (`L1.matchedExistence`) and uniqueness
  (`Step2.matchedUniqueness`). Moreover f₋(θ) = conj f₊(θ̄).
- **Gauge.** In this gauge H has first row and first column all ones. Q(θ) ∈ ℝ³⁶ (row-major) are its entry phases,
  each taken modulo 2π.

## 2. Seed balls and claim C1 (the enclosure)

A seed ball record holds:

| field | meaning |
|---|---|
| `theta0` (4), `Mth` (4×4) | parametrisation θ(w) = θ0 + Mth w |
| `r` | radius: the ball is E = {θ(w) : ‖w‖₂ ≤ r} |
| `o` | orientation ±1 |
| `P` (36), `U` (36×4) | Stage C centre and frame |
| `n` | enclosure remainder |
| `label_radius` | Stage C label radius |
| `k` | boxes per axis used to certify C1 |

All floats are exact binary64 rationals, stored as hex strings as in the current certificate. The prototype takes
Mth = V S⁻¹ and U = T·Mth, where T = DQ(θ0) = U S Vᵀ. With this choice, U has nearly orthonormal columns and the image
of E is nearly a round 4-disc of radius r.

**C1.** For every w with ‖w‖ ≤ r, writing θ = θ(w): θ ∈ Ω, and some representative of f_o(θ) in the gauge of §1 has
phases Q with ‖Q − P − U w − 2π N‖₂ ≤ n for some integer N ∈ ℤ³⁶.

Stage C is then run on the enclosure δ = U w + ν, with ‖w‖ ≤ r, ‖ν‖ ≤ n, column bound
rcol = maxᵢ ‖U_{(·,i)}‖₂ r + n and Frobenius bound rF = ‖U‖₂ r + n. All three norms are rigorous upper bounds.
`stagec.stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)` must return ok. The existing
Stage C lemmas apply verbatim: they only use that every Hadamard of the ball is e^{i(P+δ)} with δ of this form.

**How C1 is certified** (prototype: `explorations/seed_balls/tmball2.py`, `tm2.py`). Partition [−r, r]⁴ into k⁴
boxes of half-width h = r/k and keep the boxes that meet the ball. On a box with centre w_c and variable
u ∈ [−h, h]⁴, set θ = θ_c + Mth u, and work in **second-order Taylor models** in u. Each quantity is
c + g·u + uᵀ H u + e with |e| ≤ ρ. Products keep orders 0 to 2 exactly and push degree ≥ 3 into ρ. The steps:

1. **E, G_h, G_v as Taylor models.** Use the e^{iφ} rule with
   ρ_new = ρ + L₁(L₂ + ρ) + ½(L₂ + ρ)² + (L₁ + L₂ + ρ)³/6, where L₁ = Σ|g_j| h_j and L₂ = Σ|H_jl| h_j h_l.
2. **Side tube (parametric Krawczyk), for each side.**
   - Predictor: φ_pred(u), any second-order Taylor model. The prototype uses numerical derivatives at θ_c; any choice
     is valid.
   - Residual: Y is any real 6×6 matrix (≈ J(φ_c)⁻¹) and b = sup_box |Y F(φ_pred(u); G(u))|, entrywise.
   - Contraction: q_i is the i-th row sum of sup |I − Y J(φ_pred + [−ρ, ρ]⁶)|. If b_i + q_i ρ < ρ for every i, then for
     every θ in the box there is exactly one solution of F = 0 in φ_pred(u) + [−ρ, ρ]⁶. Its distance from the predictor
     is at most b + qρ.
   - Orientation: certify sign Im Ψ(B) = o and sign Im Ψ(Cᵀ) = −o over the tube enclosures, i.e. bounded away from 0.
3. **Forced block D by residual correction.**
   - Take any second-order predictor X_p(u) for D; the prototype uses numerical derivatives.
   - The true D satisfies D − X_p = −(C E* + X_p B*)(B*)⁻¹.
   - Bound this by multiplying the residual's bound matrix by an entrywise bound on |(B*)⁻¹| over the box (Neumann
     series with q = ‖|A₀| var(B*)‖_∞ < 1, A₀ = (B*_c)⁻¹).
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
- **F6's record.** Required: it contains F6 in its interior (`nonempty.py`).
- **Optionally, a few records near F6,** where seeds are close to the edge of Ω. In the feasibility run, every centre
  with edge distance below 0.05 is near F6.
- **Tao's record** (`proof/atlas/tao.py`), unchanged.

## 4. The covered set W and claim C2 (boundary transfers)

Let G4 = {id, conj, transpose, conj∘transpose}, acting on classes. Then

  W = ⋃_{seed balls j} ⋃_{g ∈ G4} g·f_{o_j}(E_j)  ∪  ⋃_{records l} ⋃_{g ∈ G4} g·[Rec_l].

Quartet extendability is invariant under G4, as in the current atlas.

**C2 for a seed ball j.** The sphere {‖w‖ = r_j} is covered by finitely many closed w-boxes β, each with one target:

- **(T0) same corner.** A seed ball l with θ_j(β) ⊂ int E_l (all 16 vertices of the parallelotope θ_j(β) satisfy
  ‖Mth_l⁻¹(θ − θ0_l + 2πN)‖ < r_l for a fixed winding N ∈ ℤ⁴), and o_l = o_j.
  This is pure seed-space geometry with no matrices, and exact.
- **(T1) change of corner.** Data: a seed ball l, g ∈ G4, and an ordered corner (I, J), I = (i0, i1, i2),
  J = (j0, j1, j2). Let K = g·H_{o_j}(θ) for θ ∈ θ_j(β), using the C1 Taylor models of Q over β. The dephased seed of
  K at (I, J) is linear in K's phases:
  θ'_1 = Q'_{i1 j1} − Q'_{i1 j0} − Q'_{i0 j1} + Q'_{i0 j0}, and likewise for the other three entries.
  Certify that ‖Mth_l⁻¹(θ' − θ0_l + 2πN)‖ < r_l over the box, and that K's sides at that corner have orientation o_l
  and are matched (signs of Im Ψ of K[I, Jᶜ] and of K[Iᶜ, J]ᵀ). Then [K] ∈ f_{o_l}(int E_l) by matched uniqueness.
  **The nonmatched converse is not needed.**
- **(T2) into a record.** Data: a record l, g ∈ G4, a signed permutation and windings, as in the current
  `BoundaryCover`. Certify frob(hor(π(g·Q) + 2πN − P_l)) < R_l over the box.

**C2 for a record l.** This is the current boundary-cover format: η-boxes covering the shell R² − n² ≤ ‖Tη‖². Targets
may now also be seed balls:
- **(T1′).** The corner seed of every K = e^{i(P + Tη + ν)} with η in the box and ‖ν‖ ≤ n lies in int E_l, with
  orientation o_l and matched. Use |ν_e| ≤ n per entry, and ‖L ν‖ ≤ 2n for the linear corner map L.

## 5. Openness, and why the argument closes

**W is closed:** it is a finite union of compact sets. Each E_j ⊂ Ω is compact, and f_o is continuous (SM Prop. S.2).

**W is open:** take [K] ∈ W.
- If [K] = g·f_o(θ) with θ ∈ int E_j, the **open-map lemma** below gives a neighbourhood inside W.
- If θ ∈ ∂E_j, C2 places [K] in g′·f(int E_l) or in a record interior; the same lemma, or the existing record-interior
  lemma, gives a neighbourhood.
- Record boundaries are handled by C2 for records.

**Open-map lemma (new; proof sketch).** For θ ∈ Ω and o = ±1, f_o maps every neighbourhood of θ onto a neighbourhood
of f_o(θ) in the Hadamard quotient.
- Let [K] be close to f_o(θ). Choose a representative K′ entrywise close to H_o(θ).
- K′'s corner at the same position has dephased seed θ′ close to θ, so θ′ is strict.
- K′'s side labels are close to z_o(θ) and z_{−o}(θ): Ψ is continuous and g > 0.
- By SM Prop. S.1 each label is z₊(θ′) or z₋(θ′). These are distinct, so continuity fixes them: orientation o, matched.
- Matched uniqueness then gives [K] = f_o(θ′).

**Coverage.** This is the current Lean route (`Step2.coverage_of_matched_density` with the weaker classification):
- W is clopen and contains F6's record.
- f₊⁻¹(W) is clopen in Ω and nonempty, so it is all of Ω by `Step2.isConnected_strict`.
- The Fourier families are connected and contain F6, so they lie in W.
- Every other non-Tao class has a matched strict corner.
- Tao is excluded by its record.

## 6. Why F6 needs a full-matrix record

A finite union of seed-ball images is compact and lies in f₊(Ω) ∪ f₋(Ω). F6 lies in its closure but not in it, so seed
balls alone can never close up. One 25-dimensional record at F6 is therefore forced.

## 7. Deliverables and file ownership

Each piece lives in its own files. **Do not edit another piece's files.**

| piece | directory | writes |
|---|---|---|
| A. Arb certifier | `proof/seed_atlas/cert/` | `seedcert.py` (C1 and every C2 target type in Arb), `certify_seed_atlas.py` (checks a whole certificate JSON, including Stage C via `proof/atlas/stagec.py` and the existing record checks), `tests/` (negative tests: corrupted n, r, P, U, targets, orientation; each must be rejected) |
| B. Driver | `proof/seed_atlas/driver/` | builds the atlas (untrusted floats), writes `proof/seed_atlas/results/seed_atlas_certificate.json.gz` in the §8 format; runs on rusty |
| C. Julia replay | `proof/independent_seed/` | independent re-implementation of C1, C2 and the seed-ball Stage C calls from this spec alone, in IntervalArithmetic.jl; may reuse `proof/independent/src` Stage C code by import, not by editing it |
| D. Lean | `lean/NoFourMUBS/SeedAtlas/` | new modules only; may add imports to a new top-level `lean/NoFourMUBS/FinalSeed.lean`; must not change existing modules |

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

Piece B owns the exact field names and documents them in `proof/seed_atlas/FORMAT.md`. Pieces A and C read that file;
if it is not there yet, they use this section.

## 9. Lean target (piece D)

```lean
structure SeedBallCert where ...           -- theta0, Mth, r, o, P, U, n, label_radius + numeric Stage C data
structure SeedAtlasCertificate where ...    -- seeds, records (existing RecordCert), transfers, F6, Tao
theorem NoFourMUBs.FinalSeed.no_four_mubs_seed (C : SeedAtlasCertificate) : ¬ FourMUBs
```

Required: Lean's three standard axioms only; no sorry.
- **The enclosure C1 enters as a hypothesis field,** stated semantically: for all w with ‖w‖ ≤ r there is a phase
  matrix of a representative of f_o(θ0 + Mth w) within n of P + U w. This mirrors how certify.py's numeric conditions
  enter `AtlasCertificate` now.
- **Stage C exclusion:** reuse `StageC/`.
- **The open-map lemma** (§5).
- **Transfers:** T0, T1 and T2 lemmas, stated semantically, plus T1′ for records.
- **The clopen argument and coverage,** reusing `Step2.coverage_of_matched_density`'s route and `Final`'s weaker
  classification.

Second, if time allows: the soundness of the C1 certification method itself, so that the hypothesis field can be
replaced by finite inequalities. That means the parametric Krawczyk lemma and Taylor-model operation lemmas
(add, mul, e^{i·}, the residual correction, arg).
