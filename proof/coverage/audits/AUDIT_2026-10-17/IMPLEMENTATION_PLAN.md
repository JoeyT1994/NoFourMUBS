# Implementation order

## First make certification results dependable

1. Fix Julia's exit status, complete-versus-partial result, and resume binding together. Regressions must include the zero-frame mutation with old receipts, a boundary failure with fresh receipts, switching `--fast` to default mode, a changed checker source, a changed target radius, duplicate receipt indices, and a limited run whose targets lack boundary checks. Existing fixture tests need an explicit partial mode.
2. Publish a machine-readable verification ledger containing the input digest, checker/environment digests, tested record IDs, mode, completion flag, and special-field results. Preserve the existing human-readable report.
3. Require a full `Final` build/axiom audit and fresh full atlas replay for release. The ordinary developer gate can stay smaller. Do not infer success from a scheduler status alone until the Julia exit issue is fixed.

## Then remove repeated mathematical work

4. Apply the small `RecordCert.excludes` refactor. The standalone replacement and isolated patched production module already elaborate. It keeps the statement unchanged and removes 23 lines of repeated derivation in the extracted theorem comparison. Build the edited module together with its downstream theorem before integrating.
5. Implement the Fourier symmetry proof. Keep the existing checked enumeration temporarily as a comparison target, and prove the new theorem without importing its `okQ` results. Audit the new declaration's dependency graph to ensure the certificate was actually removed. Then delete the unused circuit definitions and checks.
6. Refactor flatness around one weighted entry. First prove the generic permutation covariance of the forced block and the side hypotheses. Next specialize `FlatBridge.W_zero` to W11, retaining two coefficient checks and only the necessary moments. Obtain the other entries by symmetry. Only after this passes should three `FlatCheckF` branches and unused moment data be removed. Measure serial wall time, CPU time, peak resident memory, source bytes, and olean bytes against the same snapshot and toolchain.
7. Formalize the existing Fourier joining path in a later assembly module. It can derive `.fourier` from coverage of the matched images and closedness, removing one special numerical obligation. Keep the numerical Fourier check as an independent cross-check. The new theorem must use exact reach and must not create a `Statements`/`Reach` import cycle.
8. Keep the direct ten-corner argument as the production scalar closure. Its existing modulo-five alternative is useful as an independent check, but importing both routes throughout the core adds conceptual and dependency overhead. Split `CoverageGap` and the shared definitions so an unused alternative does not enter `Final` merely through a broad module import.

## Reduce the infrastructure burden

9. Narrow `import Mathlib` at foundational modules, including `Basic`, the upstream interface, and identity-checker foundations. Merely narrowing generated leaves will not remove a transitive whole-Mathlib import. Use a clean dependency cache to measure the result. Keep explicit imports of necessary tactics so proofs remain reproducible.
10. Keep a single representation of positional three-subsets and complements. `PRM.FourierMatch`, `CoverageSumRule`, and `CoverageTenStrip` currently carry closely related enumeration infrastructure; `CoverageGap` needs explicit bridge lemmas between them. A shared `Finset`/embedding API can remove index conversions and make the symmetry proofs easier to state. A finite table may still be the smallest proof term for the 20 subsets.
11. Separate the abstract proof-bearing certificate from serialized data. A raw certificate type should contain rational/integer arrays, enums for signed row/column symmetries, and finite trees. A proved validation function should return the semantic `RecordCert`/`BoundaryCover` objects. The kernel atlas already develops much of this architecture; reuse it instead of designing another checker.
12. Add strict schema checks at the loader boundary: format version, finite phase/radius values, nonnegative radii, unique sequential indices, signs ±1, transpose flag 0/1, genuine row/column permutations, valid target indices, and frame dimensions. The actual pinned atlas passes the structural checks performed in this audit. This is protection for future artifacts and reproducibility, not a reported defect in its present data.

## Keep research targets separate

13. The zero-J branch is the best next target for a genuinely smaller algebraic certificate after the easy symmetry reductions. Try the mixed swap corners using the now-proved nonzero-J classification, or a smaller quadratic sum. Preserve all denominator and endpoint cases. Do not claim the eleven vanishing signed sums rule out every possible new linear invariant.
14. Experiment with the rational normal barrier and the sharper orthogonal shell on a small representative set of difficult records. Compare resulting tree sizes and proof costs before rebuilding the whole atlas. The kernel already uses a sharper inner shell, so measure the incremental effect of adding the outer bound.
15. A smaller atlas needs new geometry or a new set of transfer witnesses. The current target graph reaches all records from the two anchors. Removing an arbitrary SCC, pruning records based only on numerical distances, or extrapolating a local Fourier classification does not prove coverage.
16. Treat complete atlas elimination as a new theorem project. The current atlas-free explorations leave possible additional components and global quartet compatibility unresolved. No simplification above closes those gaps.

## Acceptance criteria

The final exported theorem should retain exactly the intended mathematical statement and display its numerical obligation explicitly until a concrete `AtlasCertificate` is constructed. Every proposed algebraic replacement should elaborate without the old identity theorem in its dependency closure. A release receipt should identify all concrete inputs and distinguish kernel proof, fresh external replay, reused bound evidence, and partial sampling.

The ZIP supplies proposed edits and replacement proofs for review. Nothing has been integrated into the user's source tree, and no build-time reduction from the larger refactorings has been benchmarked.
