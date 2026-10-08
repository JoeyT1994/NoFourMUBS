# Status of the quantitative-MC1 subtask

## Fully proved

The standard-library exact verifier proves the algebraic identities used in `GLOBAL_BLOCK_MOMENTS.md`. The note proves, for every order-six complex Hadamard:

- the complementary determinant/permanent identities `3 P_A = 2 D - G` and `3 P_B = 2 G - D`;
- the determinant ratio bound `D/2 <= G <= 2D`;
- the chart bound `R(A) <= 2 g(A)^3`, so `g >= (R/2)^(1/3)`;
- the permanent bound `|perm B| <= 3`, with equality exactly for a 3 by 3 Hadamard block;
- the quantitative stability bound `|det B|^2 >= 27-13(9-|perm B|^2)` when `|perm B|^2 >= 35/4`;
- the permanent Cauchy--Binet sum `sum_T |perm H[S,T]|^2 = 72`;
- the exact row-triple identity `sum_T q = 432 + K_a K_b K_c` and its necessary low-M bounds;
- full-matrix second-moment identities and `sum Re q = 8100 + 3 S_2 + T_3/2`;
- a complete 66-term exact moment expansion for the energy in any row triple.

These use the defining Hadamard equations and the supplied facts F2 and F8. They do not prove global confinement.

`HADAMARD_CORNER_CLASSIFICATION.md` proves an additional complete structural theorem: every order-six Hadamard containing a 3 by 3 Hadamard corner is equivalent to the full affine Fourier family, its transpose, or Tao. The proof treats all three ranks of an exact circulant equation. The remaining 36 cubic-phase cases are exhausted exactly; the 18 flat cases are all explicitly equivalent to Tao.

Together with the full affine Fourier theorem in the sibling `fourier_sector` directory, this proves `M < 26 => nu < 9/25` throughout the entire Hadamard-corner stratum. The hypothesis can equally be stated as the existence of a corner with permanent modulus 3 or determinant squared modulus 27.

## Certified finite computation

`verify_global_moments.py` uses only integer and rational coefficient arithmetic. It checks all finite Laurent expansions, all moment reductions, the scalar polynomial decomposition, and the complete saved row-energy coefficient table. It requires no interval arithmetic, floating point, third-party packages, or externally supplied numerical data.

`verify_hadamard_corner.py` uses exact Eisenstein-integer arithmetic to exhaust all 36 finite cases, verify all 18 Tao equivalences, and independently prove `M(Tao)=243` from F2. It also checks the finite order-three permutation fact and the exact CRT identification with the order-six Fourier family.

## Numerical evidence only

Exploratory calculations were used to propose identities before exact verification. No numerical inequality or sampling result is used in a theorem in `GLOBAL_BLOCK_MOMENTS.md`.

## Remaining gap

There is no proved unrestricted global estimate from these identities that forces `nu <= 0.55` when `M < 26`. The Hadamard-corner theorem proves a complete exact stratum, but it does not show that every low-M matrix has such a corner or quantify a neighborhood of the stratum. The real and signed moment identities cannot be substituted for a lower bound on the full sum of squared imaginary parts. The exact row-energy polynomial has mixed signs and has not been turned into the required coercive inequality.
