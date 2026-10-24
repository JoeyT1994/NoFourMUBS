# Independent replay of the seed atlas (piece C)

This folder is a second, independent checker of a seed-atlas certificate (`proof/seed_atlas/SPEC.md`), written in
Julia with IntervalArithmetic.jl. It re-implements from the specification:
- claim C1 for every seed ball (the enclosure P + U w + ν),
- Stage C on that enclosure,
- claim C2: the boundary transfers T0, T1, T2 of seed balls and rec, T1′ of records, with the coverage of every
  boundary,
- Tao's zero-dimensional record;
- the edge balls of SPEC §10 (the four-dimensional chart through F6 that replaces F6's record): C1e, Stage C on their
  enclosure, T3 transfers into them, and their sphere covers by T1.

The 25-dimensional records (normal bound, Stage C, F6) reuse `proof/independent/src` unchanged: it is loaded as the
submodule `IndepAtlas` and nothing in it is edited.

**Sources used:** `SPEC.md`; `FORMAT.md` (piece B's branch, commits 37c52092 and 2f77a3c0); `proof/independent`
(README and `src`); `proof/atlas/COVERAGE.md`; the module docstrings of `proof/atlas/ballrecord.py` and
`proof/atlas/tao.py`. I also read `explorations/seed_balls/README.md` and the prototype (`seedball.py`, `tm2.py`,
`tmball.py`, `tmball2.py`), but only for the mathematics: the design below differs from it, as listed under "Design".

**Not opened:** piece A's code (`proof/seed_atlas/cert/`), the driver's code (`proof/seed_atlas/driver/`) and
`proof/atlas/stagec.py`.

## Running it

```bash
cd proof/independent_seed
julia --startup-file=no -t 8 --project=../independent/jlenv check_seed.jl CERT.json.gz OUTDIR   # whole certificate
tests/run_tests.sh 4                                                                          # all tests, ~5 min
mkdir -p out && sbatch run_rusty.sh                                                           # one rusty node
```

- **Environment.** The Julia environment is `../independent/jlenv`: IntervalArithmetic 1.0.10, with no new packages.
- **Conversion.** `check_seed.jl` calls `convert_seed.py` (Python standard library only) to turn the gzip JSON into
  plain text. Every float passes through `float.fromhex` and `float.hex`, so the conversion is exact.
- **Options.**
  - `--fast`: Stage C float decisions with margins only.
  - `--limit K`, `--only i,j`: subsets of seed balls.
  - `--partial`: exit 0 when every checked object passed.
  - `--c1-depth D` (default 3) and `--split-depth S` (default 2): see "Design".
  - `--shard k/m` and `--import D1,...`: split the seed balls over processes.
- **Rusty.** `run_rusty.sh` starts 8 shard processes of 16 threads each. One garbage collector per process scales
  better than 128 threads in one process (see `proof/independent/README.md`, "Performance"). A final run then imports
  their receipts, checks the records, F6 and Tao, and writes the verdict.
- **Output.** OUTDIR receives:
  - `BINDING.txt`: SHA-256 digests of the certificate, every source file (including `../independent/src`) and the
    Julia environment, plus the Julia version and the options.
  - `records.tsv`: Step 3 of every record.
  - `seeds.tsv`: per seed ball, C1 (certified bound against n), Stage C and C2.
  - `recbound.tsv`: C2 of every record.
  - `RESULT.txt`: PASS or FAIL per object with the reason, F6, Tao, timings, a summary and the verdict.
- **Resuming.** Receipts are appended as objects finish. A rerun resumes only if `BINDING.txt` matches the new run
  exactly.
- **Exit status.** 0 only for a complete certificate in which every check passed, or with `--partial`, when every
  checked object passed.

| File | Contents |
|---|---|
| `convert_seed.py`, `src/io_seed.jl` | certificate JSON to text to structs: the only code that knows the layout |
| `src/tm.jl` | second-order Taylor models in four variables, with interval coefficients and rigorous remainders |
| `src/seedmap.jl` | the matched completion H_o(θ) on a box: sides (parametric Krawczyk), Ψ, D, arg D, giving 36 phase models |
| `src/c1.jl` | claim C1: the box cover of the ball and the per-box bound |
| `src/stagec_seed.jl` | Stage C on P + U w + ν, through the existing `IndepAtlas.stage_c` |
| `src/normal_tube.jl` | the normal component ν of a record's Hadamards over an η-box (Krawczyk in N), for T1′ |
| `src/transfers.jl` | T0, T1, T2, rec, T1′; dyadic coverage of spheres and shells |
| `src/tao.jl` | Tao's record: S6 in the ball, σ, isolation L R < σ, the normal bound, Stage C |
| `src/edge.jl` | edge balls: the two augmented 7-unknown systems, their Krawczyk tubes, ∂₄R > 0 and g > 0, C1e |
| `src/edge_transfers.jl` | T3 (seed sphere into an edge ball), the edge sphere cover by T1, F6 = H(0) |
| `check_seed.jl` | the driver (threads, shards, receipts, verdict) |
| `run_rusty.sh` | one rusty node |
| `tests/` | `run_tests.sh`, `enclosure.jl`, `negative.jl`, the test certificate and its generator |

## Design

### Taylor models (`src/tm.jl`)

A model (c, g, q, r) on a box |u_j| ≤ h_j stands for a fixed polynomial p(u) = c + Σ g_j u_j + Σ_{j≤l} q_jl u_j u_l
whose coefficients lie in the stored intervals, together with the claim |f(u) − p(u)| ≤ r on the box.

- **Representation.** Coefficients are `Interval{Float64}` or complex intervals. The quadratic part uses the
  monomial basis u_j u_l (ten coefficients), not a symmetric matrix.
- **Product.** Orders 0 to 2 are kept exactly. The discarded terms (g·u)q′ + q(g′·u) + qq′ are bounded by
  L₁L₂′ + L₂L₁′ + L₂L₂′. The remainders contribute r B′ + B r′ + r r′, with B = |c| + L₁ + L₂.
- **e^{ix}.** From |e^{iy} − 1 − iy + y²/2| ≤ |y|³/6:
  r_new = r + L₁(L₂ + r) + (L₂ + r)²/2 + (L₁ + L₂ + r)³/6, times |e^{ic}|.
- **The same code in Float64.** It runs with Float64 coefficients and no remainder, only to compute predictors.
  Nothing it produces is trusted.

### C1 (`src/seedmap.jl`, `src/c1.jl`)

**The box cover.**
- The first level is the certificate's k⁴ partition of [−r, r]⁴. Box centres are interval enclosures of
  −r + (2i+1)r/k, and the half-width is h ≥ r/k.
- A model computed with an interval centre holds for every point of it, so the boxes cover the ball exactly.
- A box is dropped only if it certainly misses the ball.
- A box whose bound exceeds n, or whose certification fails, is split into its 16 halves, down to D = 3 extra
  levels. **The certified bound is the maximum over accepted boxes, and C1 passes iff it is ≤ n.** So k only sets
  the starting partition.

**On each box** (θ = θ_c + Mth u), the steps below are each decided in intervals.

1. **E and the Gram data.** The off-diagonal entries of G_h and G_v are written as 1 + e^{−iθ_a} + e^{−iθ_b} and
   1 + e^{i(θ_a−θ_c)} + e^{i(θ_b−θ_d)}. Each exponential is one e^{ix} of a linear model, with no products.
2. **The sides: parametric Krawczyk.** F(φ; θ) = (Re, Im) of f₀₁ = Σ e^{−iφ_k} + γ₀₁, f₀₂ and f₁₂ = Σ e^{i(φ_k−φ_{3+k})} + γ₁₂.
   - *Predictor.* Newton in the space of truncated float models: φ ← φ − Y F(φ), started from the float solution
     at the centre. Each step gains one order. There are no numerical derivatives.
   - *Test.* b = sup|Y F(φ_pred)| and A = sup|I − Y J(tube)|, both entrywise, from models. With a **vector** ρ,
     b + Aρ < ρ certifies a unique zero in φ_pred + [−ρ, ρ]⁶. The remainder kept is b + Aρ.
3. **Orientation.** Im Ψ(B) and Im Ψ(V) are evaluated as models:
   - Ψ = perm·det²·e^{−iΣφ};
   - each term of perm and det is one e^{ix} of a sum of phases.

   The sign o (respectively −o) is certified over the box.
4. **The forced block D.**
   - *Predictor.* A float-model Newton on X B* = −C E*, X ← X − (X B* + C E*) A₀.
   - *Bound.* R = C E* + X_p B* is evaluated in interval models. A Neumann series around A₀ = (mid B*_c)⁻¹ bounds
     |(B*)⁻¹| entrywise.
   - *Result.* D = X_p with the remainder |R|·|(B*)⁻¹|.
5. **arg D.** D e^{−iP} = c(1 + v), where v has no constant term. Then arg D = P + Arg c + Im(v − v²/2) + R, with
   |R| ≤ |v|³/(3(1 − |v|)), Re c > 0 and |v| < 1/2. Rotating by e^{−iP} first puts the branch next to P.
6. **The bound.** The residual Q + 2πN − P − U(w_c + u) is 36 models. Its norm is bounded by
   max over the 16 vertices of ‖a′ + G v‖, plus (Σ_e (Σ_m |q_em| k_m + r_e)²)^{1/2}. Here:
   - the diagonal monomials are recentred, u_j² = h_j²/2 + (u_j² − h_j²/2), so a′ = c + Σ_j q_jj h_j²/2 and
     k_jj = h_j²/2;
   - the tail is combined entry by entry before the 2-norm, which is tighter than a sum of per-monomial norms.

**Differences from the prototype `tmball2.py`.**
- Box centres are intervals, and refinement is adaptive.
- The predictors come from Newton in model space, not from finite differences.
- The Krawczyk radius is a vector, not a scalar.
- The Gram data and Ψ use exponentials of sums, not products.
- The arg is rotated by e^{−iP} first.
- The diagonal of the quadratic part is recentred, and the tail is combined per entry.

### Stage C on the enclosure (`src/stagec_seed.jl`)

The existing `IndepAtlas.stage_c` takes a frame T = T36/(36·2³⁰) with integer T36. We pass
T36 = round(U·36·2³⁰) and absorb the exact rounding error into the normal term: δ = U w + ν = T w + ν′ with
‖ν′‖ ≤ n′ = n + ‖U − T‖_F r. Here ‖U − T‖_F ≤ 8·10⁻¹¹, computed exactly in intervals. The enclosure handed to Stage C
therefore contains the spec's enclosure.

rcol = maxᵢ ‖U_(·,i)‖₂ r + n (the 6×4 block of column i) and rF = ‖U‖₂ r + n are upper bounds computed in
intervals. Stage C itself is unchanged: interval replay of every float rejection, with label_radius in cycles.

### C2 (`src/transfers.jl`)

Boxes are FORMAT.md's dyadic boxes, in units of r (or eta_scale). Their endpoints are exact floats, and the box in w is
the real box r·[lo, hi], enclosed in intervals.

**Windings.** The stored windings are the ones checked. The checker chooses its own only where none is stored, which
is valid for any integer winding.

**The representative.** It is FORMAT.md §3's, the entries nearest P + U w, fixed at each box's centre.

**The kinds.**
- **T0.** Interval check at the 16 vertices of θ_j(β) (the parallelotope; E_l is convex), and o_l = o_j.
- **T1 at a corner inside rows and columns 0..2.**
  - θ′ is affine in w (the corner block of Q is exactly 0, θ₁…θ₄), so the check is at the vertices, with no model.
  - The orientation at the corner is o_j for g ∈ {id, conjT} and −o_j for g ∈ {conj, T}, and the corner is matched.
    The sides there are B and C up to conjugation, transposition and order, and Ψ is invariant under those
    permutations and scalings.
- **T1, general corner.** box_map is run over the whole box β, including points just outside the ball, so nothing
  relies on C1 there. Then:
  - θ′ is a linear combination of phase models;
  - the landing is ‖Mth_l⁻¹(θ′ + 2πN − θ0_l)‖ < r_l, with Mth_l⁻¹ enclosed by a verified inverse;
  - Im Ψ is computed from models of K[I, Jᶜ] and K[Iᶜ, J].
- **T2.** ‖hor(π(g·Q) + 2πN − P_t)‖ < R_t. The polynomial part is projected in models, and the remainders enter as
  ‖r‖₂, since ‖hor e‖ ≤ ‖e‖. The target record must pass Step 3.
- **rec.** ‖hor(π(g·(P_s + Tη)) + 2πN − P_t)‖ + n_s < R_t, at the 16 vertices. The map is affine in η, so this is
  exact.
- **T1′.** The normal component ν of the record's Hadamards is enclosed over the η-box by the normal tube (below).
  The phase models P + Tη + M x_p(η) carry the per-entry remainder ‖M_e,:‖ρ, used for Ψ. The landing adds
  ‖Mth_t⁻¹ L g M‖₂·ρ for the rest of θ′. If the tube's Krawczyk test fails, the crude form is used instead:
  |ν_e| ≤ n per entry, and ‖Mth_t⁻¹ L g‖₂·n in the landing. Both are valid.

### The normal tube for T1′ (`src/normal_tube.jl`; coordinator's update of 24 Oct)

This is my own design; it differs from the componentwise test proposed in FORMAT.md §6.

- **Coordinates on N.** N is the horizontal space minus span T (21-dimensional), with the exact projector
  Π = h − TG⁻¹Tᵀ. N_b is a float approximate orthonormal basis of N. M = Π N_b is enclosed in intervals from the
  exact Π, so the exact M has its columns in N. A Gershgorin bound λ_min(MᵀM) ≥ λ > 0 makes x ↦ Mx a bijection onto N,
  with ‖x‖ ≤ ‖Mx‖/√λ. So every Hadamard of the record has ν = Mx with ‖x‖ ≤ n_x = n/√λ.
- **The second derivative.** Φ_ij(δ) = Σ_c e^{i(P_ic − P_jc + δ_ic − δ_jc)} gives |Φ″_ij[w, v]| ≤ Σ_c |w_ic − w_jc||v_ic − v_jc|.
  With ‖w_i − w_j‖² ≤ 2‖w‖², and Σ_{i<j} ‖v_i − v_j‖² = 6‖v‖² for horizontal v (Lagrange's identity), this gives
  ‖Φ″[w, v]‖ ≤ 2√3‖w‖‖v‖. Hence ‖(J(d₁) − J(d₂))v‖ ≤ L‖d₁ − d₂‖‖v‖ for horizontal v, with L = 2√3.
- **The Krawczyk test, in the 2-norm.** F(u, x) = Y Φ(T(z_c + u) + Mx).
  - Y is a float 21×30 pseudo-inverse of J M at the box centre. The predictor x_p(u) is a second-order float model,
    from Newton in model space.
  - For each u, the ball X(u) = B(x_p(u), ρ_X) with ρ_X ≥ n_x + sup‖x_p‖ contains every record Hadamard's x.
  - By the integral mean value theorem along segments, ‖K(x) − x_p(u)‖ ≤ β + α(ρ_X)ρ_X on X(u), where:
    - β ≥ sup_u ‖Y Φ(δ_c(u))‖ along the predictor δ_c(u) = T(z_c + u) + M x_p(u);
    - α(ρ) = ‖I − Y J(δ_c(0)) M‖ + ‖Y‖ L ‖M‖ (D + ‖M‖ρ), with D ≥ sup_u ‖δ_c(u) − δ_c(0)‖.
  - If β + α(ρ_X)ρ_X < ρ_X, the ball maps into itself (so a zero exists, by Brouwer), and every mean-value matrix
    satisfies ‖I − Y J̄ M‖ < 1 (so the zero is unique in X(u)). Every record Hadamard is that zero.
- **Contraction steps.** The zero lies in K(B_k) for every ball B_k that contains it, so ρ_{k+1} = β + α(ρ_k)ρ_k is
  again a valid radius. A few steps bring ρ down to about β.
- **β to third order.** β is a third-order quantity. Second-order models would push each exponential's cubic terms
  into its own remainder, where they cannot cancel in the sums of Φ. So Φ along the predictor is expanded to third
  order with exact interval coefficients (35 monomials):
  e^{iy} = e^{ic}[1 + iℓ + (iq − ℓ²/2) + (−ℓq − iℓ³/6)] + e^{ic}R, |R| ≤ L₂²/2 + L₁²L₂/2 + L₁L₂²/2 + L₂³/6 + (L₁ + L₂)⁴/24.
  This is about 15× tighter than the second-order bound.
- **Measured.**

  | record | box half-width | ρ | contraction α(ρ_X) | n |
  |---|---|---|---|---|
  | F6's record (atlas 877), R = 0.125 | 0.016 (level 3) | ≤ 9·10⁻⁶ | ≤ 0.14 | 0.0159 |
  | same | 0.008 (level 4) | ≤ 1.0·10⁻⁶ | ≤ 0.10 | 0.0159 |
  | F6's record, R = 0.08 | level 3 | ≤ 2.2·10⁻⁶ | | 0.0064 |
  | same | level 4 | ≤ 2.5·10⁻⁷ | | 0.0064 |

  This is about 5 ms per box, and record boxes are checked on all threads. In the BigFloat sampling test, the true
  normal coordinates lie within 0.11–0.15·ρ of the predictor.

**Splitting.** A box that fails as a whole is split into its 16 halves with the same target, down to S = 2 levels.
T0 and corner-T1 are vertex tests, so they are not split.

**Coverage.** FORMAT.md's top-down traversal:
- a box is covered if it is listed, or certainly misses the region, or all 16 children are covered;
- the traversal stops at the deepest listed level;
- for a seed ball, the region is the unit sphere ‖u‖ = 1;
- for a record, it is the shell R² − n² ≤ ‖Tη‖² ≤ R². This is valid because ν ⊥ span T in Lemma 3.1
  (η = G⁻¹Tᵀδ); it is FORMAT.md §6's shell. A box is off it if max ‖Tη‖² < R² − n², min ‖Tη‖ > R or
  min ‖η‖ > r_H;
- eta_scale must be ≥ R/√λ_min(G). λ_min is bounded below by an exact rational LDLᵀ of G − λI.

### Rigour

- **Interval decisions.** Every acceptance is decided in interval arithmetic: C1, all C2 kinds, coverage, Tao's σ and
  isolation, and the Stage C replay.
- **Floats.** They only choose predictors, guesses, windings where none is stored, and refinement.
- **Non-finite values.** A non-finite or not-an-interval value makes every comparison false, so the check fails.
  The input converter rejects non-finite floats.
- **Exceptions.** An exception in one object is recorded as that object's FAIL.
- **The verdict.** "Complete" needs every seed ball index checked (duplicates in `--only` do not count twice), every
  record, F6 and Tao, and no `--fast`. A `--fast` run says that its verdict is not rigorous.
- **Review.** An independent soundness review of this code (24 Oct) found no unsound step in C1, Stage C or C2. It
  found two gaps, both now fixed: Tao's ball was not checked to contain S6, and duplicate `--only` indices could fake
  completeness. It also flagged two float roundings, in the Neumann bound and the shell test; they are now interval
  bounds.

### Edge balls (`src/edge.jl`, `src/edge_transfers.jl`; SPEC §10, return U §3–6)

The chart is centred at F6's corner (rows and columns 0, 1, 2). Its parameters are p = (u₁, u₂, u₃, y) = Mth w,
‖w‖ ≤ r. θ⁰ = (1,2,2,4)π/3 and φ⁰ = (3,4,5,0,2,4)π/3 are used exactly, as interval enclosures of kπ/3.

**The systems.** Each side solves its own 7-unknown augmented system for x = (t, ϕ):
γ(φ⁰ + ϕ) = Γ(θ⁰ + (u₁, u₂, u₃, t)) and S/24 ± y/48 = 0.
- The horizontal side uses G_h and +y.
- The vertical side is the system for Eᵀ at (u₁, u₃, u₂, −y). Written in the original θ, it uses G_v and −y, and it
  has its own t′.

**C1e on each w-box.** The boxes have exact dyadic centres: h₀ ≥ r/k is a dyadic number, so all centres and halvings
are exact floats. On each box:
- **Tubes.** Both systems get a second-order Taylor-model predictor (Newton in model space, from the float solution
  at the centre), and a componentwise parametric Krawczyk test with an analytic Jacobian. ∂ Im Ψ/∂φ_k is computed as
  i e^{−iΣφ}(P_k det² + 2 perm det D_k) − iΨ.
  - The tight test gives the enclosure (the `need` radius).
  - A second test certifies uniqueness on a wide tube: the largest of 10⁻², 3·10⁻³, 10⁻³, ... that passes. The test
    edge balls get 3·10⁻³. This wide tube is what T3 uses.
- **t′ = t.** θ₄ ranges over the segment between the two enclosed fourth phases (one model, with a remainder covering
  both enclosures). ∂R/∂θ₄ > 0 and g > 0 are certified there by Taylor-model evaluation of R's formula:
  - R = 4g²η − χ², with g = 27 − 3p + J, η = 9 − p + J, χ = W − (p−9)(p−18) + (p−15)J;
  - dt = −ie^{iθ₄} and dr = −ie^{i(θ₄−θ₂)}.

  Both solutions satisfy R(θ) = y² (since R∘γ = 4S²), so monotonicity gives t = t′.
- **The rest.** D comes from the residual correction, arg D from the expansion near P, and the per-box bound is
  exactly as in C1.
- **Leaves.** Each accepted box keeps its two tubes (predictor and uniqueness radius) for T3.

**F6 = H(0).** At p = 0, x = 0 solves both systems exactly. That is return U §4.1; here it is also checked in
intervals. x = 0 lies strictly inside the uniqueness tubes of the leaf containing w = 0. So F6 is the centre of the
edge ball's image, and F6 nonemptiness is certified by the edge ball (no F6 record is needed).

**T3 (seed sphere box → edge ball; data g, rows, cols).**
- K = g·H_{o_s}(θ) uses the representative phase models of the source box.
- The corner seed θ_K and y_K = −2 Im Ψ(K[I, Jᶜ]) give p_K. Then ‖Mth⁻¹p_K‖ < r is checked, with Mth⁻¹ enclosed.
- K's dephased side angles, with θ_K,4 − θ⁰_4, must lie strictly inside the uniqueness tube of every C1e leaf whose
  box meets the range of w_K. Each leaf's predictor is composed with w_K − wc, over the whole source box.
  - Every source point lies in some such leaf, since the leaves cover the ball and w_K ∈ int E.
  - So K's sides are that leaf's unique solutions, and K ≅ H(p_K).
- The vertical side uses the spec's argument that a nonmatched strict K would be Tao.

**Edge sphere.** It must be covered (the same dyadic traversal as for seeds) by T1 transfers into seed balls. They are
checked as for seeds, with the edge box map on each box (interval centre).

**Stage C.** It runs on P + U w + ν exactly as for a seed ball.

**In the driver.** Edge balls are checked first, since their C1e leaves feed the seeds' T3. They are not resumable: the
C1e takes seconds. A `--shard` run computes only their C1e leaves, and the final `--import` run checks them in full.

**Measured** (8 threads, laptop):

| edge ball | k | certified C1e bound | sampled true residual | C1e time |
|---|---|---|---|---|
| r = 0.05 | 4 | 0.00301 | 0.00094 | 0.2–0.4 s (240 boxes) |
| r = 0.125 | 6 | 0.0168 | ≈ 0.009 | 2.9 s (864 boxes) |
| r = 0.125 | 8 | 0.0122 | ≈ 0.009 | 2.4 s (2,560 boxes) |

- **Cost.** About 3 ms per C1e box after compilation, and about 5 ms per T3 box (seed box map plus T3).
- **Stage C** on the r = 0.05 edge ball takes about 4 s (50 labels). On the r = 0.125 ball with n = 0.0125 (above the
  k = 8 certified bound) and label radius 0.03, it passes with 201 labels in 10.6 s. So the full-size edge ball
  certifies end to end here.

## Tests (`tests/run_tests.sh`, about 5 min on 4 threads)

**The test certificate** (`tests/data/seed_test_certificate.json.gz`, from `make_test_cert.py` with the prototype)
contains:
- 5 seed balls, around atlas centres 2003 and 2781;
- 2 records (record 2003 at R = 0.045 and at R = 0.015);
- Tao's record.

Seed 0's sphere has 256 level-2 boxes in four groups:
- T0;
- T1 to a general corner;
- T1 with g = T, a corner-symmetry chart;
- T2.

Record 1's shell has 3,028 level-3 boxes: T1′ and rec.

The other balls and record 0 have no boundary boxes, since the test atlas is not closed, and must fail C2 for that
reason.

1. **Whole runs.** The expected PASS or FAIL per object, and a resumed run makes the same decisions.
2. **Shards.** Two shards plus `--import` give the same receipts as one run.
3. **Enclosure (`enclosure.jl`).**
   - 18,000 point checks of model products, e^{ix} and sums.
   - On random boxes of every seed ball, the BigFloat completion has every phase inside its model, and the residual
     is below the box bound.
   - The normal tube, on the test record and on F6's record at R = 0.125 (`tests/data/f6_record_shell.json.gz`): at
     random η the BigFloat Hadamard has normal coordinates within ρ of the predictor, and the sampled ‖YΦ‖ is ≤ β.
4. **Negative tests (`negative.jl`, 69 cases, all as expected).**
   - *Rejected, in C1:* n below a sampled true residual; n just below the certified bound without refinement;
     r × 3; P (entries of B, D and the gauge) + 0.01; U + 0.1; θ0 + 10⁻³; o flipped; Mth column × 1.1.
   - *Rejected, in Stage C:* label radius 0.2.
   - *Rejected, in C2 (targets):*
     - T0 with the wrong target, a missing target, the other orientation, its own ball or a wrong winding;
     - T1 with swapped rows, g = conj or T, the wrong target or a wrong winding;
     - corner-symmetry T1 with g = id or conjT, permuted rows, the wrong target or a wrong winding;
     - T2 with swapped rows, g = conj, a too-small or missing record, or a wrong winding.
   - *Rejected, in C2 (coverage):* a removed box, a box replaced by a child, a moved box, r × 2.5.
   - *Rejected, in records:*
     - T1′ with the wrong target, swapped rows, g = conj, a wrong winding or the other orientation;
     - rec into itself, with g = conj or with a wrong winding;
     - a removed box, R × 2, R × 2 with eta_scale × 2, eta_scale × 0.9, a φ entry + 0.3, no boxes.
   - *Rejected, Tao:* R = 1 and R = 0.65 (L R ≥ σ = 3/√2: not isolated); R = 10⁻²⁰ (the ball misses S6).
   - *T1′, tube against crude:* with target radius 0.0555, the normal tube certifies record 1's T1′ boxes (landing
     ≤ 0.0547), and the crude bound alone is rejected (landing 0.0564).
   - *Accepted (controls):* P + 2π; k = 1; n equal to the certified bound; r × 1.5 (n is loose); r × 1.1 with C2; no
     stored T2 winding; Tao as given and at R = 0.60.
5. **End to end.** n × 0.2 in the JSON (below the sampled true residual) is rejected, and a malformed certificate
   stops the run.
6. **Edge balls (`edge_tests.jl`, on `tests/data/edge_test_certificate.json.gz`).**
   - **Sampling.** On random C1e leaves, the augmented systems solved in BigFloat lie within the tubes, t = t′, H(p) is
     Hadamard, and the phases lie inside their models.
   - **25 cases, all as expected.**
     - *Rejected, C1e:* n below the sampled residual; r × 3; P entries of B and D + 0.01; U + 0.1; Mth's y row × 1.1.
     - *Rejected, Stage C:* at r = 0.2, n = 0.03 (the clique search hits its step cap).
     - *Rejected, T3:* the wrong target; an edge ball failing C1e; g = conj or T; swapped corner rows; swapped
       complement rows or columns; a removed sphere box.
     - *Rejected, edge T1:* the wrong target, swapped rows, g = conj, a wrong winding, and an uncovered sphere.
     - *Accepted (controls):* C1e, the T3 cover, the T1 boxes, Stage C, and the 3-index T3 form.

### Measured (M-series laptop, one thread unless stated)

| ball | k | certified C1 bound | prototype float n | C1 time |
|---|---|---|---|---|
| record 2003, r = 0.1 | 4 | 0.01307 | 0.01472 | 0.6 s (256 boxes) |
| record 2781, r = 0.08 | 4 | 0.00735 | 0.00822 | 0.6 s |
| record 7000, r = 0.1 | 4 | 0.01281 | 0.01382 | 0.6 s |
| record 562 (next to F6), r = 0.03 | 3 | 0.00974 ≤ n = 0.01 | prototype fails | 0.5 s (11 splits) |
| record 562, r = 0.05 | 3 | 0.01993 ≤ n = 0.02 | prototype fails | 2.2 s (113 splits) |
| test seed 0, r = 0.03 | 3 | 0.00113 (sampled true sup 0.00032) | 0.00126 | 0.2 s |

- **Stage C.** 1–3 s per ball, with the interval replay.
- **C2.** About 3 ms per box for T1 at a general corner and for T2, and well under 1 ms for T0 and corner-T1.
- **C1.** About 3 ms and 0.5 MB of allocation per box.

## Spec questions resolved here (decisions)

1. **‖Lν‖ ≤ 2n (SPEC §4, T1′) is false in the 2-norm.**
   - ‖L‖₂ = 3, since L = L_r ⊗ L_c with ‖L_r‖ = √3. For example, ν = x yᵀ with x = y = (−2, 1, 1, 0, 0, 0) is
     horizontal and has ‖Lν‖ = 3‖ν‖.
   - Per component, |(Lν)_k| ≤ 2n is true. The coordinator confirmed this on 24 Oct.
   - The crude fallback uses ‖Mth_t⁻¹ L g‖₂·n in intervals. The normal tube uses ‖Mth_t⁻¹ L g M‖₂·ρ.
2. **The record shell.** I use SPEC §4's R² − n² ≤ ‖Tη‖² ≤ R² (valid since ν ∈ N ⊥ T). FORMAT.md first said
   R ± n, and from commit 2f77a3c0 it states this shell too.
3. **U_(·,i) in rcol.** I read it as the 6×4 block of rows 6j + i (column i of the matrix), as in the existing
   normal bound.
4. **k.** I read k as the starting partition only. Adaptive splitting may certify an n that the k⁴ boxes alone do not.
   The accepted value is still the certified maximum over the boxes actually used.
5. **The representative and windings.** I follow FORMAT.md §3 and §5: entries nearest P + U w, fixed at each box
   centre; the stored N is checked; my own N only when none is stored.
6. **Orientation of corner-symmetry T1.** o_j for g ∈ {id, conjT} and −o_j for g ∈ {conj, T}, always matched.
   FORMAT.md's remark gives the rule; I derived the table from the invariance of Ψ.
7. **Points of a box outside the ball.**
   - *T1 at a general corner, and T2:* everything is certified over the whole box.
   - *Corner-T1:* only the sphere points matter, and C1 covers them.
8. **eta_scale ≥ r_H.** I check it with an exact lower bound for λ_min(G), so a driver with a tight r_H is not
   rejected spuriously.
9. **Splitting a failed transfer box (same target) is allowed,** since every claim is universal over the box.
10. **Tao's record is replayed here,** although `proof/independent` does not replay it:
    - P = (2π)K/3 in binary64, as `tao.py` computes it, and R > ‖2πK/3 − P‖ (S6 lies in the ball);
    - σ on the horizontal space by interval Cholesky;
    - L R < σ;
    - the normal bound with b = e0;
    - Stage C with a zero frame.

11. **T1′ (the coordinator's update).** ν is enclosed by a 2-norm Krawczyk test in N, with the Lipschitz constant
    L = 2√3 for the Jacobian, rather than FORMAT.md §6's componentwise boxes. The inclusion ball contains every
    x with ‖Mx‖ ≤ n. The contraction steps and the third-order β are my own choices. The crude ‖ν‖ ≤ n form remains as
    a fallback.
12. **Edge balls (coordinator's encoding of 24 Oct).**
    - **The data layout.** `"edge"` balls carry Mth, r, P, U, n, label_radius, k and transfers (kind T1). Seed
      transfers of kind T3 carry target, g, rows and cols.
    - **T3 rows and cols.** They may be ordered triples, with the complements taken in increasing order, or full
      6-orderings (the corner, then the complement's order). The complement's order fixes the column order of the
      sides, so it matters: the negative tests swap it and are rejected.
    - **Tao.** A record without a frame is read as Tao's record; a top-level `"tao"` object is also accepted.
    - **C1e boxes.** Their centres are exact dyadics, the uniqueness tube is a widened Krawczyk box, and T3 checks
      every leaf the w_K range meets.
    - **F6.** It is certified as H(0) of a passing edge ball.
