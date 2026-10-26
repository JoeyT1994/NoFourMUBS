# Seed atlas: specification

The specification both certifiers implement (with `FORMAT.md` for the file layout): balls in the **four seed phases**
θ ∈ Ω = {R > 0} ⊂ T⁴ (`PROOF.md` Steps 3–5). Every quartet exclusion runs on the matched completions H_o(θ). Stage C
(`proof/atlas/stagec.py`, Lean `StageC/`) is reused unchanged; what is new is how each ball's enclosure P + U w + ν is
certified, and how openness is proved.

**Current form.** Two parts of this design were superseded as it was carried out, and are kept below for the record:
- **F6.** F6 is the centre of the X-ball (§10, the edge chart), excluded by return X at 7/40 with no Stage C, instead of
  a full-matrix record (§3, §6). Certificates list no records; Tao keeps its zero-dimensional one.
- **C1.** C1 is first certified by return Z's whole-ball method (`cert/wholeball.py`), from one centre computation.
  The box method of §2 and §11 is the fallback.

The prototype is in `explorations/seed_balls/`; read its `README.md`. Numbers there are binary64 and **not** a proof;
this spec is what the certified versions implement. The driver is `proof/seed_atlas/driver/`, with the horizontal gauge and
adaptive boxes of §11.

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

## 10. Edge balls: the four-dimensional chart through F6 (replaces F6's 25-dim record)

Source: return U (`explorations/returns/U_fold_at_edge/`, replayed): fold theorem, analytic completion across R = 0, and
the chart at F6. Prototype: `explorations/seed_balls/edgeball.py`, `edge_stagec.py`. In binary64, an edge ball at F6
passes Stage C at r = 0.125 (label radius 0.03, sampled n ≈ 9e-3, 223 labels) and fails at 0.15.

**Chart.**
- Centre: F6, at its corner with rows and columns (0,1,2).
  - θ⁰ = (1,2,2,4)π/3.
  - φ⁰ = (3,4,5,0,2,4)π/3 for both the horizontal side and the vertical side V = Cᵀ (C₀ = B₀ᵀ).
  - These are exact multiples of π/3. The certifiers use them exactly (Arb π), not as stored floats.
- Parameters: p = (u₁, u₂, u₃, y).
- Horizontal unknowns: x_h = (t, ϕ_h) ∈ ℝ⁷, solving the augmented system (U eq. 20):
  - γ(φ⁰ + ϕ_h) = Γ_h(θ), with θ = θ⁰ + (u₁, u₂, u₃, t);
  - Im Ψ(X(φ⁰ + ϕ_h))/24 + y/48 = 0.

  Here γ = (Re s, Im s, Re t, Im t, Re r, Im r), with s = Σx_j, t = Σy_j, r = Σx̄_j y_j over the side's rows 1, 2;
  Γ_h(θ) is the same three entries of G_h = 6I − EE*, namely (1,0), (2,0) and (2,1).
- Vertical unknowns: x_v = (t′, ϕ_v), solving the same system for Eᵀ at parameters (u₁, u₃, u₂, −y).
  **Require t′ = t:** U certifies ∂_{θ₄}R > 1158 on its box, and the certifier must prove ∂₄R > 0 on the whole ball's
  seed range, so that both solves complete the same corner.
- H(p) = [[E(θ), B], [C, D]], with B = X(φ⁰ + ϕ_h), C = X(φ⁰ + ϕ_v)ᵀ and D = −C E* (B*)⁻¹ (residual correction, as in
  §2). Its labels are z = (χ + iy)/(2g) and z̄. H(p) is Hadamard:
  - for y ≠ 0, by matched flatness;
  - for y = 0, by U §3.1–3.2, provided g > 0 and the edge is regular (∂₄R ≠ 0), which also gives d_h d_v ≠ 0.

