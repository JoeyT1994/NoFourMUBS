# Independent checker of the seed atlas

This folder holds a second, independent checker of a seed-atlas certificate. The seed atlas covers the space of seed
phases θ by balls. What a certificate claims is defined in [`SPEC.md`](../seed_atlas/SPEC.md), and its file layout in
[`FORMAT.md`](../seed_atlas/FORMAT.md). The checker is written in Julia with IntervalArithmetic.jl. It re-implements
the following checks from the specification.

- The enclosure of the Hadamard matrices over each seed ball (claim C1, SPEC §2). Over the ball, the phases of every
  completion lie in P + U w + ν, with ‖w‖ ≤ r and ‖ν‖ ≤ n, up to multiples of 2π.
- Stage C on that enclosure. Stage C is the local test run inside each ball
  ([`proof/atlas/STAGEC.md`](../atlas/STAGEC.md)). It covers the unbiased vectors by labels (the vector-cover test)
  and then rules out two orthogonal 6-cliques (the graph-search test).
- The boundary transfers (claim C2, SPEC §4), and the coverage of every boundary by them. A transfer certifies that a
  box on the boundary of a ball or record lies inside another ball or record. The kinds are T0 (into a seed ball at
  the same corner), T1 (into a seed ball at another corner), T2 (from a seed ball into a record), rec (from a record
  into a record) and T1′ (from a record into a seed ball).
- Tao's zero-dimensional record, a ball around Tao's matrix S6.
- The edge balls of SPEC §10. They lie in a four-dimensional chart through the Fourier matrix F6, and they replace
  F6's record. The checks are C1e (the enclosure over an edge ball), Stage C on that enclosure, the T3 transfers from
  seed spheres into edge balls, and the cover of each edge sphere by T1 transfers.
- Seed balls in either gauge of SPEC §11: dephased, or horizontal (`"gauge": "hor"`).

The 25-dimensional full-matrix records ("records" below) need the normal bound, Stage C and the F6 check. For these
the checker reuses the existing Julia checker [`proof/independent`](../independent/). Its source
`proof/independent/src` is loaded unchanged as the submodule `IndepAtlas`.

The checker was written from `SPEC.md`, `FORMAT.md`, `proof/independent` (its README and `src`) and the module
docstrings of `proof/atlas/ballrecord.py` and `proof/atlas/tao.py`. The prototype in
[`proof/seed_atlas/prototype/`](../seed_atlas/prototype/) was read for its mathematics only, and the design below
differs from it. The primary certifier (`proof/seed_atlas/cert/`), the driver that builds the atlas
(`proof/seed_atlas/driver/`) and `proof/atlas/stagec.py` were not read.

## Running it

```bash
cd proof/independent_seed
julia --startup-file=no -t 8 --project=../independent/jlenv check_seed.jl CERT.json.gz OUTDIR   # whole certificate
tests/run_tests.sh 8                                                                          # all tests, ~12 min
mkdir -p out && sbatch run_rusty.sh                                                           # one cluster node
```

The Julia environment is `../independent/jlenv`, with IntervalArithmetic 1.0.10. The checker adds no packages.

`check_seed.jl` calls `convert_seed.py` (Python standard library only) to turn the gzipped JSON certificate into plain
text. Every float passes through `float.fromhex` and `float.hex`, so the conversion is exact.

The options are:
- `--fast`: Stage C decides with float margins only, without the interval replay.
- `--limit K` and `--only i,j`: check only a subset of the seed balls.
- `--partial`: exit with status 0 when every checked object passed.
- `--c1-depth D` (default 4) and `--split-depth S` (default 2): the extra halving levels allowed for C1 boxes and for
  failed transfer boxes (see "Design").
- `--shard k/m` and `--import D1,...`: split the seed balls over processes. A shard checks the seed balls i with
  i mod m = k. The `--import` run takes the shards' receipts and finishes the check.
- `--hint FILE`: a previous run's `seeds.tsv`, used only to start the longest seed balls first. No check reads it.

`run_rusty.sh` is a Slurm script for one cluster node. It starts 8 shard processes of 16 threads each.
One garbage collector per process scales better than 128 threads in one process. A final run then imports their
receipts, checks the records, F6 and Tao, and writes the verdict.

OUTDIR receives these files:
- `BINDING.txt`: SHA-256 digests of the certificate, every source file (including `../independent/src`) and the
  Julia environment, plus the Julia version and the options.
- `records.tsv`: Step 3 (the normal bound and Stage C) of every record.
- `seeds.tsv`: for each seed ball, C1 (the certified bound against n), Stage C and C2.
- `recbound.tsv`: C2 of every record.
- `RESULT.txt`: PASS or FAIL for each object with the reason, F6, Tao, timings, a summary and the verdict.

Receipts are appended as objects finish. A rerun resumes only if `BINDING.txt` matches the new run exactly.

The exit status is 0 only for a complete certificate in which every check passed. With `--partial` it is 0 when every
checked object passed.

| File | Contents |
|---|---|
| `convert_seed.py`, `src/io_seed.jl` | certificate JSON to text to structs: the only code that knows the layout |
| `src/tm.jl` | second-order Taylor models in four variables, with interval coefficients and rigorous remainders |
| `src/seedmap.jl` | the matched completion H_o(θ) on a box: sides (parametric Krawczyk), Ψ, D, arg D, giving 36 phase models |
| `src/c1.jl` | claim C1: the box cover of the ball and the bound on each box |
| `src/stagec_seed.jl` | Stage C on P + U w + ν, through the existing `IndepAtlas.stage_c` |
| `src/normal_tube.jl` | the normal component ν of a record's Hadamards over an η-box (Krawczyk in N), for T1′ |
| `src/transfers.jl` | T0, T1, T2, rec, T1′, and the dyadic coverage of spheres and shells |
| `src/tao.jl` | Tao's record: S6 in the ball, σ, isolation L R < σ, the normal bound, Stage C |
| `src/edge.jl` | edge balls: the two augmented 7-unknown systems, their Krawczyk tubes, ∂₄R > 0 and g > 0, C1e |
| `src/edge_transfers.jl` | T3 (seed sphere into an edge ball), the edge sphere cover by T1, F6 = H(0) |
| `src/graph.jl` | SPEC §10.1: (G) the graph property near F6, (D) the chart derivative and the image of the edge ball |
| `src/wholeball.jl` | C1 for a whole seed ball from one computation at its centre (theorem Z) |
| `src/edge_wholeball.jl` | the X-ball by one contraction of its augmented system (theorem ZT) |
| `src/patches.jl` | T1 transfers on sphere boxes from the whole-ball model (theorem ZT) |
| `src/caps.jl` | transfers on spherical caps and the exact coverage of each sphere by caps (theorems ZC, ZC2a and ZC2b) |
| `src/hp.jl` | the whole-ball model and the cap checks again, in 256-bit intervals |
| `caps_to_txt.py`, `caps_test.jl` | cap certificates to text, and the cap verifier on sample seeds with tampered controls |
| `check_seed.jl` | the driver (threads, shards, receipts, verdict) |
| `run_rusty.sh` | a Slurm script for one cluster node |
| `tests/` | `run_tests.sh`, `enclosure.jl`, `negative.jl`, `edge_tests.jl`, `hor_tests.jl`, the test certificates and their generators |

