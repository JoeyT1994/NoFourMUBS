# Q — Fourier anchor: proved

For the positional corner specified in the brief,

\[
R(t)=144\sin^2t\,(1+\cos t)^2
    =2304\sin^2(t/2)\cos^6(t/2).
\]

Thus **Lemma Q holds with \(t_0=\pi\)**. The exact calculation also supplies
the positive horizontal signature and the negative vertical signature,
so this curve gives an explicit positive matched completion.

## Contents

- `PROOF.md`: the short discriminant proof, explicit matching signs, and the
  compactness argument that propagates one anchor using the existing
  transport of the 18 positive local maxima.
- `verify.py`: a standalone exact checker using Python's standard library.
- `verification.log`: the completed run; all 62 exact identity checks pass.
- `INPUT_BRIEF.md`: the supplied task, unchanged.
- `SOURCE_NOTES.json`: input hashes and the source of the project's
  discriminant convention.
- `MANIFEST.sha256`: hashes of the other files in this directory.

## Replay

Run from this directory:

```sh
python3 verify.py
```

No third-party packages or floating-point calculations are used. Identities
are checked in
\(\mathbb Z[\omega,z,z^{-1}]/(\omega^2+\omega+1)\), with the involution
\(\omega\mapsto\omega^2\), \(z\mapsto z^{-1}\).

The checker constructs the original 6-by-6 Fourier-family matrix, performs
the specified permutation and dephasing, and computes the project
discriminant from both complementary Gram matrices. It also verifies the
side signatures and the explicit permutation equivalence of \(K(0)\) to
\(F_6\).

## Integration

The mathematical replacement for the explicit \(H_0\) anchor is supplied.
Its global propagation uses the existing clopenness results, classification
and transport of all positive local maxima, matched-fiber uniqueness, and
the certified Fourier interior property stated in the brief. The Lean
re-plumbing remains the integrator's task, as specified there.
