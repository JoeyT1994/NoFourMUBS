# Coverage for the intrinsic atlas

Status, 8 Oct 2026: the global part is **proved**. See `../coverage/README.md` and the two returns replayed there. Below is the statement the atlas uses and the boundary lemma specialised to ball Records (`ballrecord.py`).

## Notation

- 𝓗 is the compact set of order-6 Hadamard matrices.
- X = (𝓗/≅) ∖ {[Tao]}.
- A phase matrix is a real 6×6 matrix. h is the orthogonal projector onto horizontal matrices (all row and column sums zero). The kernel of h consists of row-plus-column phase patterns, so e^{iY} ≅ e^{i h(Y)} entrywise, up to row and column phases.

## Theorem (connectedness)

X is connected. This is return A, `CONNECTEDNESS.md`. The argument:
- Claim A: the positive local maxima of R form one orbit, at θ* = α(1, 2, −1, −2), α = arccos(1/4), R* = 3¹³/2¹².
- Claim B gives H₊(Lθ*) ≅ K* for all 144 seed maps L.
- θ ↦ [H₊(θ)] is continuous on {R > 0}, and every component of {R > 0} contains a maximum.
- MC1 and MC5 give X = A ∪ conj A ∪ {[F6]}, where A is the image of H₊.
- An explicit non-Fourier family [[F₃, F₃], [F₃D(t), −F₃D(t)]] tends to F6, so [F6] lies in the closure of both A and conj A.

Inputs: MC1–MC5 (classification-relative), and the isolation of Tao.

## Corollary (atlas coverage)

Let 𝓡 be a finite family of Records. Each Record r is the closed set
B_r = {e^{i(P_r + δ)} : δ horizontal, ‖δ‖ ≤ R_r},
and its interior is the same set with ‖δ‖ < R_r. Suppose:

1. some Record contains a Hadamard not equivalent to Tao;
2. every Hadamard on the boundary ‖δ‖ = R_r of every Record is equivalent to a matrix in the interior of some Record.

Then every class in X meets some B_r.

**Proof.** Put W = X ∩ ⋃_r [B_r ∩ 𝓗].
- *W is closed.* It is a finite union of compact images.
- *W is open.* If H = e^{i(P_r + δ)} with ‖δ‖ < R_r and δ(H, K) < R_r − ‖δ‖, then K ≅ e^{i(P_r + δ + v)} with v horizontal and ‖δ + v‖ < R_r. By condition 2, boundary points also have interior representatives, so W equals the union of the interiors.
- Condition 1 makes W nonempty. Since X is connected, W = X. ∎

## Lemma (4-dimensional boundary transfer for ball Records)

Let Record s carry a rational horizontal tangent frame T_s (36×4) and a certified normal bound, as in `ballrecord.py`. Every Hadamard e^{i(P_s + δ)} with δ horizontal and ‖δ‖ ≤ R_s can be written δ = T_s η + ν with ‖ν‖ ≤ n_s and ‖η‖ ≤ r_s. On the boundary, ‖δ‖ = R_s, so

  R_s − n_s ≤ ‖T_s η‖ ≤ R_s + n_s.  (shell)

Let a target t, row and column permutations P and Q, and an integer winding matrix N be given. Put c = h(P P_s Q + 2πN − P_t) and M = h(P T_s(·) Q), a 36×4 matrix. If

  sup_{η ∈ box} ‖c + M η‖ + n_s < R_t,

then every boundary Hadamard of s with η in the box has the interior representative e^{i(P_t + δ′)} in t, where δ′ = h(P(P_s + δ)Q + 2πN − P_t).

**Proof.** We have ‖h(PνQ)‖ ≤ ‖ν‖ ≤ n_s, and P_t + δ′ differs from P(P_s + δ)Q + 2πN by a row-plus-column pattern. ∎

**The resulting certificate is 4-dimensional, not 25-dimensional.** For each Record s, cover the cube ‖η‖_∞ ≤ r_s, a container for the ball ‖η‖ ≤ r_s, by finitely many η-boxes. A box may also be discarded if it misses the ball ‖η‖ ≤ r_s.

**The winding N** is chosen after dephasing. Take the angles of e^{i(A P_s − P_t)} divided by its first row and first column, then recover N as the integer that makes h(A P_s + 2πN − P_t) equal h of those angles. Rounding (A P_s − P_t)/2π directly, without dephasing, gives a valid but useless c, with ‖c‖ ≈ 8–10. Each box must either be disjoint from the shell (decided exactly, in Arb), or carry a transfer (t, P, Q, N) passing the inequality above in Arb. Return B's 25-dimensional box-tree checker (`../coverage/returns/B_exact_quotient/quotient_coverage/`) is the general form; the normal bound makes the 21 normal directions a single additive n_s.

## History

The 8 Oct draft of this file justified the sheet swap at the maxima by "H₋ ≅ conj H₊(θ̄)". Both returns point out that this is circular. It is repaired by the exact frame symmetries of E(x) = [[1,1,1],[1,x,x²],[1,x⁻¹,x⁻²]] (return A `SHEETS_TOPOLOGY.md` §2; return B `COVERAGE.md` (3)).

`critR.jl` (now in `archive/minimal_proof_development/`), the certified box cover of the critical points of R, is retired. Claim A is proved algebraically, and return B shows such a cover cannot terminate near the F3 seed, where R, ∇R and Hess R all vanish with strict seeds arbitrarily close.