## Design

### Whole balls, patches and caps

The final certificate is checked mostly by the methods of theorems Z, ZT, ZC, ZC2a and ZC2b
([`proof/theorems/README.md`](../theorems/README.md)). The box methods described in the later sections decide only
where these do not close.

- **C1 for a whole ball** (`src/wholeball.jl`, theorem Z). The side roots at the exact centre of a seed ball are
  found by a six-dimensional Krawczyk test. The Hadamard equations, projected along a fixed normal basis, then give
  over the whole ellipsoid θ0 + Mth w with ‖w‖ ≤ r a contraction τ, so the matched branch exists, both orientation
  signs, and the bound ‖h Q(w) − P_exact − U w‖ ≤ β r²/2 + ‖X‖ τ. The distance of the stored P and U from the exact
  ones is added to that bound.
- **The X-ball** (`src/edge_wholeball.jl`, theorem ZT). The edge chart at F6 is checked the same way, by one
  contraction of an augmented system of 31 equations (the 30 row-orthogonality components and the side signature)
  in 22 normal coordinates.
- **Transfers on sphere boxes** (`src/patches.jl`, theorem ZT). When the whole-ball certificate of a seed ball
  closes, Q(w) = Q0 + U w + H2[w, w]/2 + X z(w) with ‖z‖ ≤ τ on the whole ball. A T1 transfer on a dyadic box then
  needs only the 16 vertices of the box and the error ‖A H2‖(2h)²/2 + ‖A X‖ τ. The signs of Ψ follow from a
  quadratic remainder bound.
- **Caps** (`src/caps.jl`, theorems ZC, ZC2a and ZC2b). A cap is {x : ‖x‖ = 1, v·x ≥ h} in x = w/r. On a cap, the
  target of a T0, T1 or T3 transfer is enclosed by an affine model at the cap's anchor. A witness (λ, μ, s, a)
  certifies the bound through a 5 × 5 matrix, which an interval LDL factorisation shows to be positive definite. The
  caps cover the sphere exactly when every vertex of the polytope {y : vᵢ·y ≤ hᵢ} lies in the closed unit ball. The
  certificate lists the facets of the polar hull, and the checker confirms in integer arithmetic that each facet
  strictly supports and that every ridge is shared by exactly two facets.
- **256-bit intervals** (`src/hp.jl`). Some cap witnesses are certified with pivots as small as about 10⁻¹¹, below
  the width of the Float64 tensors. `src/hp.jl` therefore includes the same source files with intervals of 256-bit
  BigFloat, so that the two precisions share every formula.


### Taylor models (`src/tm.jl`)

A model (c, g, q, r) on a box |u_j| ≤ h_j stands for a fixed polynomial p(u) = c + Σ g_j u_j + Σ_{j≤l} q_jl u_j u_l
whose coefficients lie in the stored intervals. It comes with the claim |f(u) − p(u)| ≤ r on the box. Below,
L₁ = Σ|g_j| h_j and L₂ = Σ|q_jl| h_j h_l bound the linear and quadratic parts on the box.

Coefficients are `Interval{Float64}` or complex intervals. The quadratic part uses the monomial basis u_j u_l (ten
coefficients), not a symmetric matrix.

A product keeps orders 0 to 2 exactly. The discarded terms (g·u)q′ + q(g′·u) + qq′ are bounded by
L₁L₂′ + L₂L₁′ + L₂L₂′. The remainders contribute r B′ + B r′ + r r′, with B = |c| + L₁ + L₂.

The exponential e^{ix} uses |e^{iy} − 1 − iy + y²/2| ≤ |y|³/6. Its new remainder is
r_new = r + L₁(L₂ + r) + (L₂ + r)²/2 + (L₁ + L₂ + r)³/6, times |e^{ic}|.

The same code also runs with Float64 coefficients and no remainder. This is used only to compute predictors, and
nothing it produces is trusted.

### The enclosure over a seed ball, C1 (`src/seedmap.jl`, `src/c1.jl`)

#### The box cover

The first level is the certificate's partition of [−r, r]⁴ into k⁴ boxes. Box centres are interval enclosures of
−r + (2i+1)r/k, and the half-width is h ≥ r/k. A model computed with an interval centre holds for every point of that
interval, so the boxes cover the ball exactly. A box is dropped only if it certainly misses the ball.

A box whose bound exceeds n, or whose certification fails, is split into its 16 halves. Splitting goes down to D = 4
extra levels. SPEC §11 allows any partition that covers the ball. The certified bound is the maximum over the
accepted boxes, and C1 passes if and only if it is at most n. So k only sets the starting partition.

#### The steps on each box

On each box θ = θ_c + Mth u. Every step below is decided in intervals.

1. Compute E and the Gram data. The off-diagonal entries of G_h and G_v are written as 1 + e^{−iθ_a} + e^{−iθ_b} and
   1 + e^{i(θ_a−θ_c)} + e^{i(θ_b−θ_d)}. Each exponential is one e^{ix} of a linear model, with no products.
