# Verification receipt — 30 September 2026

**Status: PASS** for the finite arithmetic, certificate regeneration, predicate controls, and identified repository source hashes.

The recorded run used Python 3.13.5 and took 0.989 seconds. All mathematical acceptance decisions used arbitrary-precision integers and exact rational arithmetic. Clock readings are metadata only.

| Check | Result |
|---|---|
| Complementary square identity | Regenerated exactly from independent Gram and determinant formulas |
| Signed determinant | 48 coefficients, each +1 or -1; formal anti-conjugation verified |
| Cayley substitution | All five Laurent exponents -2,...,2 checked over Gaussian integers |
| Sixth-root determinant lattice | 1296 of 1296 corners checked |
| F6 positional corners | All 400 checked and assigned to six disjoint full frame classes |
| Seed R polynomial | 2,083 terms; exact phase Lipschitz bound 19,537,920 |
| Effective-minimum parameters | n=26, d=38, s=883, H=2^34 |
| Exact scaled-number comparisons | 540 cross-checks against ordinary Fractions |
| Malformed-input controls | 7 rejected |
| Cutoff controls | Below accepted; equality and above rejected |
| Certificate tampering | Rejected |
| Identified source hashes | 16 of 16 matched |
| All original ZIP files | 64,212 compared; none modified or missing |

Arithmetic certificate SHA-256:

`94e2a53221b461d009bb64713ee7db27c33d5f79df6bb979daacc458af523c8f`

## What the receipt does not assert

This is not a new global numerical cover, nor a formal replay of every analytic dependency. Accepted strict-corner coverage remains an explicit assumption. The published effective-minimum theorem and the retained ChartConditioning and ClusterTube proof packets are identified dependencies, not re-proved by this script.

The positive predicate control uses an exact F6 seed point with R=0 and a valid enclosure [0,m/2]. It tests the API; it is **not** a new positive-width or positive-R campaign-cell certificate. No new production-width class-(1,2,2,4) cube has been certified.

The proof and all bounds are in `PROOF.md`. Machine-readable details are in `RECEIPT.json`, `INPUT_INTEGRITY_RECEIPT.json`, and `certificates/arithmetic.json`.
