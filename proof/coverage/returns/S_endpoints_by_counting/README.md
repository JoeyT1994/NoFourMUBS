# Handoff S — endpoints excluded by counting

**Result: proved.** A universal quadratic rule on the ten corners containing one fixed column replaces both endpoint exclusions in the classified-strip coverage argument.

The rule is
\[
 \sum_{C\ni c}(X_C^2+Y_C^2+Z_C^2)
 -6\sum_{i\ne c}\left(\sum_{j\notin\{c,i\}}J_{\{c,i,j\}}\right)^2
 \ge162.
\]
The classified types and the first-moment count force the same expression to be at most 158. The exact separation is at least 4.

## Contents

- **PROOF.md:** complete definitions, universal identities, candidate-type bounds, the finite contradiction, and integration scope.
- **verify.py:** dependency-free exact replay.
- **verify_universal_algebra.py:** independent sparse-polynomial checks of the universal algebra.
- **VERIFICATION.json:** the recorded replay, including all finite counts and signed-support histograms.
- **INPUTS.json:** source provenance and the precise classification import boundary.
- **BRIEF.md:** the supplied task.
- **SHA256SUMS.txt:** hashes of the package files.

## Replay

Run \(\texttt{python3 verify.py}\). No third-party packages, floating-point calculations, or numerical tolerances are used. Running with \(\texttt{python3 -O verify.py}\) retains the verification checks.

## Scope

The new rule is universal for phase-orthogonal \(3\times6\) strips. Its application uses the candidate portion of the supplied critical-strip classification and the existing upstream geometric/Fourier routing. Neither old endpoint exclusion is an input. This is a paper proof and exact arithmetic certificate; no compiled Lean port is claimed.

