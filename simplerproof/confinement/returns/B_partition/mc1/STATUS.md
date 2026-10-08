# Status of the quantitative MC1 module

## Fully proved

- The entire extremal Fourier arc `0<a<=1/10` has 72 maximizing corners across 18 partitions, including all four noncomplementary overlap types, while `M<=324/25<26`. This exactly disproves a low-M partition-sparsity shortcut; it does not disprove confinement. See `CROSS_PARTITION_OBSTRUCTION.md`.

- The complementary-pair minimax has no regular positive local minimum on its both-active locus. Its smallest positive first-order stationary value is exactly `(233472 sqrt(6)-488448)/3125 > 26`; all candidates are classified, including the exceptional vanishing-coefficient branch. In combination with the companion regular single-corner and singular-case modules, this excludes the full active pattern in which all maximal values come from one `3+3` split. See `complement_minimax/COMPLEMENT_MINIMAX.md` and `../critical/ONE_PARTITION.md`.

- Complementary-minor identities `3|perm A|^2=2|det A|^2-|det B|^2` and the permanent sum rule 72 for each row triple.
- `|perm A|<=3` for every physical three-by-three block and the chart inequality `R<=min(2g^3,36g^2)`.
- The determinant-only identity `q(A)=2|det A|^2+det(A)det(A^[2])/product(A)` and its scalar real-part and square consequences.
- The exact Cauchy--Binet identity `sum_T q(H[S,T])=432+L_a L_b L_c`.
- A globally available maximum-volume split with `|det A|^2>=54/5`, `sigma_min(A)^2>=3/5`, and `sigma_min(B)^2>=6/19`.
- If `M<26`, the q value of every such selected minor has positive real part and principal argument less than `1/8` radian in absolute value.
- The full sum of the 400 corner invariants reduces exactly to the twelve explicit full-index contractions in `GLOBAL_IDENTITIES.md`.
- The obstruction to an unweighted exterior-algebra norm argument: its Schur multiplier has a kernel already at Fourier, and the product-phase matrix does not split into separate row and column phases.

## Exact finite computation used

`verify_minor_identities.py` proves the polynomial identities by Laurent expansion with integer coefficients and verifies the quantitative phase constant with rational arithmetic.

`verify_global_contractions.py` proves the stated finite contraction formula by integer polynomial expansion, partition-lattice inversion, and the exact Hadamard orthogonality rules.

`complement_minimax/verify_complement_minimax.py` checks every minimax factorization, root bracket, exact algebraic barrier, mixture-weight inequality, and negative second derivative.

`verify_cross_partition.py` directly verifies all 400 defining R polynomials on the full arc and exhausts its active partition/intersection counts.

All these scripts use only the Python standard library and pass with `python3 script.py`.

## Numerical exploration only

A promising additional inequality was explored:

`sum R >= (9/4) max(15552 - sum |H^[2](H^[2])*|^4, 15552 - sum |(H^[2])*H^[2]|^4)`.

Here the fourth powers in the sums are entrywise absolute fourth powers. Preliminary numerical checks suggested equality on a Fourier affine family for the appropriate one of the two terms and did not find a violation in random samples. Those preliminary samples are not part of the archived reproducible pilot. No global proof or exact certificate for this inequality is delivered. It is not used in any claimed theorem or in the parent result.

An unrestricted proposed upper bound `sum R<=72 M` is false: Tao has `M=243` and `sum R=87480=360M`. Exploratory non-Tao samples also slightly exceeded 72 at larger M. No conclusion about that upper bound on the sublevel `M<26` was established.

## Remaining gap

The global statement `M<26 => nu<=0.55` remains unproved by this module. The selected-minor phase bound is a necessary condition on the entire sublevel, not a bound on the phase distance of H from Fourier. The complementary-pair minimax theorem removes one entire regular active pattern; companion modules close its singular cases. One still needs to exclude convex balances across several partitions, or prove a global compatibility/propagation argument for the selected minor phases.
