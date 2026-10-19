# Cubed row/column predicate: independent audit

## Exact characterization

**PROVED.** For an order-six phase Hadamard H, the following are equivalent:

1. Two rows or two columns of the entrywise cube `H^{circ 3}` are proportional.
2. H is Fourier type or Tao-equivalent.

The forward direction uses the exhaustive two-clock-column classification in the clock-collision proof. Suppose two column ratios have constant cube. Remove a common phase so that the ratios belong to `{1,omega,omega^2}`. Let their occurrence counts be `n_0,n_1,n_2`. Column orthogonality says

    n_0+n_1 omega+n_2 omega^2=0.

Its real and imaginary parts give equal counts, hence each count is two. Row permutations and phases therefore put the two columns into the clock-related form of that classification. Its complete alternatives are Fourier type and Tao. Apply the same argument to the transpose for row pairs.

Conversely, in the displayed Fourier matrix N, the first three rows have pairwise cube-proportional entries. Its transpose has the corresponding column property. The property survives Hadamard row/column phases and permutations. Tao has cube-proportional rows and columns because its entries are cube roots of unity before equivalence operations.

## Thirty nonnegative factors

For every row pair r<s define

    R_rs = 36 - |sum_k (H_rk conjugate(H_sk))^3|^2,

and define `C_rs` analogously for column pairs. Let

    P_3(H) = product_{r<s} R_rs product_{r<s} C_rs.

Each factor is nonnegative by the triangle inequality. A factor vanishes exactly when the corresponding six unit phases have constant cubes, because equality in the triangle inequality forces all six summands to agree. Therefore

    P_3(H)=0  iff  H is Fourier type or Tao-equivalent.

**Scope distinction.** This cubed predicate also vanishes on Tao. It is not the same global single-Hadamard predicate as the previously supplied thirty-factor squared-overlap predicate. For actual MUB-triple edges, the permitted Tao nonextension theorem removes that extra branch, so `P_3=0` is exactly the Fourier-edge predicate there. The product over the three edges, or the six edges of a quartet, is consequently an alternative exact formulation on the corresponding physical configuration space.

No asserted identity forces this product to vanish on all triples or all quartets. F and F' remain unproved.

## A rank consequence on the Fourier-free domain

**PROVED.** A Fourier-free non-Tao order-six Hadamard obeys

    rank_C(H^{circ 3}) >= 3.

Here is an elementary rank-two lemma that makes the deduction exact. Let M be a rectangular unit-modulus matrix with at least three rows and columns and rank at most two. After dephasing its first row and column, a rank-one case is constant. In a rank-two case one can write

    M_ij = 1+a_i b_j,
    a_0=b_0=0.

Indeed the first row belongs to the two-dimensional row space, and the differences from it have first coordinate zero, so they span at most one dimension.

If the a_i have at most one nonzero value, M has at most two row types, giving a proportional row pair. Otherwise choose distinct nonzero values a,c. For every nonzero b, unit modulus implies

    2 Re(a/conjugate(b)) + |a|^2=0,
    2 Re(c/conjugate(b)) + |c|^2=0.

If `c=lambda a` with real nonzero lambda, these equations require `lambda=1`, contrary to a and c being distinct. Otherwise they are independent real linear equations for `1/conjugate(b)`, with one solution. All nonzero b values are therefore equal. M has at most two column types and has a proportional column pair.

Apply the lemma to `M=H^{circ 3}`. A rank at most two would produce a proportional cubed row or column pair, and hence Fourier type or Tao by the characterization above. This contradicts the stated domain.

This is a necessary rank condition for the remaining compact-component problem. It is not an exclusion of rank three or higher and is not a no-quartet proof.