2. Enclose the two sides by a parametric Krawczyk test (an interval Newton test that proves a unique zero in a box).
   The system is F(φ; θ) = (Re, Im) of f₀₁ = Σ e^{−iφ_k} + γ₀₁, f₀₂ and f₁₂ = Σ e^{i(φ_k−φ_{3+k})} + γ₁₂.
   - The predictor comes from Newton's method in the space of truncated float models, φ ← φ − Y F(φ), started from
     the float solution at the centre. Each step gains one order. No numerical derivatives are used.
   - The test computes b = sup|Y F(φ_pred)| and A = sup|I − Y J(tube)|, both entrywise, from models. With a vector ρ,
     b + Aρ < ρ certifies a unique zero in φ_pred + [−ρ, ρ]⁶. The remainder kept is b + Aρ.
3. Certify the orientation. Im Ψ(B) and Im Ψ(V) are evaluated as models, with Ψ = perm·det²·e^{−iΣφ}. Each term of
   perm and det is one e^{ix} of a sum of phases. The sign o of Im Ψ(B), and the sign −o of Im Ψ(V), are certified
   over the box.
4. Enclose the forced block D.
   - The predictor comes from a float-model Newton iteration on X B* = −C E*, X ← X − (X B* + C E*) A₀.
   - The residual R = C E* + X_p B* is evaluated in interval models. A Neumann series around A₀ = (mid B*_c)⁻¹ bounds
     |(B*)⁻¹| entrywise.
   - Then D = X_p, with the remainder |R|·|(B*)⁻¹|.
5. Enclose arg D. Write D e^{−iP} = c(1 + v), where v has no constant term. Then
   arg D = P + Arg c + Im(v − v²/2) + R, with |R| ≤ |v|³/(3(1 − |v|)), Re c > 0 and |v| < 1/2. Rotating by e^{−iP}
   first puts the branch next to P.
6. Bound the residual. The residual Q + 2πN − P − U(w_c + u) is 36 models. Its norm is bounded by the maximum over the
   16 vertices of ‖a′ + G v‖, plus (Σ_e (Σ_m |q_em| k_m + r_e)²)^{1/2}.
   - The diagonal monomials are recentred, u_j² = h_j²/2 + (u_j² − h_j²/2). So a′ = c + Σ_j q_jj h_j²/2 and
     k_jj = h_j²/2.
   - The tail is combined entry by entry before the 2-norm is taken. This is tighter than a sum of norms, one for each
     monomial.

#### Differences from the prototype

The method differs from the prototype's `tmball2.py` in six ways.
- Box centres are intervals, and refinement is adaptive.
- The predictors come from Newton's method in model space, not from finite differences.
- The Krawczyk radius is a vector, not a scalar.
- The Gram data and Ψ use exponentials of sums, not products.
- The arg is rotated by e^{−iP} first.
- The diagonal of the quadratic part is recentred, and the tail is combined entry by entry.

### The horizontal gauge (SPEC §11, `src/io_seed.jl`, `src/c1.jl`)

A matrix is horizontal when all its row and column means are zero. The orthogonal projection hor onto horizontal
matrices subtracts each row mean and column mean and adds back the grand mean.

A seed entry with `"gauge": "hor"` stores P and U horizontal. Without the field the dephased gauge is meant. Any
other value stops the run, since `convert_seed.py` and the reader both refuse it.

The branches and the representatives are chosen in the dephased gauge, at P_g = gauge(P) and U_g = gauge(U). Here
gauge(X)_ab = X_ab − X_a0 − X_0b + X_00, computed in floats. The box map, its arg branches and the representative Q_g
nearest P_g + U_g w are the same code as for a dephased ball. These floats only steer choices, so their rounding
cannot make a claim wrong.

On each box the integer winding N is chosen entrywise at the centre. The polynomial parts of Q_g + 2πN are projected
by hor in models, with interval coefficients 1/6 and 1/36. Then ‖hor(Q_g + 2πN) − P − U w‖ is bounded by
`vecnorm_sup`. The remainders enter as ‖(r_e)‖₂, since hor is an orthogonal projection.

Any winding N will do. Indeed e^{i(Q_g + 2πN)} = e^{iQ_g}, and hor changes a phase matrix only by row and column
phases. So e^{i hor(Q_g + 2πN)} is equivalent to H. The windings of this gauge therefore form the lattice
hor(2πZ³⁶). For example, P + 2π hor(e_ab) describes the same ball, while P + 2π e_ab does not. The tests check both.

The checker does not verify that P and U are horizontal, because soundness does not need it. The claim is about
hor(Q_g), and Stage C reads the stored P, U and n. A non-horizontal part of P simply enters the residual, as a test
shows.

Stage C uses the stored P and U, through the same code as for a dephased ball.

The transfers are unchanged. They read θ and the representative Q_g, never P. So T0 and T1 may go from either gauge
into either gauge. The test certificate has a horizontal ball with a T1 transfer into a dephased one.

For the same r, the horizontal residual is about 3× smaller than the dephased one. So at the same relative margin
n / sup, the second-order models need smaller boxes. See "Measured" below.

### Stage C on the enclosure (`src/stagec_seed.jl`)

The existing `IndepAtlas.stage_c` takes a frame T = T36/(36·2³⁰) with integer T36. The checker passes
T36 = round(U·36·2³⁰) and absorbs the exact rounding error into the normal term. That is, δ = U w + ν = T w + ν′ with
‖ν′‖ ≤ n′ = n + ‖U − T‖_F r. Here ‖U − T‖_F ≤ 8·10⁻¹¹, computed exactly in intervals. The enclosure handed to Stage C
therefore contains the enclosure of the specification.

The column bound rcol = maxᵢ ‖U_(·,i)‖₂ r + n and the Frobenius bound rF = ‖U‖₂ r + n are upper bounds computed in
intervals. Here U_(·,i) is the 6×4 block of column i. Stage C itself is unchanged. It replays every float rejection in
intervals, with label_radius in cycles.

### The boundary transfers, C2 (`src/transfers.jl`)

#### Boxes, windings and representatives

Boxes are the dyadic boxes of FORMAT.md, in units of r (or of eta_scale for a record). Their endpoints are exact
floats. The box in w is the real box r·[lo, hi], enclosed in intervals.

The stored windings are the ones checked. The checker chooses its own only where none is stored, which is valid
because any integer winding is allowed.

The representative is that of FORMAT.md §3: the entries nearest P + U w, fixed at each box's centre.

#### The kinds of transfer

- T0 is checked in intervals at the 16 vertices of θ_j(β), the parallelotope image of the box. This suffices because
  E_l is convex. T0 also requires o_l = o_j.
