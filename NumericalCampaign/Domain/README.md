# Domain: the reduction verifier and the size of the seed domain

| Script | What it does | Result |
|---|---|---|
| [verify_reduction.py](verify_reduction.py) | **Exact.** Laurent-polynomial identities: R is invariant under the 36 corner orderings, transpose and conjugation; row and column orders and transposition act on the Gh and Gv moduli as the fundamental domain needs | PASS in 20 s. Part of the root verify.py |
| [corner_domain.py](corner_domain.py) `seed N` | Monte Carlo: P(R > 0), strict corners per class, and vol D₀ | P(R > 0) = 0.32; 400/400 strict corners; vol D₀ = 6.4·10⁻³ (logs `cd_*.log`, 8 × 5,000 samples) |
| [fundamental_domain.py](fundamental_domain.py) | Fraction of T⁴ in F, and whether each orbit meets F exactly once | 0.0137, which is 1/72; 2,000 of 2,000 orbits meet it once |
| [d0_stats.py](d0_stats.py) `seed N` | R, g and the corner gap on samples of D₀ | min R = 54, min g = 3.5 (257 samples; `d0_*.npy`) |
| [d0_overhead.py](d0_overhead.py) `seed ρ N` | Cells meeting D₀ against cells centred in D₀ | 1.26 at ρ = 0.01, 1.6 at ρ = 0.02 (`ov_*.log`) |
| [seed_symmetry.py](seed_symmetry.py) | Which of the 144 corner maps preserve the Hadamard class, by the Haagerup power sums | 72 do. Diagnostic only; the reduction does not need it |
| [branch_lemma.py](branch_lemma.py) `seed N` | Numerical regression for regular side-root changes, fixing indices 0–2 | PASS at 40 seeds × 6 changes. The [algebraic proof and exact verifier](../../ProvenResults/Sheets/BRANCH_LEMMA.md) establish permutations and state the necessary chart-domain qualification |
