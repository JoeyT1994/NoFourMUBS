# Review of return X at radius 0.45 (25 Oct 2026)

**Replayed on rusty** (32 workers, about 33 min): `python -I verify_all.py --workers 32 --include-030`. The fresh full
radius-0.45 cover passes (5,408,512 boxes), as do the radius-0.30 cover, the graph and the exact interface checks.

**Accepted result.** For every order-6 complex Hadamard H with d_ph([H], [F6]) ≤ 9/20, QuartetEdge H fails. For any two
bases K, L each unbiased to I and H/√6, min_{i,j} |⟨k_i, l_j⟩|² ≤ 1/6 − 1/20000. At radius 3/10 the deficit is 1/1000.
Same metric as X at 0.15 (unnormalised horizontal phase Frobenius norm). Radius 0.50 and optimality are not
established, and there is no Lean formalisation.

**Atlas use.** The edge ball (X-ball) can reach out to phase distance 0.45 from F6 with no Stage C. The re-grown atlas
uses an X-ball of tangent radius 0.30 (numerically at distance 0.29–0.32 from F6).
