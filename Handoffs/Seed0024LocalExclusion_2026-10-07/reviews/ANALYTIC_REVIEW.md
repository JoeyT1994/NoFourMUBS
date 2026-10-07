# Independent review of the local seed0024 route

Status: **analytic review passes; physical formal admission remains false**.
The reviewer is a separate native worker from the local-route author. The
reviewed source is `../local-route/LOCAL_EXCLUSION.md`, SHA-256
`4778e2539f3d5523984c44d650b4ec6bc435335234ada72be225693742d69f42`.
The accompanying `REVIEW.json` pins that source and the independently regenerated
exact checks. This record grants no four-MUB exclusion or sector closure credit.

I checked the following six parts directly from their physical hypotheses.

1. **Binary row, determinant and scalar cap.** The exact defect identity counts
   both halves of the perturbed binary row. Adding the first row of the
   complementary block to the second leaves its determinant unchanged. Each
   cofactor is a difference of two unit entries and has modulus at most two.
   Thus the determinant-squared bound is `12 t²`, and the permanent bound six
   gives `|q| ≤ 72 t² ≤ 360 delta² = 53361/250000000 < 1/1000`.
   Maximality applies to every complementary corner only after the physical
   R/q identity and complementary indexing are supplied. The half-row sum bound
   follows from two actual row orthogonality equations, not an assumed nearby
   Fourier carrier.

2. **Equilateral triples and finite orientation pairing.** Squaring the reverse
   triangle estimate gives `|Re(u)+1/2| ≤ s+s²/2`. The rational derivative margin
   for arccos and the opposite-imaginary-sign argument are valid. Two approximate
   rows with exactly one matching orientation have inner product modulus three,
   contradicting the `8h` bound. A class of three would contradict
   `2 ≤ 3*(8h/3)`. Consequently all four rows form two classes of two; the
   midpoint phase has distance at most `arcsin(4h/3) ≤ 2h` from each target.
   This establishes the required finite pairing without guessing a family.

3. **Matrix error.** For each of the four non-binary rows the squared phase-error
   budget is `(2+4+9+9)h² = 24h²`. The binary row contributes `10 delta²`.
   Dividing the total by six gives `988969/6000000000 < 1/75²`. Chord distance is
   bounded by phase distance. The rank-one projector distance is bounded by
   matched unit-vector distance, hence by this normalized Frobenius bound.

4. **Four witnesses and Laurent bound.** I regenerated the polynomial from
   permutation sums independently of the author's verifier. `D=q-conj(q)` has
   48 terms, coefficient l1 norm 48, and phase-derivative coefficient l1 norm 48
   in each of the nine entries. Therefore the corresponding values for Im(q)
   are 24. The selected dephased witnesses have total coordinate phase error
   `h+h+2h+2h=6h`, so the resulting bound is `0.4618 < 1/2`. All four sign cases
   of the displayed sine identity checked exactly modulo `omega²+omega+1`.
   The four signs and absolute values exhaust the eight independent signed sums.

5. **Rounding and Fourier lattice.** The arcsin constant gives total residual
   less than `17/100`. Since `A+B=C`, the rounding discrepancy is an integer
   multiple of pi whose modulus is less than pi; it is zero. The stated
   sixth-root parameters reduce, by sign changes inside row pairs and a cyclic
   right-column permutation, to `F2 tensor F3`. Both given permutations are
   bijections modulo six and their product identity checks in all 36 entries.

6. **Required projector metric.** The constructed carrier has the repeated-row
   form `(v_s | ±lambda_s v_s)`. The exhibited row phase `exp(i d_s/2)` makes
   both column triples have overlap modulus
   `|(1+exp(i d_alpha/2)+exp(i d_beta/2))/3|`. Expanding this expression gives
   the bound `(d_alpha²+d_beta²-d_alpha*d_beta)/18`, exactly
   `(a²+b²+c²)/108`. Its rational cap is below `1/60²`. This is the actual
   maximum-column projector metric, with no use of transpose invariance.
   The two distance bounds sum to `3/100 < 1/30`.

The source carefully keeps the distinction between an analytic proof proposal
and a connected Lean proof. I found no unproved geometric premise hidden inside
the analytic chain. The important remaining work is formalization, particularly
the physical R/q identity, phase/orientation existence, finite matching, Laurent
Lipschitz and witness identities, and projector composition. Applying the result
to the 36 boxes additionally needs their formal geometry bridge; applying a
four-MUB exclusion additionally needs formal admission of ClusterTube.

`independent_review_checks.py` uses only exact rational arithmetic, finite
modular checks and symbolic polynomial expansion. These are independently
replayed research checks, not substitutes for kernel checking.
