# Evidence that Q holds with margin (numerical, not an input)

| Script | Finding | Logs |
|---|---|---|
| [quartet_gap.py](quartet_gap.py) `seed` | Riemannian descent on four bases, summing (|entries|² − 1/6)² over all six transitions. 14 of 24 Haar starts reach the same minimum, **0.051249**; the others stop at 0.179–0.268; none lower | `logs/q_*.log` |
| [carrier_gap.py](carrier_gap.py) `seed` | Best quartet residual with the carrier H₊(θ) held fixed: 0.10–0.23 at generic carriers | `logs/cg_*.log` |
| [margin2.py](margin2.py), [clique.py](clique.py) | Conditioning at generic carriers: 48–56 common rays, min \|⟨z,w⟩\| ≈ 10⁻⁴ to 3·10⁻³, and near-orthonormal 6-cliques only at threshold 0.1–0.2 | `logs/m2_*.log`, `logs/c_*.log` |

These numbers explain why cells at ρ ≈ 0.005–0.02 certify. They are not
used in any proof.
