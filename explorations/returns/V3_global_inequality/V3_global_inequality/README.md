# Global inequality certificate

For every complex Hadamard matrix H of order six, in the unit-entry normalization,

\[
\boxed{S(H)\ge100L_{\rm tot}(H).}
\]

Read `REPORT.md` for the theorem, proof, status labels, and resulting corner margins.

Run every exact finite certificate with:

```bash
python3 verify_all.py
```

Python 3.10 or later and its standard library suffice. A complete run takes about two minutes on the verification host. The substantial step regenerates all required orthogonality relations, including the source's single-matrix nonnegative identity. No numerical optimizer, saved moment table, sampled matrix data, network access, MUB atlas, or Stage C computation is required.

The proof factors through the nonnegative symmetrized square-product defect:

\[
L_{\rm tot}\le6D_{\rm sym},\qquad S\ge600D_{\rm sym}.
\]

The first comparison has a three-square identity. The second has a fifteen-square certificate on the non-Tao locus, with all integer coefficients printed in `S_D_PROOF.md` and recorded in `S_D_certificate.json`. The non-Tao Fourier-vanishing theorem is the written geometric input; its single-matrix certificate is replayed. Tao's exceptional class is checked separately and exactly.

`verification/SUMMARY.json` and the four text logs record the packaged replay. `AUDIT_GLOBAL_SOS.md` records a separate audit of the normalization, exact arithmetic, and global scope.

The main inequality is independent of the annulus theorem supplied in the original brief. Combining it with that theorem and the supplied group-rounding result gives

\[
d([H],[F_6])\ge0.1\implies\max_C R_C(H)\ge0.04.
\]

The stronger rational global coefficient certified by the same data is
`84684731883192/818002268369`, approximately 103.526280009. Optimality is not claimed.
