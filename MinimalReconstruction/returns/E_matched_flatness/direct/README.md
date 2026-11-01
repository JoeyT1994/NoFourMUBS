# Direct third-moment proof and exact certificates

Read `DERIVATION.md` for the proof. The small proof replaces an unweighted
fourth-moment sum by four invertible-coordinate weighted defects. It proves
uniform matched flatness from eight rational zero identities.

## Replay

From this directory run, in order:

```
python3 verify_universal_third.py
python3 verify_third_moments.py
python3 verify_certificate_slices.py
```

The first and third scripts require only the Python standard library. The
second requires `python-flint`, as pinned in the root requirements file.
Every script exits nonzero on failed acceptance and rejects optimized Python
(`python -O`), because its exact checks use assertions.

`verify_third_moments.py` builds the four-variable rational targets, checks
zero numerators, reconstructs all coefficient data, and compares it exactly
with `third_moment_certificates.json.gz`. It does not trust a stored `PASS`
flag or stored zero residual. The optional `--write-certificates` regenerates
that file from the same exact target calculation.

`verify_certificate_slices.py` independently checks all integer coefficient
sums, denominator cofactors, and cleared-summand products. Its optional
`--sum-only` omits the cofactor products and is a diagnostic convenience;
the full no-argument replay is the required acceptance mode.

## Certificate format

The gzip file contains ordinary JSON, with format
`matched-third-moment-cofactors-v1`. Its 255 unique polynomials are stored
as integer-coefficient slices in `a`:

```
P(a,b,c,d) = (1 / scale) * sum_s a^(s.a_power)
               * sum_[bexp,cexp,dexp,coeff] coeff*b^bexp*c^cexp*d^dexp.
```

Here `scale` is a positive integer. A polynomial is referenced by its
zero-based `id`; each `a_slices` entry has at most 1,730 monomials in the
three remaining variables. No floating-point coefficient is stored.

For each of the eight rational residuals, the identity record specifies
the common denominator `D`, the positive integer `integer_scale=L`, and
one summand record per rational term `n_i/d_i`. The polynomial IDs specify
the exact cofactor `C_i` and integral cleared summand `I_i`, satisfying

```
D = d_i C_i,
I_i = L n_i C_i,
sum_i I_i = 0.
```

These are the precise identities independently checked by the integer
verifier. The coefficient slices give 110 three-variable zero identities
over all eight residuals. The scalar terms `n_i/d_i` are constructed in
`verify_third_moments.py` from equations (4.3)--(4.6) of the root report;
the same script compares every stored polynomial and cofactor with that
construction. Thus the coefficient data are bound to the requested
mathematical expressions, not merely to an unrelated zero sum.

There are 136 distinct denominator/product identities after duplicates are
removed. The full standard-library replay initially took 9.86 CPU seconds
and about 296 MiB peak RSS. The arithmetic check before certificate export
took approximately one CPU second. Current replay receipts give the final
measurements, including serialization and certificate comparison.

## Lean proof plan

The phase-side formula checks and matrix contractions are small universal
Laurent identities. Port them using explicit expansions and `ring` after
unit phases have been inverted. For the four seed variables, discharge
the original phase-monomial, `g`, and `P_j` denominators with `field_simp`.
The stored cofactors supply each common-denominator multiplication.
Then prove the 110 coefficient identities independently in
`Q[b,c,d]` with `ring`, and reconstruct their finite polynomial sums in
`a`. This avoids asking Lean to normalize the full four-variable residual
in one step. The final matrix argument uses row and column defect sums,
the eight scalar identities, and invertibility of the two side matrices.

No compiled Lean extension is asserted by this folder.