- T1 at a corner inside rows and columns 0..2 is called a corner-symmetry T1 below.
  - Here θ′ is affine in w, because the corner block of Q is exactly 0, θ₁…θ₄. So the check is at the vertices, with
    no model.
  - The orientation at the corner is o_j for g ∈ {id, conjT} and −o_j for g ∈ {conj, T}, and the corner is matched.
    The sides there are B and C up to conjugation, transposition and order, and Ψ is invariant under those
    permutations and scalings.
- T1 at a general corner runs `box_map` over the whole box β, including points just outside the ball. So nothing
  relies on C1 there.
  - θ′ is a linear combination of phase models.
  - The landing condition is ‖Mth_l⁻¹(θ′ + 2πN − θ0_l)‖ < r_l, with Mth_l⁻¹ enclosed by a verified inverse.
  - Im Ψ is computed from models of K[I, Jᶜ] and K[Iᶜ, J].
- T2 checks ‖hor(π(g·Q) + 2πN − P_t)‖ < R_t, where π is the group's signed permutation. The polynomial part is
  projected in models. The remainders enter as ‖r‖₂, since ‖hor e‖ ≤ ‖e‖. The target record must pass Step 3.
- rec checks ‖hor(π(g·(P_s + Tη)) + 2πN − P_t)‖ + n_s < R_t at the 16 vertices. The map is affine in η, so this is
  exact.
- T1′ encloses the normal component ν of the record's Hadamards over the η-box by the normal tube (next section).
  - The phase models P + Tη + M x_p(η) carry the remainder ‖M_e,:‖ρ on each entry, which is used for Ψ.
  - The landing adds ‖Mth_t⁻¹ L g M‖₂·ρ for the rest of θ′. Here L is the linear map from phases to the corner seed.
  - If the tube's Krawczyk test fails, the crude form is used instead. It takes |ν_e| ≤ n on each entry, and
    ‖Mth_t⁻¹ L g‖₂·n in the landing. Both forms are valid.

#### Splitting

A box that fails as a whole is split into its 16 halves with the same target, down to S = 2 levels. T0 and
corner-symmetry T1 are vertex tests, so they are not split.

#### Coverage

Coverage is checked by the top-down traversal of FORMAT.md. A box is covered if it is listed, or certainly misses the
region, or all 16 of its children are covered. The traversal stops at the deepest listed level.

For a seed ball the region is the unit sphere ‖u‖ = 1.

For a record the region is the shell R² − n² ≤ ‖Tη‖² ≤ R², which is the shell of FORMAT.md §6. It is valid because
ν ⊥ span T in Lemma 3.1 (η = G⁻¹Tᵀδ). A box is off the shell if max ‖Tη‖² < R² − n², or min ‖Tη‖ > R, or
min ‖η‖ > r_H. eta_scale must be at least R/√λ_min(G). λ_min is bounded below by an exact rational LDLᵀ of G − λI.

### The normal tube for T1′ (`src/normal_tube.jl`)

This design differs from the componentwise test proposed in FORMAT.md §6.

#### Coordinates on N

N is the orthogonal complement of span T in the horizontal space. It is 21-dimensional, with the exact projector
Π = h − TG⁻¹Tᵀ. N_b is a float, approximately orthonormal basis of N. M = Π N_b is enclosed in intervals from the
exact Π, so the exact M has its columns in N. A Gershgorin bound λ_min(MᵀM) ≥ λ > 0 makes x ↦ Mx a bijection onto N,
with ‖x‖ ≤ ‖Mx‖/√λ. So every Hadamard of the record has ν = Mx with ‖x‖ ≤ n_x = n/√λ.

#### The second derivative

Φ_ij(δ) = Σ_c e^{i(P_ic − P_jc + δ_ic − δ_jc)} gives |Φ″_ij[w, v]| ≤ Σ_c |w_ic − w_jc||v_ic − v_jc|. Also
‖w_i − w_j‖² ≤ 2‖w‖². For horizontal v, Σ_{i<j} ‖v_i − v_j‖² = 6‖v‖² by Lagrange's identity. Together these give
‖Φ″[w, v]‖ ≤ 2√3‖w‖‖v‖. Hence ‖(J(d₁) − J(d₂))v‖ ≤ L‖d₁ − d₂‖‖v‖ for horizontal v, with L = 2√3.

#### The Krawczyk test in the 2-norm

The map is F(u, x) = Y Φ(T(z_c + u) + Mx).
- Y is a float 21×30 pseudo-inverse of J M at the box centre. The predictor x_p(u) is a second-order float model,
  from Newton's method in model space.
- For each u, the ball X(u) = B(x_p(u), ρ_X) with ρ_X ≥ n_x + sup‖x_p‖ contains the x of every Hadamard of the record.
- By the integral mean value theorem along segments, ‖K(x) − x_p(u)‖ ≤ β + α(ρ_X)ρ_X on X(u). Here:
  - β ≥ sup_u ‖Y Φ(δ_c(u))‖ along the predictor δ_c(u) = T(z_c + u) + M x_p(u),
  - α(ρ) = ‖I − Y J(δ_c(0)) M‖ + ‖Y‖ L ‖M‖ (D + ‖M‖ρ), with D ≥ sup_u ‖δ_c(u) − δ_c(0)‖.
- Suppose β + α(ρ_X)ρ_X < ρ_X. Then the ball maps into itself, so a zero exists by Brouwer's theorem. Also every
  mean-value matrix satisfies ‖I − Y J̄ M‖ < 1, so the zero is unique in X(u). Every Hadamard of the record is that
  zero.

#### Contraction steps

The zero lies in K(B_k) for every ball B_k that contains it. So ρ_{k+1} = β + α(ρ_k)ρ_k is again a valid radius. A
few steps bring ρ down to about β.

#### β to third order

β is a third-order quantity. Second-order models would push the cubic terms of each exponential into its own
remainder, where they cannot cancel in the sums of Φ. So Φ along the predictor is expanded to third order, with exact
interval coefficients (35 monomials):

  e^{iy} = e^{ic}[1 + iℓ + (iq − ℓ²/2) + (−ℓq − iℓ³/6)] + e^{ic}R, |R| ≤ L₂²/2 + L₁²L₂/2 + L₁L₂²/2 + L₂³/6 + (L₁ + L₂)⁴/24.

This is about 15× tighter than the second-order bound.

#### Measured

