# A wide F6 tube: no quartet edge within d_F ≤ 0.075 of the F6 orbit

*Status: **PASS**, 8 Oct 2026. Receipt: [`results/tube_receipt.json`](results/tube_receipt.json). Per-root records: `results/tube_cells.jsonl.gz`.*

**The run in numbers.**

| Quantity | Value |
|---|---|
| Root cubes of the fundamental domain | 3,207, all accepted |
| Leaf cells | 8,592 |
| Largest column distance δ | 0.0277 (τ = 1/6 where needed) |
| Integer cover nodes | 3.5·10¹⁰ |
| CPU time | 1.7 h, on a laptop |

## Theorem

Let H be an order-6 complex Hadamard matrix. Suppose H is equivalent to F ∘ e^{iu} for some horizontal phase matrix u with ‖u‖_F ≤ ρ = 0.45095. Then {I, H/√6} is not a quartet edge.

**Corollary.** No quartet edge has d_F(H) ≤ r_T = 0.075. This is 2.25 times the previous radius of 1/30 ([ClusterTube](../../ProvenResults/FourierNeighbourhood/ClusterTube/README.md)).

## Proof

`cells.py` and `reference.py` implement every step in outward Arb arithmetic or exact rationals.

### 1. Gauge

Suppose d_F(H) ≤ r.
- Align H to F with the minimising monomials. Rephase each column so that ⟨h_j, f_j⟩ ≥ 0.
- Then Σ_i |e^{iφ_ij} − 1|² = 12 − 12·√(1 − d_j²) ≤ 12·(1 − √(1 − r²)).
- Pass from chords to phases with the arcsine factor. The horizontal projection does not increase the Frobenius norm.
- This gives ‖u‖ ≤ RHO(r), with RHO(0.075) = 0.45095.

### 2. Normal form

Let Φ(u) be the 30 real coordinates of the off-diagonal entries of (F∘e^{iu})(F∘e^{iu})†, and let J = Φ′(0).
- J·Jᵀ has spectrum {0, 3, 9, 12}. This is checked exactly: JJᵀ(JJᵀ − 3)(JJᵀ − 9)(JJᵀ − 12) = 0.
- Put K = Jᵀ·p(JJᵀ), where p(0) = 0 and p(λ) = 1/λ. Then KJ = P_N and ‖K‖ = 1/√3. Here N is the horizontal space minus the tangent space T. T is spanned by the four horizontal patterns t₁, t₂, t₁ᵀ, t₂ᵀ.
- A Hadamard matrix with u = v + n (v ∈ T, n ∈ N) satisfies n = −K·(Φ(v + n) − J(v + n)).
- For horizontal w, ‖Φ″[w, w′]‖ ≤ 2^{3/2}‖w‖‖w′‖. This bound is from [PRACTICAL_LOCAL](../averaging_lemma/PRACTICAL_LOCAL.tex); numerically the ratio it needs peaks at 7.2 < 8. Hence the map is a contraction on {‖x‖ ≤ ρ′} with q = (2√2/√3)·ρ′ < 1, and n is unique there.

### 3. Cells

Write v = Tb·y, where Tb is the four tangent patterns (rational). For a cube y_c ± h:
- Let n̂ be the numerical fixed point at v_c.
- The self-consistent ball radius e satisfies (residual + variation) ≤ (1 − q_loc(e))·e, with q_loc(e) = ‖K·R′(x_c)·P_N‖ + (2√2/√3)·(e + sup‖Δv‖).
- The map then sends B(n̂, e) into itself, and by uniqueness the true n lies in that ball.
- Every column of u − u_c is then bounded, which gives δ, the column distance from H to the reference F∘e^{iu_c} rounded to the trig table.

### 4. Reference certificate (`reference.py`, `refcover.cpp`)

This is ClusterTube's argument with F6 replaced by a general dephased reference K whose entries are table phases.
- **Transfer.** A ray unbiased to (I, H) has every raw overlap with K's columns within 6δ ≤ τ of √6.
- **Cover.** An exhaustive integer cover of the 5-torus confines every such ray to within projector distance < ρ_l = (14/15)·τ of one of 48 rational unit centres. The arithmetic is ClusterTube's audited prefix, and the trig table is Arb-certified with its hash pinned.
- **Graph.** The exact compatibility graph on the centres (ClusterTube's predicates) has no orthogonal 6-clique C with a compatible orthogonal 6-clique D.
- **Calibration.** On F6 itself, at τ = 1/5 and ρ = 5/27, the code reproduces ClusterTube exactly: 7,485,187 nodes, 52 C-cliques, and 462/828 orthogonality/unbiasedness edges.

### 5. Symmetry

Three kinds of operation preserve both the set {‖u‖ ≤ ρ} and the quartet-edge property:
- the 72 monomial automorphisms of F6 (rows j ↦ a·j + b, columns k ↦ a·k + d, a = ±1);
- transposition ({I, U} is an edge if and only if {I, U†} is);
- complex conjugation.

Together they give 288 distinct orthogonal actions on T, each checked exactly to preserve T. So it suffices to cover a Dirichlet fundamental domain of the ellipsoid {yᵀ G_T y ≤ ρ²}.

### 6. Cover

The run covers 3,207 cubes of half-width 0.012, refined adaptively. Children that miss the ellipsoid or the fundamental domain are dropped. Every leaf is accepted.

## Inputs

- ClusterTube's arithmetic prefix and trig table, both audited.
- The bound on Φ″ (PRACTICAL_LOCAL; numerically confirmed with margin).
- Exact linear algebra at F6.

No reconstruction or MC inputs are used.

## Use

- **Short proof.** The theorem moves Step 1 of the short proof from radius 1/30 to radius 0.075. The averaging lemma then needs only c₀ ≈ 20–27 (sharp value 144·sin²(6·arcsin 0.075) ≈ 27.2) instead of c₀ = 5.
- **The shoulder.** Its maximal corners have 5 ≤ R < 20, which is the band 1/30 < d_F ≲ 0.064, so it falls inside this tube.