**The edge-ball record.** Fields: Mth (4×4), r, P (36: F6's phases, stored float), U (36×4), n, label_radius, k, and
transfers. The ball is E = {p = Mth w : ‖w‖ ≤ r}.

**C1e.** For every w with ‖w‖ ≤ r:
1. the two augmented systems have solutions x_h, x_v in the certified tubes, unique there, with t′ = t;
2. g > 0 and ∂₄R > 0 along the segment between the two seed phases;
3. the resulting H(p) has phases Q with ‖Q − P − U w − 2πN‖ ≤ n.

Certify it like C1: k⁴ w-boxes, second-order Taylor models in w, a parametric Krawczyk tube for each 7-unknown system
(predictor from p = 0 by numerical derivatives; U's exact first-order predictor (21) is available), D by residual
correction, then arg and the per-box bound. Stage C then runs exactly as for a seed ball. The y-extent is large
(|y| ≲ 2 at r = 0.125, since y's singular value in DQ is 0.063), so expect k ≥ 6 along that axis.

**Transfers.**
- *Out of the edge ball:* T1 (corner change: the corner seed is linear in Q, plus Ψ signs) into seed balls, as for seed
  balls.
- *Into the edge ball, kind T3:* data (g ∈ G4, ordered corner (I, J)). For K = g·(source matrix) over the box:
  - corner seed θ_K (linear in K's phases) and y_K = −2 Im Ψ(K[I, Jᶜ]);
  - p_K = (θ_K,1..3 − θ⁰_1..3, y_K) must lie in int E;
  - K's dephased side angles and θ_K,4 − θ⁰_4 must lie inside the certified horizontal tube at p_K, and likewise for
    the vertical side at (u₁, u₃, u₂, −y_K).

  Uniqueness then gives K ≅ H(p_K).

**Global argument.** W = seed-ball images ∪ edge-ball image ∪ Tao's record (all with G4). There are no 25-dim
records except Tao's. Openness at edge-ball points:
- y ≠ 0: the open-map lemma (§5);
- y = 0 (regular edge points): uniqueness in the augmented tubes gives the same argument. A Hadamard K close to H(p)
  has a corner seed and y close to p, and its sides lie in the tubes, so K ≅ H(p′). A K near H(p) whose two sides
  carry equal nonzero labels would be nonmatched strict, hence Tao, which is far away.

F6 ∈ int(edge-ball image) trivially (p = 0). §6 still holds: F6 needs a chart that is not a seed ball; the edge
ball is that chart, and it is four-dimensional.

### 10.1 Openness at y = 0, corrected (24 Oct, after piece D's review)

The argument above ("equal nonzero labels ⇒ nonmatched strict ⇒ Tao") is **wrong as stated**: Lean's converse gives
"Tao or a Fourier family", and the Fourier families pass through F6. Openness of the edge-ball image at every point,
y = 0 included, is instead proved from two certified facts plus the inverse function theorem. No nonmatched converse
is used.

**(G) Graph property near F6** (piece A's normal tube, extended from the record shell to the whole ball). Let P_F,
T_F, N_F be the F6 record's centre, exact frame and normal complement (as in Record.lean). There is ρ_G > 0 such that,
for every η with ‖η‖ ≤ ρ_G, at most one ν ∈ N_F with ‖ν‖ ≤ n_G makes e^{i(P_F + T_F η + ν)} Hadamard.
- **How it is certified:** the normal-tube Krawczyk/exclusion step over η-boxes covering the whole η-ball (not only
  the shell). This gives uniqueness, since the contraction is certified, together with an enclosure.
- **Consequence:** every Hadamard K whose horizontal phase displacement δ from P_F (after the alignment, with
  ‖δ‖ ≤ R_G) has the form T_F η + ν is determined by η(K) = T_F⁺ δ.

**(D) Chart derivative.** On the edge ball, the map p ↦ η(H(p)) = T_F⁺ hor(Q(p) − P_F) has an invertible derivative.
It is certified by an enclosure of DQ over each C1e box (the Taylor models' linear and quadratic parts give it) with
σ_min(T_F⁺ hor DQ Mth) ≥ σ_D > 0. The edge ball's image must also lie inside the region of (G): ‖η‖ < ρ_G and
‖δ‖ ≤ R_G.

**Openness.** Let K be Hadamard near H(p). Then η(K) is near η(H(p)).
1. By (D) and the inverse function theorem, η(K) = η(H(p′)) for some p′ near p.
2. By (G), K = H(p′) as phase matrices, up to the fixed alignment.

So a neighbourhood of [H(p)] lies in the edge-ball image. This holds for every p in the open ball, y = 0 included, and
needs neither labels nor the converse.

**Certificate fields** added to an edge entry:
- `"graph": { "eta_radius": hex, "R": hex, "n": hex, "boxes": [...] }`: the η-boxes of (G), with the record's frame
  (`phi`, `Tint`) given inline as for a record;
- `"sigma_D": hex`.

Pieces A and C certify (G) and (D); piece D states them semantically and proves openness by Mathlib's inverse
function theorem (HasStrictFDerivAt.toPartialHomeomorph).

### 10.2 (G) needs no box computation (24 Oct)

(G) follows from the mean value theorem, using the F6 record's own constants.
- **Setting.** Let Φ be the 30 real off-diagonal orthogonality entries, J = Φ′, and N = N_F.
- **Constants.** At F6, σ_min(J(0)|_N) = √3: return V certifies the squared singular values {3, 9, 12} exactly, and
  BallRecord certifies σ ≥ 1.7 by Arb Cholesky. And ‖J(x) − J(0)‖ ≤ L‖x‖ with L = 2√3 (RIGOUR.md, as in Record.lean).
- **The argument.** Suppose δ₁ = Tη + ν₁ and δ₂ = Tη + ν₂ are both Hadamard, with ‖δ_i‖ ≤ R_G. Then
  0 = Φ(δ₁) − Φ(δ₂) = (∫₀¹ J(δ₂ + s(ν₁ − ν₂)) ds)(ν₁ − ν₂). Every point of that segment has norm ≤ R_G, so the averaged
  Jacobian satisfies ‖· v‖ ≥ (σ − L R_G)‖v‖ on N.
- **Conclusion.** For R_G < σ/L (≥ 1.7/(2√3) ≈ 0.49), ν₁ = ν₂.

So (G) holds with R_G = 0.45, say, and the certificate only has to show that the edge ball's image lies in
‖hor(Q − P_F)‖ < R_G: it does, since ‖U‖ r + n ≈ 0.14. The `"graph"` field reduces to `{"R": hex, "sigma": hex}`;
the checker verifies σ by BallRecord's Cholesky at F6 and R < σ/L. Lean has this lemma's ingredients in
Record.lean / NormalBound.lean.

## 11. Horizontal gauge and adaptive C1 boxes (24 Oct, format field `"gauge": "hor"`)

**Why.** In the dephased gauge (first row and column ones), a seed ball of radius r covers much less class space than r
suggests. The horizontal part of its frame has singular values 0.36–0.7, so it covers about 8% of the class volume of
a horizontal r-ball. The first full build needed 27,636 balls for that reason.

**The change.**
- Mth is taken from the SVD of hor(T), not of T, so the ball's image is round in *horizontal* phases.
- C1 and Stage C use the horizontal representative.
- A seed entry with `"gauge": "hor"` stores P = hor(P_g) and U = hor(T) Mth (orthonormal).
- The dephased-gauge centre and frame are recovered exactly by cross ratios:
  P_g = gauge(P), U_g = gauge(U), with gauge(X)_ab = X_ab − X_a0 − X_0b + X_00.

**C1 (hor).** For every w with ‖w‖ ≤ r, let Q_g be the matched completion's phases in the dephased gauge, on the branch
nearest P_g + U_g w (FORMAT §3). Then ‖hor(Q_g) − P − U w‖ ≤ n.
- e^{i hor(Q_g)} = D_r e^{iQ_g} D_c is equivalent to H_o(θ), so Stage C on (P, U, r, n) excludes the class.
- Corner seeds, and every transfer, are unchanged: they are cross ratios, invariant under hor.

**Adaptive boxes.** C1 may be certified on any finite set of boxes whose union contains the ball. The driver splits
every box whose bound exceeds 1.25× the sampled remainder, or whose side tube fails, into its 16 children that meet
the open ball, up to depth 4. The certifiers may refine the same way, with their own targets; `k` is only the starting
grid.

**Result** (floats, 128 sample centres): horizontal radii 0.125 for 59%, 0.1 for 37% and 0.08 for 5%. Each ball covers
about 13× the class volume of a first-build ball, so the expected atlas is about 2–4 thousand balls. Edge balls keep
the dephased gauge (no `"gauge"` field).