| record | box half-width | ρ | contraction α(ρ_X) | n |
|---|---|---|---|---|
| F6's record (atlas 877), R = 0.125 | 0.016 (level 3) | ≤ 9·10⁻⁶ | ≤ 0.14 | 0.0159 |
| same | 0.008 (level 4) | ≤ 1.0·10⁻⁶ | ≤ 0.10 | 0.0159 |
| F6's record, R = 0.08 | level 3 | ≤ 2.2·10⁻⁶ | | 0.0064 |
| same | level 4 | ≤ 2.5·10⁻⁷ | | 0.0064 |

Each box takes about 5 ms, and record boxes are checked on all threads. In the BigFloat sampling test, the true
normal coordinates lie within 0.11–0.15·ρ of the predictor.

### Rigour

- Every acceptance is decided in interval arithmetic. This covers C1, all kinds of C2, coverage, Tao's σ and
  isolation, and the Stage C replay.
- Floats only choose predictors, guesses, windings where none is stored, and refinement.
- A non-finite or not-an-interval value makes every comparison false, so the check fails. The input converter rejects
  non-finite floats.
- An exception in one object is recorded as a FAIL of that object.
- A complete verdict needs every seed ball index checked, every record, F6 and Tao, and no `--fast`. Duplicate
  indices in `--only` count once. A `--fast` run states that its verdict is not rigorous.
- An independent soundness review of this code found no unsound step in C1, Stage C or C2. It found two gaps, both
  fixed: the checker now verifies that Tao's ball contains S6, and duplicate `--only` indices cannot fake
  completeness. The two float roundings it flagged, in the Neumann bound and in the shell test, are now interval
  bounds.

### Edge balls (SPEC §10, `src/edge.jl`, `src/edge_transfers.jl`)

The mathematics of the edge chart is in the edge-fold theorem,
[`proof/theorems/U_fold_at_edge/`](../theorems/U_fold_at_edge/) (§3–6 of its report).

The chart is centred at F6's corner, rows and columns 0, 1, 2. Its parameters are p = (u₁, u₂, u₃, y) = Mth w, with
‖w‖ ≤ r. The angles θ⁰ = (1,2,2,4)π/3 and φ⁰ = (3,4,5,0,2,4)π/3 are used exactly, as interval enclosures of kπ/3.

#### The systems

Each side solves its own augmented system in 7 unknowns x = (t, ϕ):
γ(φ⁰ + ϕ) = Γ(θ⁰ + (u₁, u₂, u₃, t)) and S/24 ± y/48 = 0. Here γ and Γ are the Gram data of the side and of the
corner, as in SPEC §10, and S = Im Ψ of the side.
- The horizontal side uses G_h and +y.
- The vertical side is the system for Eᵀ at (u₁, u₃, u₂, −y). Written in the original θ, it uses G_v and −y, and it
  has its own fourth phase t′.

#### C1e on each w-box

The first level is the k₀×k₁×k₂×k₃ partition of FORMAT.md §8. The boxes have exact dyadic centres. Each h_j ≥ r/k_j
is a dyadic number, so all centres and halvings are exact floats. On each box the checker does the following.

1. It encloses both systems in tubes. Each system gets a second-order Taylor-model predictor (Newton's method in model
   space, from the float solution at the centre) and a componentwise parametric Krawczyk test with an analytic
   Jacobian. The derivative ∂ Im Ψ/∂φ_k is computed as i e^{−iΣφ}(P_k det² + 2 perm det D_k) − iΨ.
   - The tight test gives the enclosure (the `need` radius).
   - A second test certifies uniqueness on a wide tube. Its radius is the largest of 10⁻², 3·10⁻³, 10⁻³, ... that
     passes. The test edge balls get 3·10⁻³. T3 uses this wide tube.
2. It proves t′ = t. θ₄ ranges over the segment between the two enclosed fourth phases. This is one model, with a
   remainder covering both enclosures. ∂R/∂θ₄ > 0 and g > 0 are certified there by Taylor-model evaluation of the
   formula for R:
   - R = 4g²η − χ², with g = 27 − 3p + J, η = 9 − p + J and χ = W − (p−9)(p−18) + (p−15)J,
   - dt = −ie^{iθ₄} and dr = −ie^{i(θ₄−θ₂)}.

   Both solutions satisfy R(θ) = y², since R∘γ = 4S². So monotonicity gives t = t′.
3. It computes D by the residual correction, arg D by the expansion near P, and the bound on the box, exactly as in
   C1.
4. It keeps the two tubes of each accepted box (predictor and uniqueness radius) as a leaf for T3.

#### F6 = H(0)

At p = 0, x = 0 solves both systems exactly. This is §4.1 of the edge-fold report, and the checker also verifies it in
intervals. x = 0 lies strictly inside the uniqueness tubes of the leaf containing w = 0. So F6 is the centre of the
edge ball's image. The edge ball therefore certifies that F6 lies in the atlas, and no F6 record is needed.

#### T3, from a seed sphere box into an edge ball

The fields of a T3 group (FORMAT.md §8) are g, rows, cols, hcols, vrows, wind, wind_h and wind_v.
- K = g·H_{o_s}(θ) uses the representative phase models of the source box.
- The columns of the horizontal side are taken in the order hcols, and the rows of the vertical side in the order
  vrows. The stored windings are the ones checked. The checker chooses its own only when none are stored.
- The corner seed θ_K and y_K = −2 Im Ψ(K[I, Jᶜ]) give p_K. Then ‖Mth⁻¹p_K‖ < r is checked, with Mth⁻¹ enclosed.
- The dephased side angles of K, with θ_K,4 − θ⁰_4, must lie strictly inside the uniqueness tube of every C1e leaf
  whose box meets the range of w_K. The predictor of each leaf is composed with w_K − wc, over the whole source box.
  Every source point lies in some such leaf, since the leaves cover the ball and w_K ∈ int E. So the sides of K are
  that leaf's unique solutions, and K ≅ H(p_K).
- The vertical side uses the argument of the specification that a nonmatched strict K would be Tao.

#### The edge sphere

The edge sphere must be covered by T1 transfers into seed balls, with the same dyadic traversal as for seeds. These
transfers are checked as for seeds, with the edge box map on each box (interval centre).

#### Stage C

Stage C runs on P + U w + ν exactly as for a seed ball.

