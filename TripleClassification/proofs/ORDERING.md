# Ordering by the labelled Fourier score

The certifier uses this argument in four of the 2,775 seed balls (1035, 1217, 1622, 2705), for patterns along a
nearly flat direction (smallest singular value about 0.02) that neither the exclusion tests nor the symmetry test
resolve at the cell sizes used: 147,157 patterns in 14,855 leaves, at levels 2–4. Those balls have **minimum-transition scope**; every other ball has scope all. The
code is [`certifier/certifier/ordering.py`](../certifier/certifier/ordering.py), on the pinned bounds
`pr4/gamma_test.py` and `pr4/gamma_exact.py`.

*Status: (Γ1), (Γ2) and (Γ3) are proved in the ordering return of 29 October 2026. The whole argument, the bound on L
in §3 and the implementation were checked again on 3 November 2026, with no gap found:
[`REVIEW_ORDERING.md`](REVIEW_ORDERING.md).*

## 1. The score

For a real 6×6 phase array Q, the plaquette vector RQ ∈ ℝ²²⁵ is

    (RQ)_(ik;jl) = Q_ij + Q_kl − Q_il − Q_kj   (i < k, j < l).

For labels a, b, each a permutation of 0, …, 5 with first entry 0 (14,400 alignments in all), put
v(a,b)_(ik;jl) = (a_i − a_k)(b_j − b_l). The **labelled Fourier score** is

    Γ_F(exp iQ) = (1/15) min_(a,b) ‖ dist_2π( RQ − (π/3) v(a,b) ) ‖₂.

- **(Γ1) Invariance.** Γ_F is invariant under row and column phases, permutations, conjugation, transpose and
  adjoint.
- **(Γ2) Lipschitz bound.** For real arrays P and Q, |Γ_F(exp iQ) − Γ_F(exp iP)| ≤ (2/5)‖hor(Q − P)‖_F ≤ (2/5)‖Q − P‖_F.
- **(Γ3) Minimum-transition reduction.** A triple (I, H/√6, K/√6) has the three transitions H, K and L = H*K/√6.
  Permuting the bases, every triple has a representation whose H-transition has the least Γ_F of the three. By (Γ1)
  this property is invariant under equivalence. If every seed ball classifies the triples whose H has
  Γ_F(H) ≤ min(Γ_F(K), Γ_F(L)), then, since that representation's H lies in some ball (or is Tao's, with no third
  basis), every triple is classified. So a pattern may be discharged when, over the whole pattern,
  min(Γ_F(K), Γ_F(L)) < Γ_F(H) strictly; ties stay in.

## 2. What a pattern provides

From the cell's record, the native setup gives H's enclosure Q(w) = Q₀ + U·w + ½H₂[w,w] + X·ξ (‖w‖ ≤ r, ‖ξ‖ ≤ τ) and,
for each colour of the pattern, a column bound: every completing column has mean-zero phases V_k with
‖V_k − v0_k‖₂ ≤ pr_k (`phase_radius`). With H_c = exp(iQ₀) and h_i = ‖U_i‖·r + ‖H₂,i‖·r²/2 + ‖X_i‖·τ for the 36
entries, |e^{ia} − e^{ib}| ≤ |a − b| gives ‖H − H_c‖_F ≤ (Σ h_i²)^{1/2} =: d_H. Here H_c and K_c are the midpoints
exp(i·mid Q₀) and exp(i·mid v0) of the Arb centres, and the code adds the centres' radii: rad Q₀,ᵢ to h_i and
Σ rad v0 to pr_k ([`REVIEW_ORDERING.md`](REVIEW_ORDERING.md) §1).

## 3. Upper bounds on Γ_F(K) and Γ_F(L)

**K.** The entries of K are exp(iV), so ‖V − v0‖_F ≤ (Σ_k pr_k²)^{1/2}, and by (Γ2)

    Γ_F(K) ≤ Γ_F(exp i·v0) + (2/5)(Σ_k pr_k²)^{1/2}.

**L.** Let K_c have columns exp(i v0_k) and L_c = H_c*K_c/√6. For an actual zero, column k of L − L_c is
H_c*(K_k − K_ck)/√6 + (H − H_c)*K_k/√6. A unit scalar on column k of K shifts column k of arg L and leaves Γ_F(L)
unchanged by (Γ1), so K may be taken in the mean-zero gauge. With s = ‖H_c‖_op/√6, bounded by
(6 + ‖H_c*H_c − 6I‖_F)^{1/2}/√6, and ‖K_k‖ = √6,

    ‖(L − L_c)_k‖₂ ≤ d_k := s·pr_k + d_H.

Every entry t of L has |t| = 1. For an entry c of L_c with |c| ≥ m > 0 and x_max = max_k d_k/m < 1,
|arg t − arg c| ≤ asin(|t − c|/|c|) ≤ κ|t − c|/m with κ = asin(x_max)/x_max (asin(x)/x increases on [0, 1)). So

    ‖arg L − arg L_c‖_F ≤ (κ/m)(Σ_k d_k²)^{1/2} =: E,     Γ_F(L) ≤ Γ_F(exp i·arg L_c) + (2/5)·E.

Each centre score is bounded above by evaluating one alignment, chosen by a floating-point search, in Arb.

## 4. The threshold for H, and the arithmetic

The lower bound of Γ_F(H) over the cell is Γ_lo(H_c) − (2/5)·d', where Γ_lo is computed exactly at the binary64 centre
phases p by integer arithmetic over all 14,400 alignments (`gamma_exact.score_lower`), and d' bounds the distance from
every phase of H over the cell to p (the motion over the cell plus the distance from the Arb centre ball to p). All
other quantities are computed in Arb, stored as binary64 numbers rounded outward, and compared exactly. A pattern is
discharged only on a strict inequality.
