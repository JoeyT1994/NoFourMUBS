# Hard balls: what the witness relies on

**Status: PROPOSAL for the user.** P1 below is a new statement, a short corollary of an existing one, and nothing in
the repository depends on it yet. The witness also uses two reviewed results, unchanged:

- **A.** The anisotropic annulus lemma, PROOF_815.md §4–§7 of the tail return (handoffs/ret_TC_tail_20261101,
  independently audited in its global/AUDIT_815.md). It covers the Fourier form, the Gram tensor bounds, the
  ninth-order tail and the colour-product support bound with p = 0.
- **B.** The native averaged moving contraction, family_neighbourhoods/PROOF.md §6 (reviewed in NATIVE_REVIEW.md),
  called through the frozen `moving_symmetry.classify`, with the K column enclosure v = v₀ + e, ‖e_c‖ ≤ ε, carrier T = 0.

## P1. The lemma at a shifted reference, two-sided

**Setting.** As in PROOF_815.md §2–§4: H ranges over the cell's normal form (Q₀, U, H₂, X, r, τ); q\* is an exact
dyadic phase matrix; y\* is an exact dyadic, column-centred phase matrix; T is invertible, B is 30×66, and
E is the Helmert injection. All three are arbitrary exact data (float proposals).

For any exact c ∈ ℝ², let y_c = y\* + ET(0, c), write a putative zero as y = y_c + ETz′, and put
G(z′) = BF(q\*, y_c + ETz′), L = DG(0) − I. Define η^H_a, β_a and P_a exactly as in PROOF_815.md §4–§5, with every
quantity evaluated at the reference (q\*, y_c) instead of (q\*, y\*). In particular η^H_a is η_a without its first
term ‖B_aF(q\*, y_c)‖.

**Claim.** Every zero of the full residual over the H cell satisfies, for each block a ∈ {s, w},

  ‖z′_a‖ ≤ ‖G_a(0)‖ + η^H_a + β_a ρ + P_a(S′, W′)   and   ‖z′_a‖ ≥ ‖G_a(0)‖ − η^H_a − β_a ρ − P_a(S′, W′),

where S′ = ‖z′_s‖, W′ = ‖z′_w‖ and ρ = (S′² + W′²)^{1/2}.

**Proof.** PROOF_815.md §4 gives, at any reference, 0 = BF(q, y) = G(0) + z′ + Lz′ + N(z′) + M, where N is the
nonlinear remainder of G (bounded blockwise by P_a, §5) and M = B(F(q, y) − F(q\*, y)) is the H-motion term, bounded
blockwise by η^H_a + 2‖B_a‖D‖T‖ρ. The proof uses no property of the reference point. Hence
z′_a = −(G_a(0) + (Lz′)_a + N_a + M_a). Taking norms gives the upper bound, as in §4, and the reverse triangle
inequality gives the lower bound. ∎

**Use.** Zeros in the pattern have z = (z_s, z_w) relative to y\*. Then z′ = z − (0, c), so S′ = S and
|z_w| = |c + z′_w|. The weak plane, out to the colour cap (PROOF_815.md (9), p = 0), is covered by the central disc
|z_w| ≤ ρ₀ and by polar sectors. Each sector lies in a disc of radius d about its centre c, where d is the largest
corner distance. That is valid because, on a sector, the distance to c is maximised at a corner: it is convex in the
radius and increasing in the angular offset. For each piece, every closed box of the (S′, W′) rectangle
[0, R] × [0, ρ₀ or d] is discharged by one of:

1. it lies outside the initial ball, S′² + |z_w|² > R², using the lower bound max(0, |c| − W′, W′ − |c|) of |z_w|;
2. |z_w| exceeds the colour cap;
3. a strict violation of either inequality of P1 in either block, evaluated at the box's upper corner (P_a, β_a
   and η^H_a enter increasing in S′ and W′);
4. central piece only: the box lies inside S′² + W′² < t².

If no box of kind 4 is left, the pattern has no zero (EXCLUDED). Otherwise every zero has ‖z‖ < t, so
‖y − y\*‖ ≤ ‖T‖t, and each column's centred error is at most ‖T‖t. That is the enclosure B needs with ε_c = ‖T‖t. If
B returns q < 1, every zero in the pattern has the balanced order-three symmetry (CLASSIFIED).

The winding of each colour centre relative to y\* is a proposal: translating a colour ball by 2π in any entry
describes the same set of K columns.