#### Openness at y = 0: the checks (G) and (D) (SPEC §10.1–10.2, `src/graph.jl`)

The image of the edge ball must be open, also at y = 0. SPEC §10.1 proves this from two certified facts, the graph
property (G) near F6 and an invertible chart derivative (D), with the inverse function theorem.

The edge entry may carry `"graph": {"R", "sigma"}` and `"sigma_D"`. The fields phi and Tint are also accepted.

(G) follows from the mean value theorem (SPEC §10.2).
- P_F is F6 exactly: the chart's (e^{iπab/3}), enclosed in intervals. The frame T_F is the exact tangent kernel of
  eq. (13) of the edge-fold report, given as four integer matrices f = (0, α, β) and g = (0, γ, δ), so that
  T_F = hor(V). N is the orthogonal complement of span T_F in the horizontal space.
- Take two Hadamards with the same η and ‖δ_i‖ ≤ R_G. Then (∫J)(ν₁ − ν₂) = 0. The segment between them stays in the
  R_G-ball, because δ = Tη + ν is orthogonal and the ν part is convex. Also ‖(J(d) − J(0))v‖ ≤ L‖d‖‖v‖ for
  horizontal v, with L = 2√3. So R_G < σ/L forces ν₁ = ν₂.
- The checker verifies the certificate's σ = σ_min(J(0)|_N) at F6 by an interval Cholesky factorisation. It checks
  L·R_G < σ. It checks that the edge image lies strictly inside ‖δ‖ < R_G, with δ = hor(A(Q) + 2πN − P_F).
- No computation over η-boxes is needed.
- The defaults are R_G = 0.45, or 0.99σ/L if that is smaller, and σ equal to the certified value.

(D) encloses dη/dw on every C1e box, with η = T_F⁺δ, by implicit differentiation in Taylor models.
- For each side, dx/dp = −J_x⁻¹J_p. It is computed by two Newton steps in model space plus a correction of size
  ‖Y‖/(1 − q)·‖residual‖∞.
- d arg D = Im(dD conj D)/|D|². dD solves dD B* = −(dC E* + C dE* + D dB*). It is computed by Newton steps plus a
  correction bounded by a Neumann series.
- σ_min ≥ σ_D is certified by Weyl's inequality, σ_min ≥ σ_min(A_mid) − ‖A_rad‖₂. The polynomial parts of the C1e
  models alone would not bound a derivative.

σ_D depends on how η is normalized. Here η is in the basis of eq. (13), T_F = hor(V). A certificate's σ_D must use
the same frame to be verified as stated.

When phi is given, the F6 of the chart is aligned to it by the existing exhaustive F6 search. The tangent frame is
then the aligned frame of eq. (13), unless Tint is given.

Measured on the edge test ball (r = 0.05, 368 boxes, 8 threads, about 1–2 s each):

| graph data | σ at the centre | σ_D | image ‖δ‖ |
|---|---|---|---|
| defaults | ≥ 1.73205 (√3), R_G = 0.45 | ≥ 0.1896 | ≤ 0.0637 |
| as given in the test (R_G = 0.45, σ = 1.7, σ_D = 0.15) | verified | verified | |
| the atlas's F6 record (877: phi, Tint) as centre and frame | ≥ 1.7312 | ≥ 0.1352 | ≤ 0.0814 |

#### In the driver

Edge balls are checked first, since their C1e leaves feed the T3 checks of the seed balls. They are not resumable,
because their C1e takes only seconds. A `--shard` run computes only their C1e leaves. The final `--import` run checks
them in full.

#### Measured (8 threads, laptop)

| edge ball | k | certified C1e bound | sampled true residual | C1e time |
|---|---|---|---|---|
| r = 0.05 | 4 | 0.00301 | 0.00094 | 0.2–0.4 s (240 boxes) |
| r = 0.05 | 4×4×4×6 | 0.00285 | 0.00094 | 1.2 s (368 boxes) |
| r = 0.125 | 6 | 0.0168 | ≈ 0.009 | 2.9 s (864 boxes) |
| r = 0.125 | 8 | 0.0122 | ≈ 0.009 | 2.4 s (2,560 boxes) |

- After compilation, each C1e box takes about 3 ms, and each T3 box about 5 ms (seed box map plus T3).
- Stage C on the r = 0.05 edge ball takes about 4 s (50 labels). On the r = 0.125 ball with n = 0.0125 (above the
  k = 8 certified bound) and label radius 0.03, it passes with 201 labels in 10.6 s. So the full-size edge ball
  certifies end to end.

## Tests (`tests/run_tests.sh`, about 12 min on 8 threads)

The test certificate `tests/data/seed_test_certificate.json.gz` is generated by `make_test_cert.py` with the
prototype. It contains:
- 5 seed balls, around atlas centres 2003 and 2781,
- 2 records (record 2003 at R = 0.045 and at R = 0.015),
- Tao's record.

The sphere of seed 0 has 256 level-2 boxes in four groups: T0, T1 to a general corner, a corner-symmetry T1 with
g = T, and T2. The shell of record 1 has 3,028 level-3 boxes, with T1′ and rec. The other balls and record 0 have no
boundary boxes, since the test atlas is not closed. They must fail C2 for that reason.

1. Whole runs give the expected PASS or FAIL for each object, and a resumed run makes the same decisions.
2. Two shards plus `--import` give the same receipts as one run.
3. `enclosure.jl` tests the enclosures.
   - It makes 18,000 point checks of model products, e^{ix} and sums.
   - On random boxes of every seed ball, the BigFloat completion has every phase inside its model, and the residual is
     below the box bound.
   - It tests the normal tube on the test record and on F6's record at R = 0.125
     (`tests/data/f6_record_shell.json.gz`). At random η the BigFloat Hadamard has normal coordinates within ρ of the
     predictor, and the sampled ‖YΦ‖ is at most β.
