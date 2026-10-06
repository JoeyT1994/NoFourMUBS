# Phase-two result

**48 new kernel-checked declarations; actual physical signed-corner bridge closed. Full radius theorem remains open.**

The main checked declarations are in `Centiradian20261006.SignedDeterminant`:

- `rawDet_eq_fast`: the literal 48-term expression equals the fast expression minus its conjugate for unit `a,b,c` and arbitrary `d`.
- `complex_algebra_identity`: the corrected negative-`J` Gram polynomial is minus that expression squared on the unit four-torus.
- `cornerNormalize_eq_source_dephasing`: physical normalization uses the native four-factor expression exactly.
- `physical_signed_square_complement`: for every actual physical Hadamard matrix and increasing row/column triples, the signed residual squared equals the complementary corner invariant.
- `physical_maximal_signed_square_bound` and `physical_maximal_signed_abs_bound`: maximality yields the required necessary residual bounds for all positional corners, including maximality ties.

The last theorem assumes only `Physical H`, `Maximal H`, positive `leadingR H`, and increasing triples. It does not assume a seed chart, a polynomial certificate, a classification, or an exclusion hypothesis.

The aggregate check is `check-audit-01`, source SHA-256 `2d3048616a266e23277469b99d2b1b8c9334764ec84b93c27539895be7075319`. All 48 axiom lists contain exactly `propext`, `Classical.choice`, `Quot.sound`. The successful physical module is `check-corner-01`, source SHA-256 `0f1d767a088e9f7c8fac44b3c169fff8aeff09819e84bb015fd960fffd881994`.

Polynomial generation is not trusted. Every coefficient, denominator binding, and assembly identity is checked by Lean. The nine coefficient modules avoid the fixed-heap failures of the earlier monolithic expressions; successful checks preserve the 2304 MiB heap, 2816 MiB RSS, one-thread, time, and 8 GiB free-disk limits. All old attempts and receipts remain local.

Publication files are listed in `PUBLISH_FILELIST.json`; the portable runner accepts the pinned Lean/Mathlib paths and the pinned first-wave physical source directory. It compiles all necessary dependencies, checks source hashes, and audits all 48 declarations. Only its syntax/CLI has been separately tested; the existing serialized guard supplied the actual proof checks.

Still open: complete physical model chart and branch cover; actual seed-angle bounds (including any sharper Laurent certificate); reconstruction/equality residuals; interval and automatic-differentiation soundness; actual local radial-contraction certificates; complete global and local terminal coverage; and their assembly into the punctured-radius exclusion for both seeds. The formal physical bridge here closes one dependency and does not close a radius theorem. Root's scoped semantic review is separate; the additional independent packet/off-unit review remains pending. First-wave source hashes are unchanged. No registry mutation or worker self-admission occurred.
