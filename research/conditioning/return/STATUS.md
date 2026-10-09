# Status: ConditioningHandoff return

## Main verdict

**Task A is proved analytically, conditional on the MC1–MC4 reconstruction
inputs that the brief explicitly permits.** The proof needs no atlas,
positive-sheet transport, numerical rank threshold, generic-density premise,
or global connectedness argument.

**Task B's sharp constant remains open.** An explicit positive global constant
and explicit strict-corner bounds are proved. The global constant is too
small to be computationally useful. A separate sharp improvement of the
all-flat Hessian constant does improve propagation inside an already
certified ball.

**Task C is partly resolved.** The Fourier and transposed Fourier sectors are
exact equality sectors, intrinsically characterized by ER column/row pairs;
they meet only at the Fourier class. Necessity of an ER pair for spectral
equality is open.

## Analytic results and their dependencies

| Result | Status | Dependencies |
|---|---|---|
| Full Gram identity \(L_H^TL_H=6I-\Re K\); \(K^T=K, KK^*=36I\) | Proved | Hadamard equations only |
| Equivalence, conjugation and transpose invariance | Proved | Same; normalization tracked explicitly |
| Standard defect equals the horizontal kernel dimension | Proved | Explicit gauge maps; literature used only for terminology |
| Side identity \(\det(A_B)^2=\mathscr R(BB^*)/64\) | Proved by exact Laurent identities | Arbitrary flat \(3\times3\) side; no classification |
| A strict physical corner forces \(\dim\ker J\le4\) | Proved analytically | Side identity and Hadamard equations |
| Every strict non-Tao completion has a local analytic four-parameter family | Proved analytically under stated inputs | MC2–MC4; includes \(d_F=0\) sign switches |
| Every non-Tao Hadamard has rank 21 | Proved analytically under stated inputs | MC1–MC4 and exact Fourier spectrum |
| Dephased non-Tao set is an analytic four-manifold, including \(F_6\) | Proved analytically under stated inputs | Same; no assumed integration of Fourier tangents |
| Explicit \(R,g\)-dependent bound and \(\sigma_{21}\ge R^{3/4}/4700\) | Proved analytically | One strict physical corner; no classification |
| Optimal all-flat Hessian bound \(6/\sqrt5\) | Proved analytically | Flatness and horizontal directions only |
| Tao horizontal phase isolation radius at least \(\sqrt{5/2}\) | Proved analytically | Exact Tao spectrum and new Hessian bound |
| Uniform \(\sigma_{\min}^{+}\ge2^{-N}\), \(N=11050\cdot168^{50}+36\) | Proved analytically under stated inputs | Rank theorem and JPT Theorem 1; exact degree/height arithmetic |
| ER row/column pair iff transposed/untransposed Fourier sector | Proved analytically | Elementary orthogonality and zero-sum phase triples |
| Fourier and transposed Fourier sectors intersect only at \(F_6\) | Proved analytically; finite permutations replayed | Explicit families and ER criterion |

The raw non-Tao Hadamard set has dimension **15**. The four-dimensional
statement is in a fixed dephased or horizontal gauge. The full quotient by
row/column permutations may have finite isotropy; its smooth-manifold
structure is not asserted.

## Exact algebraic spectral certificates

These are symbolic or algebraic calculations for the indicated whole domain,
not floating-point numerical evidence.

| Matrix or family | Horizontal spectrum of \(J^TJ\) | Scope |
|---|---|---|
| Affine Fourier family and its transpose | \(0^{[4]},3^{[4]},9^{[12]},12^{[5]}\) | Every pair of unit parameters; supplied proof independently replayed |
| Tao | \((9/2)^{[16]},12^{[9]}\) | Exact third-root matrix |
| Diţă family (D(c)) | \(0^{[4]},6^{[10]},10^{[6]},12^{[5]}\) | Entire unit parameter circle, via Laurent matrix identity |
| \(F(i,i)^T\) | Fourier spectrum above | Exact equality witness inequivalent to every member of the stated untransposed family |
| Björck circulant | Full spectrum in `proofs/EQUALITY_AND_DITA.md`; minimum \(3(\sqrt3-1)\) | Supplementary single nonaffine example |

The Diţă spectrum is obtained from a degree-four annihilating polynomial
and exact trace identities. The optional Björck calculation is not used in
the rank or global-bound proofs.

## Numerical evidence, separated from proof

The requested supplied survey was run with its original deterministic RNG
seed. It reproduced:

| Survey set | Reported rank | Reported least positive singular value |
|---|---:|---:|
| 243 random non-Tao solutions | 21 | 1.73344–2.41788 |
| 57 random Tao hits | 25 | 2.12132 |
| 200 affine Fourier samples | 21 | 1.73205 |
| Exact-form Tao evaluated numerically | 25 | 2.12132 |
| 2,000 supplied atlas centers | 21 | 1.73205–2.44897 |

These are binary64 exploratory observations. None is an acceptance condition
in `verify_all.py`. The centers are not a covering certificate, and an
approximate matrix is not silently treated as an exact Hadamard.

## What is not proved or replayed

1. The sharp global bound \(\sigma_{\min}^{+}\ge\sqrt3\).
2. Completeness of the ER/Fourier equality locus.
3. A useful order-one global analytic conditioning constant explaining the
   original atlas radius. The value \(2^{-N}\) is a literal positive constant,
   not a practical substitute for the sharp conjecture.
4. The imported MC1–MC4 proof dossier. `ASSUMPTIONS.md` reports it completed,
   but the cited `Proofs/` files are absent from the attachment.
5. Any atlas record or global atlas coverage certificate. The attachment
   contains a sample of floating-point centers, not the certificate.
6. The no-four-MUB proof. The supplied `MINIMAL_PROOF.md` itself marks the
   atlas re-certification as in progress after the 9 October Stage C
   correction; this return neither resolves nor relies on that computation.

No counterexample to the rank or sharp singular-value conjecture was found
or certified. The transposed Fourier witness is a counterexample only to
restricting all equality cases to the stated **untransposed** family under
the stated equivalence relation.

## Verification

Run `python3 verify_all.py`. The runner checks every exact script, exits
nonzero on any failure, and writes `verification_receipt.json` and
`verification_receipt.txt`. Those receipts identify the precise script
hashes and successful checks. All finite acceptance decisions use exact
arithmetic. The analytic proofs and explicitly imported hypotheses remain
part of the trust boundary.

The new sharp Hessian constant gives, for a valid normal center bound

\(\sigma\ge1.70\) and radius at most (0.08), propagation above (1.485).
This is an analytic implication for already certified records, **not** an
independent assertion that the atlas meets those prerequisites everywhere.