4. `negative.jl` runs 69 cases, all with the expected outcome.
   - C1 rejects n below a sampled true residual, n just below the certified bound without refinement, r × 3,
     P + 0.01 (on entries of B, of D and of the gauge), U + 0.1, θ0 + 10⁻³, a flipped o, and an Mth column × 1.1.
   - Stage C rejects label radius 0.2.
   - C2 rejects these targets:
     - T0 with the wrong target, a missing target, the other orientation, its own ball or a wrong winding,
     - T1 with swapped rows, g = conj or T, the wrong target or a wrong winding,
     - corner-symmetry T1 with g = id or conjT, permuted rows, the wrong target or a wrong winding,
     - T2 with swapped rows, g = conj, a too-small or missing record, or a wrong winding.
   - C2 rejects these covers: a removed box, a box replaced by a child, a moved box, and r × 2.5.
   - The record checks reject:
     - T1′ with the wrong target, swapped rows, g = conj, a wrong winding or the other orientation,
     - rec into itself, with g = conj or with a wrong winding,
     - a removed box, R × 2, R × 2 with eta_scale × 2, eta_scale × 0.9, a φ entry + 0.3, and no boxes.
   - The Tao check rejects R = 1 and R = 0.65, where L R ≥ σ = 3/√2 and the record is not isolated. It rejects
     R = 10⁻²⁰, where the ball misses S6.
   - With target radius 0.0555, the normal tube certifies the T1′ boxes of record 1 (landing ≤ 0.0547). The crude
     bound alone is rejected there (landing 0.0564).
   - The controls are accepted: P + 2π, k = 1, n equal to the certified bound, r × 1.5 (n is loose), r × 1.1 with C2,
     no stored T2 winding, and Tao as given and at R = 0.60.
5. End to end, n × 0.2 in the JSON (below the sampled true residual) is rejected, and a malformed certificate stops
   the run.
6. `edge_tests.jl` tests the edge balls on `tests/data/edge_test_certificate.json.gz`.
   - On random C1e leaves, the augmented systems solved in BigFloat lie within the tubes, t = t′, H(p) is Hadamard,
     and the phases lie inside their models.
   - At random points of random C1e boxes, finite differences of η(H(p(w))) lie inside the certified enclosures of
     dη/dw.
   - It runs 38 cases, all with the expected outcome.
     - C1e rejects n below the sampled residual, r × 3, the entries of B and D in P + 0.01, U + 0.1, and the y row of
       Mth × 1.1.
     - Stage C rejects r = 0.2 with n = 0.03, where the clique search hits its step cap.
     - T3 rejects the wrong target, an edge ball failing C1e, g = conj or T, swapped corner rows, swapped complement
       rows or columns (vrows, hcols), a wrong wind, wind_h or wind_v, and a removed sphere box.
     - Edge T1 rejects the wrong target, swapped rows, g = conj, a wrong winding, and an uncovered sphere.
     - (G) and (D) reject σ = 1.8 (above √3), R_G = 0.5 (L·R_G ≥ σ = 1.7), R_G = 0.05 (the image is not inside),
       σ_D = 0.5, and a perturbed centre with R_G = 0.2 (the image is not inside).
     - The controls are accepted: C1e, the T3 cover, the T1 boxes, Stage C, sorted complements (they are increasing in
       this data), T3 without stored windings, and (G) and (D) as given, with the defaults, at the atlas's F6 record,
       and at a perturbed centre. The argument needs no Hadamard centre, only σ and the image.
