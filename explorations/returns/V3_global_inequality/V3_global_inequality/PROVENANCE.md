# Provenance and mathematical dependencies

## New result in this return

The global comparison `S >= 100 L_tot` is assembled from two new exact identities:

- `6 D_sym - L_tot` is a sum of three positive covariance squares;
- `818002268369 S - 508108391299152 D_sym` is a sum of fifteen positive weighted squares on the non-Tao locus.

The latter weights and polynomials were found by numerical exploration, then reconstructed over the rational numbers. Numerical exploration is not an input to any delivered verifier. All certificate coefficients, every polynomial expansion, and every final identity are checked exactly.

## Upstream single-matrix theorem and code

OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, September 24, 2026, Theorem 1.1, Sections 3–4, and Appendix A.

Pinned source commit:

`1581d4cbdd69a0faf34b2089614fe2a814316a6a`

- [Paper](https://raw.githubusercontent.com/openai/math/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf)
- [Original exact verifier](https://raw.githubusercontent.com/openai/math/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/verification/verify.py)
- [Repository](https://github.com/openai/math)
- [Repository license](https://github.com/openai/math/blob/main/LICENSE)

`moment_engine.py` is extracted and adapted from the single-matrix portion of that verifier. It contains only the exact moment machinery through the single-matrix identity check. The unrelated multi-matrix and MUB calculations are omitted. The delivered version adds attribution and explicit assertions for the identity free-coordinate block and support of reconstructed substitutions. Its file header identifies the source and adaptation. The original Apache-2.0 license is included as `LICENSE`.

`verify_S_D.py` regenerates the source's single-matrix relation table and replays its exact nonnegative identity. It then generates the additional order-twelve relations and checks the new certificate. The source's written classification of the cubic alternative is a mathematical theorem input; no claim is made that this written argument has been formalized in a proof assistant by the delivered code.

The proof uses no MUB atlas, Stage C exclusion, covering data, or classification into continuous Hadamard families. It uses the source's single-Hadamard Fourier-vanishing theorem only.

## User-supplied mathematical inputs

The definitions of S, the universal signature/discriminant identity, and the normalization of `L_tot` are those in `V2_far_region_inequality_brief.zip`.

The practical corner-margin corollaries additionally use the written group-rounding theorem in `context/GROUP_ROUNDING.md`. The final margin 0.04 also uses the annulus theorem stated in `context/PRACTICAL_ANNULUS.md` and in the brief. Their copies are included under `inputs/` for reference. The global inequality itself does not use either result.

The original annulus verifier is not included in the supplied archive, so the present return does not claim to replay it. The standalone margin `3/202` for distance at least 0.1 uses group rounding and the new inequality alone.

## Audit and reproducibility

The four delivered verification scripts use only Python integers, `fractions.Fraction`, and finite symbolic expansions. No serialized Python object, numerical moment table, floating-point bound, or solver status is trusted. `verify_all.py` runs them from this directory and records outputs in `verification/`.

`SHA256SUMS.json` records the packaged files, excluding itself. The manifest is an integrity aid; mathematical verification is performed by the replay scripts.
