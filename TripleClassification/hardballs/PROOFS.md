# Hard balls: what the witness relies on

The witness (`witness.py`) introduces **no new lemma**. It chains three reviewed results and two elementary facts,
all stated below. The w-affine extensions that would take it beyond level-4 cells are new statements. They are
written at the end as **proposals for the user**, and nothing here depends on them.

## Reviewed results used unchanged

- **N9. Native fine bins** (family_neighbourhoods/PROOF.md §9, `fine_patterns.refine`). For a pattern of the cell's
  complete cover, every column of every actual completing basis lies in one of its colour's retained closed bins.
  A bin has centre 2π(0, k₁, …, k₅)/192 and mean-zero phase radius ρ = π√(29/6)/m. An empty complete search is an
  exclusion.
- **A. The anisotropic annulus lemma** (PROOF_815.md §4–§7 of handoffs/ret_TC_tail_20261101, audited in its
  global/AUDIT_815.md). Use any exact q\*, a column-centred y\*, invertible T, and any B. Then every zero
  y = y\* + ETz over the cell's normal form satisfies, blockwise,
  ‖z_a‖ ≤ ‖G_a(0)‖ + η^H_a + β_a‖z‖ + P_a(S, W). Here P_a is the degree-8 Gram-tensor polynomial plus the
  ninth-order tail, and the norm-variable search of §7 discharges boxes by these inequalities. The witness
  recomputes every constant in Arb at 160 bits; floats only choose y\*, T, B and the Gram flattening.
- **N6. Native averaged moving contraction** (family_neighbourhoods/PROOF.md §6, NATIVE_REVIEW.md). It is called
  through the frozen `moving_symmetry.classify` with K columns v_c = v₀,c + e_c, ‖e_c‖ ≤ ε (mean-zero) and carrier 0.
  q < 1 forces the balanced order-three symmetry on every zero in that enclosure.

## Elementary facts

**E1. Weak cap over a union of bins.** For unit n ∈ ℝ² put a = T^{-T}(0, n) and split a into its six column blocks
a_c ∈ ℝ⁵. If column c lies in some bin with Helmert centre d (relative to y\*) and radius ρ, then
n·z_w = Σ_c a_c·x_c ≤ Σ_c max_bins(a_c·d + ρ‖a_c‖). This is PROOF_815.md (8) with p = 0, using the fact that the
support function of a union is the maximum of the supports. The 64-direction cover then gives (9). The initial
radius is ‖z‖ ≤ ‖T^{-1}‖(Σ_c m_c²)^{1/2}, where m_c = max over bins of ‖d‖ + ρ. Each bin's winding relative to y\*
is a proposal: translating a bin by 2π in an entry describes the same K columns.

**E2. From the lemma to N6.** If the search leaves only boxes inside ‖z‖ < t, then ‖y − y\*‖ ≤ ‖T‖t. Hence each
column's centred error is at most ‖T‖t, which is N6's hypothesis with v₀ = y\* and ε = ‖T‖t. If no box is left
inside, the pattern has no zero.

**Outcome per pattern.** EXCLUDED (N9 or A), CLASSIFIED (A, then N6 with q < 1), or OPEN. One y\* and its expansion
serve every pattern whose least-squares completion lies within 0.05 of it, column by column (choosing a nearby
reference is only a choice of proposal). Columns are matched up to permutation; permuting K's columns permutes F
and leaves the zero set unchanged.

## Proposals for the user (not used)

**P1. w-affine reference in A.** The weak floor of A is η^H_w ≥ r‖B_w J_H U‖. On 815 this is 0.12 at
r = 0.0125, because H motion transverse to the family drives the weak K mode. Replace y\* by
y\*(w) = y\* − ET·B J_H U·w. Expand F jointly in (Δq, Δy) = (q − q\*, −ET·BJ_HU·w). The first-order term then
becomes ‖B_a(J_H U + J_K Y₁)‖r, which is small by construction. The second-order and cross terms take the
universal bounds ‖F_HH‖ ≤ 2√6, ‖F_HK‖ ≤ 2, ‖F_KK‖ ≤ 6 with D_y = ‖Y₁‖r. Because Y₁ points mainly along the weak
coordinates, D_y must instead go into the tensor polynomial P_a rather than the universal ‖F_KK‖ bound;
otherwise 3‖B_w‖D_y² loses everything. The statement and proof are a few lines on top of PROOF_815.md §4.

**P2. w-affine preconditioner in N6.** At level 2 the native q has a linear H-motion term of 0.95 by itself.
A preconditioner A(w) = A₀ + Σ_k w_k A_k with A_k = −A₀M_kA₀ cancels its first order. The remaining
Σ w_j w_k A_j M_k is bounded by r² times the norm of the 4×4 block flattening. This is valid because the averaged
moving identity A(w)(F(x) − F(x̄)) = 0 holds for any matrix depending on the known w, and A(w) = EA₀(w)Q_Y keeps
A(w)F(x̄) = 0.