7. `hor_tests.jl` tests the horizontal gauge on `tests/data/hor_test_certificate.json.gz`, generated by
   `make_hor_cert.py`.
   - In this certificate, seed 0 is the centre of record 2003 in the horizontal gauge (r = 0.02, n = 1.25 × the
     prototype's sampled residual). Its 256 sphere boxes go by T0 into seed 1 (horizontal, r = 0.05), by T1 into
     seed 2 (another corner, dephased gauge, r = 0.08) and by T2 into record 2003. Seed 0 must pass C1, Stage C and
     C2. Seeds 1 and 2 pass C1 and Stage C, and fail C2 for want of boxes.
   - Test (b) of `enclosure.jl` runs on the same certificate. BigFloat completions lie inside the models, and
     ‖hor(Q_g) − P − U w‖ is below the box bound (worst ratio about 0.5).
   - It runs 19 cases, all with the expected outcome. These are rejected:
     - n = 0.99 × the sampled ‖hor(Q_g) − P − U w‖,
     - the gauge flag dropped (horizontal P and U read as dephased),
     - the flag added to the dephased seed 2,
     - P + 2π e_34 (not in the horizontal lattice),
     - P + 0.01 on a row (gauge(P), and so every branch, unchanged),
     - P + 3n along hor(e_35),
     - a U column × 1.1, U + 0.1 on a row, and U + 0.1 hor(e_35),
     - θ0 + 0.01,
     - the r of the T0 target halved,
     - the T0 group dropped.
   - These controls are accepted: seed 0 as given (C1, Stage C, C2), P + 2π hor(e_34), n equal to the certified
     bound, C1 of seed 2 (dephased), and C2 of seed 0 with its T1 target flagged horizontal (transfers do not read the
     gauge).
   - End to end, an unknown gauge in the JSON stops the run.

### Measured (M-series laptop, one thread unless stated)

| ball | k | certified C1 bound | prototype float n | C1 time |
|---|---|---|---|---|
| record 2003, r = 0.1 | 4 | 0.01307 | 0.01472 | 0.6 s (256 boxes) |
| record 2781, r = 0.08 | 4 | 0.00735 | 0.00822 | 0.6 s |
| record 7000, r = 0.1 | 4 | 0.01281 | 0.01382 | 0.6 s |
| record 562 (next to F6), r = 0.03 | 3 | 0.00974 ≤ n = 0.01 | prototype fails | 0.5 s (11 splits) |
| record 562, r = 0.05 | 3 | 0.01993 ≤ n = 0.02 | prototype fails | 2.2 s (113 splits) |
| test seed 0, r = 0.03 | 3 | 0.00113 (sampled true sup 0.00032) | 0.00126 | 0.2 s |

Stage C takes 1–3 s per ball, with the interval replay. The runs in this table that needed no splits used n from the
prototype's own certified bound, which leaves a large margin.

The next table compares both gauges (SPEC §11), with adaptive C1 on one thread. Each ball is at the best corner of an
atlas centre, with k = 4. n is f × 1.25 × the prototype's sampled residual on the spheres of radius r and r/2,
measured in the ball's own gauge. The "leaves" are the accepted boxes, and the time is the C1 time.

| record, r | gauge | n (f = 1) | f = 1 | f = 1.2 | f = 1.6 |
|---|---|---|---|---|---|
| 2003, 0.125 | hor | 0.0104 | 15,060 leaves, 27 s | 6,135, 12 s | 2,774, 5.2 s |
| 2003, 0.125 | dephased | 0.0066 | 8,219, 23 s | 3,223, 8.7 s | 1,475, 3.8 s |
| 2781, 0.1 | hor | 0.0056 | 22,065, 45 s | 9,938, 22 s | 2,826, 5.9 s |
| 2781, 0.1 | dephased | 0.0039 | 6,421, 18 s | 2,878, 8.1 s | 1,284, 3.6 s |
| 7000, 0.125 | hor | 0.0058 | 31,113, 63 s | 14,224, 29 s | 3,530, 7.5 s |
| 7000, 0.125 | dephased | 0.0057 | 4,927, 12 s | 1,858, 4.8 s | 582, 1.6 s |
| 1000, 0.125 | hor | 0.0132 | 13,690, 28 s | 6,028, 12 s | 2,759, 5.3 s |
| 1000, 0.125 | dephased | 0.0096 | 4,408, 11 s | 2,255, 4.0 s | 852, 1.5 s |

- Each box costs about 2 ms. The number of boxes is set by the margin n / sup. The polynomial bound overestimates by
  O(h²) and the remainder is O(h³), so a margin of 25% needs about 4 levels.
- The horizontal gauge costs more because it has a larger Mth for the same r. This is because hor(T) has smaller
  singular values than T, so a ball covers more of θ.
- Stage C on the four horizontal-gauge balls (label radius 0.03) takes 5–11 s. Two of them pass. The other two fail
  with a two-clique, which is expected at this test label radius.
- C2 takes about 3 ms per box for T1 at a general corner and for T2, and well under 1 ms for T0 and corner-symmetry
  T1.
- C1 takes about 3 ms and 0.5 MB of allocation per box.

## How the specification is read

These are the points where the checker had to settle a reading of SPEC.md or FORMAT.md.

1. The bound ‖Lν‖ ≤ 2n (SPEC §4, T1′) is false in the 2-norm.
   - ‖L‖₂ = 3, since L = L_r ⊗ L_c with ‖L_r‖ = √3. For example, ν = x yᵀ with x = y = (−2, 1, 1, 0, 0, 0) is
     horizontal and has ‖Lν‖ = 3‖ν‖.
   - For each component, |(Lν)_k| ≤ 2n does hold.
   - The crude fallback uses ‖Mth_t⁻¹ L g‖₂·n in intervals. The normal tube uses ‖Mth_t⁻¹ L g M‖₂·ρ.
2. The record shell is the one of SPEC §4, R² − n² ≤ ‖Tη‖² ≤ R². It is valid since ν ∈ N ⊥ T. FORMAT.md §6 states
   the same shell.
3. U_(·,i) in rcol is read as the 6×4 block of rows 6j + i (column i of the matrix), as in the existing normal bound.
4. k is read as the starting partition only. Adaptive splitting may certify an n that the k⁴ boxes alone do not. The
   accepted value is still the certified maximum over the boxes actually used.
5. The representative and the windings follow FORMAT.md §3 and §5. The representative has the entries nearest
   P + U w, fixed at each box centre. A stored N is checked. The checker chooses its own N only when none is stored.
6. The orientation of a corner-symmetry T1 is o_j for g ∈ {id, conjT} and −o_j for g ∈ {conj, T}, and the corner is
   always matched. A remark in FORMAT.md gives the rule. The table follows from the invariance of Ψ.
7. Some points of a box lie outside the ball. For T1 at a general corner, and for T2, everything is certified over the
   whole box. For corner-symmetry T1 only the sphere points matter, and C1 covers them.
8. eta_scale ≥ r_H is checked with an exact lower bound for λ_min(G). So a certificate with a tight r_H is not
   rejected spuriously.
9. A transfer box that fails may be split, with the same target, since every claim is universal over the box.
10. Tao's record is replayed here, although `proof/independent` does not replay it. The checks are:
    - P = (2π)K/3 in binary64, as `tao.py` computes it, and R > ‖2πK/3 − P‖, so S6 lies in the ball,
    - σ on the horizontal space, by interval Cholesky,
    - L R < σ,
    - the normal bound with b = e0,
    - Stage C with a zero frame.
11. For T1′, ν is enclosed by a 2-norm Krawczyk test in N, with the Lipschitz constant L = 2√3 for the Jacobian. This
    replaces the componentwise boxes of FORMAT.md §6. The inclusion ball contains every x with ‖Mx‖ ≤ n. The
    contraction steps and the third-order β are choices of this checker. The crude form ‖ν‖ ≤ n remains as a
    fallback.
12. Edge balls follow FORMAT.md §8 (format v2).
    - `"edge"` balls carry the chart `"F6-012"`, Mth, r, k (four integers, one per axis), P, U, n, label_radius and
      transfers (kind T1). `"F6-012"` is the only chart implemented, and any other is refused.
    - T3 carries target, g, rows, cols, hcols, vrows, wind, wind_h and wind_v. The parser writes them as two
      6-orderings (rows + vrows, cols + hcols) and one winding of 16 integers.
    - Tao's record is the top-level `"tao"`. A record without a frame is also read as Tao's record.
    - F6 is certified as H(0) of a passing edge ball.
13. The checks (G) and (D) follow SPEC §10.1–10.2.
    - (G) follows from the mean value theorem. σ_min(J(0)|_N) is certified at the exact F6, with the frame of eq. (13)
      of the edge-fold report (no F6 record), and L·R_G < σ is checked.
    - The image must lie strictly inside ‖δ‖ < R_G.
    - (D) comes from implicit differentiation in Taylor models, with σ bounded by Weyl's inequality.
    - σ_D is measured with η in the basis of eq. (13). This normalization is a choice of this checker.
14. The horizontal gauge follows SPEC §11.
    - N is chosen entrywise at each box's centre, nearest P_g + U_g w_c. Any integer N is valid before hor, so this
      choice affects only the size of the bound.
    - The box map and the representative use P_g = gauge(P) and U_g = gauge(U), computed in floats. Edge balls keep
      the dephased gauge, and a `"gauge"` field on an edge entry is not read.
    - Horizontality of P and U is not checked, because soundness does not need it (see "The horizontal gauge").
    - k is only the starting partition. Boxes above n or with a failed tube are split, down to 4 extra levels
      (`--c1-depth`). A ball that needs more fails, and the box is named.
