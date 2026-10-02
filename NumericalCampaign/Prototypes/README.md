# Python prototypes (not rigorous)

These scripts established what the rigorous pipeline has to do. They use
floating point with explicit safety margins, or first-order bounds.
**None of them is a certificate.** Run them from this folder; `margin.py`
is a helper that some of them exec.

| Script | What it does | Result (logs/) |
|---|---|---|
| [fixed_carrier_quartet.py](fixed_carrier_quartet.py) `a,b,c,d` (or `F:a,b`, `X:re,im`) `[TH_MIN] [EXTRA]` | Jaming-style exhaustive search at one carrier: branch and bound on T⁵ in the H-column form, then 6-clique and unbiased-pair search | No quartet at 3 generic, Fourier and X₆ carriers in 14–117 s (`g2.log`, `g3.log`, `F.log`, `X.log`). Its cluster counts include near-miss ghosts: 53 at g1 and 54 at g3, against rigorous counts of 52 and 52 (Certification/README.md). The EXTRA tolerance scan is in `e_*.full` |
| [seed_cell_certify.py](seed_cell_certify.py) | Correlated first-order cell test using ray velocities ∂z/∂θ | g2 is clean up to ρ = 0.05 (`sc*.log`) |
| [validate_first_order.py](validate_first_order.py) | Compares the true overlap change over a cell with the first-order bound | Ratio ≤ 1.1 at ρ = 0.005 and ≤ 0.73 at 0.02; breaks down at 0.05 (`vf*.log`) |
| [landscape.py](landscape.py), [refine.py](refine.py) | 60 random cells at ρ = 0.02, and refinement of the ones that fail | 51 triple-free, 9 with candidate bases but no quartet; all cleared by refinement (`land_*.jsonl`) |
| [sensitivity_estimate.py](sensitivity_estimate.py), [cell_certify.py](cell_certify.py) | Jacobian-sharpened ray radii, and the earlier uncorrelated cell test | Median ‖J⁻¹‖ ≈ 15; the uncorrelated test fails above ε ≈ 0.003–0.01 (`cc_*.log`) |
