# NoFourMUBS audit findings

The proof has a useful separation between geometric reduction, local exclusion, and finite coverage. Its main Lean statement accurately exposes the remaining atlas obligation. The largest opportunities are to replace repeated algebraic checks by symmetry, reduce the imported proof surface, and make the external verifier fail reliably when its evidence is incomplete or stale.

The full Lean build and all 264 audited axiom declarations passed with standard axioms only. The fresh Python replay passed all 18 checks, including all 12,021 records and the separate Tao, Fourier, and maximum-anchor obligations. No failed mathematical check was found in that replay. The formal endpoint remains conditional on `AtlasCertificate`; the complete atlas has not been assembled into an unconditional kernel theorem. Two real defects in the Julia driver can misreport verification success and should be fixed before relying on unattended replay.

The actual atlas has 12,021 records and 699,292 listed transfer targets. Its compressed certificate is 16,188,089 bytes with SHA-256 `690107dc7682f2d5ccf52e2721799b4a29af97b526c2e62ebe216b3ce17d5d71`, matching the repository receipt. Every record is marked closed. Radius counts are 10,497 at 0.08, 1,029 at 0.063, 419 at 0.05, and 76 at 0.04. Structural checks of the actual transfer indices, signs, permutations, finite phases, and frame dimensions passed.

## What the Lean result establishes

`Basic.lean:22–36` models an orthonormal basis as a square unitary matrix and unbiasedness as squared overlap `1/6`. The existence statement quantifies four pairwise unbiased bases. `exists_quartetEdge_of_fourMUBs` explicitly changes to the first basis and rescales the second. This is an appropriate formal target for the stated dimension-six problem.

The endpoint is `lean/NoFourMUBs/Final.lean:28`. Its input at `MainTheorem.lean:35` is a proof-bearing structure, not just a serialized finite table. For example, `RecordCert.hproj` and `hσ` quantify over real matrices; `StageCCert.htree`, `hleaf`, `hO`, and `hU` contain semantic coverage and exclusion propositions. The finite numerical data and proved checker lemmas must establish these fields. An axiom audit of the conditional theorem cannot establish that this structure is inhabited.

The main dependency chain is:

| Obligation | Formal endpoint or interface | Concrete evidence |
| --- | --- | --- |
| Four bases imply a quartet edge | `Basic.exists_quartetEdge_of_fourMUBs` | Kernel proof |
| Critical seed census | `Step1Geo.maximumCensus` | Kernel proofs and exact certificate replay |
| Matched side existence and flatness | `L1.matchedExistence` | Jacobian and topology proofs; kernel-checked polynomial identities |
| Converse and strict-corner reach | `PRM.nonmatched_tao`, `PRM.strictCornerCoverage`, `PRM.densityReach` | Kernel proofs and their algebraic checks |
| Local exclusion in one ball | `RecordCert.excludes` | General kernel proof; per-record evaluations external for the full atlas |
| Boundary transfer and coverage | `BoundaryCover`, `recordClopen_of_atlas`, `coverage_of_matched_density` | General kernel proof plus concrete transfer checks |
| Tao, maximum anchor, Fourier membership | `AtlasCertificate.tao`, `.anchor`, `.fourier` | Separate concrete checks; partial kernel-atlas implementations |

A textual scan of the local production Lean sources found no executable `sorry`, extra `axiom`, `native_decide`, or unsafe bypass. Exact polynomial data are checked through proved evaluation lemmas and `decide +kernel`. That is a sound design distinction: reducing these certificates would improve size and readability, but they are not currently unchecked mathematical assumptions. See `VERIFICATION.md` for the build and axiom results actually obtained.

## High priority verifier findings

### Stale Julia receipts can certify a changed invalid input

**Priority P1. Reproduced.** `proof/independent/check.jl:39–51` and `82–93` read `step3.tsv` and `step4.tsv` into dictionaries keyed only by record index. Records present in those dictionaries are skipped. There is no binding to the certificate, checker sources, Julia environment, or interval versus `--fast` mode.

Reproduction: copy the genuine `results_v4` receipt tables into a new output directory; change record 877's frame to 144 zero integers and remove all its transfers; run the default Julia driver on the changed certificate with that directory. The driver reports:

```
SUMMARY: 12021 / 12021 closed records PASS.
VERDICT: the certificate is complete and every check passed (Steps 3-4 and nonemptiness).
```

A fresh Julia evaluation of record 877 returns `ok=false`, `Gram matrix not certified positive definite`. A fresh Python certification of that record also fails with a singular Gram matrix. Thus this is a demonstrated false success of the resume workflow. It does not show that the original, unmodified atlas fails.

**Fix:** bind every resumable run to a versioned manifest containing the certificate digest, checker and converter source digests, project/manifest digests, Julia version, replay mode, and selected scope. Refuse old caches without such a manifest. Check the manifest before loading any receipt. Include the binding in the final result, reject duplicate or unknown record IDs, and write receipts atomically. Changing any bound input must start a fresh run. Never describe cached `--fast` results as newly interval-checked.

### Failure does not produce a failing exit status

**Priority P1. Reproduced.** `proof/independent/check.jl:156–166` prints a verdict but neither returns a failure status to the command line nor throws on an ordinary failed certificate.

A one-record input containing the genuine Fourier record, marked closed but with no transfers, passes Stage 3 and Fourier membership and fails boundary coverage. The report says `0 / 1 closed records PASS` and `not a complete certificate`; the process exits **0**. A shell, CI job, or batch scheduler relying on exit status will misclassify this run.

**Fix:** compute a structured verdict and exit nonzero on failed certification. Provide an explicit partial-check mode for the existing fixture tests, since they intentionally contain non-closed targets. A successful partial check must have a distinct result from complete coverage. Update `tests/run_tests.sh` accordingly instead of simply adding `exit(1)` and breaking its intended fixture workflow.

The same verdict code needs a scope correction. `--limit K` truncates `closed` at line 27, while `allclosed_targets` at line 126 tests stored closed flags, not whether every target's boundary was checked in this run or in a correctly bound cache. A complete certified subatlas must be closed under its actual transfer targets, with boundary proofs for every member. For full certification, require that condition or verify every marked-closed record. Never promote an arbitrary limited sample to a complete-atlas verdict.

## Formal statement and documentation health

### Connectedness is a paper route rather than the assembled Lean route

**Priority P2. Source-confirmed.** The documentation says connectedness of the non-Tao quotient is proved in Lean. In the inspected source, `Step2/Connected.lean:57` defines `NonTaoPreconnected`, and line 61 proves coverage **assuming** it. No production declaration proving that proposition was found.

The actual `Final` chain uses `coverage_of_matched_density` in `Step2/Statements.lean:274`, which pulls a clopen covered set back to the strict seed domain and applies the compact-superlevel maximum lemma. It then covers the matched image, its conjugate, and the Fourier class. This is a sufficient formal route and does not leave connectedness as a hidden assumption of `Final`.

**Improvement:** describe this direct route as the Lean proof of record. If standalone quotient connectedness is wanted, expose it as a separate theorem and formally supply the joining argument at F6. Do not remove `.anchor` merely because the alternative connectedness theorem only uses `.fourier`: the actual maximum-propagation route uses both fields.

### The independent Julia checker does not check every field of AtlasCertificate

**Priority P2. Source-confirmed.** Julia's driver checks local records, boundaries, and Fourier nonemptiness. It does not check the explicit maximum anchor H0 or the separate zero-dimensional Tao record. Those are handled elsewhere, notably `proof/atlas/anchor.py`, `tao.py`, and the experimental `KernelAtlas/Special` and Tao modules.

The phrase “two independent checkers confirm the atlas inequalities” is supported for the 12,021 non-Tao records. Saying both independently construct or validate every field of `AtlasCertificate` is too broad. Maintain an explicit field-to-checker table and add an independent check of the special fields if that stronger claim is desired.

### Default CI does not check the final theorem

**Priority P2. Source-confirmed.** `lean/lakefile.toml` defaults to `NoFourMUBs` and `Step1`. `.github/workflows/ci.yml` calls `check_axioms.py` without `--full`; its header explicitly excludes the full targets. `Complete`, `Final`, and the most expensive identity modules can therefore break while ordinary CI remains green.

**Improvement:** make a required release gate build and audit `Final` against the pinned dependencies, and rerun the complete concrete certificate from a fresh output directory. Keep a fast developer target. Separate the optional FourierVanishing audit from the main theorem audit so the release gate's scope is clear. A source scan or the 248 default axiom checks cannot substitute for elaborating the actual endpoint.

## Algebraic reductions with the best payoff

### Replace Fourier matching enumeration by structural cases

`PRM/FourierMatch.lean` currently checks 200 identities and obtains the remaining 200 by complement conjugation. The symmetries of `K(d) = [[F,F],[FD,−FD]]` give four orbits of positional corners, of sizes **16, 24, 144, 216**. Three representative signatures are constants: **−81, 0, −24**. In the remaining case, the complementary block is monomial-equivalent to the conjugate block. Thus no large collection of Laurent identities is needed.

`ALGEBRAIC_PROOFS.md` gives the transformations and the explicit complementary-block equivalence. `scripts/fourier_orbits.py` exhausts the 400 combinatorial cases and verifies the representative algebra exactly. This is a mathematical replacement proof with exact replay; a complete replacement of the existing Lean `FourierMatch` module is not supplied. Its formal port needs general covariance lemmas and the small orbit classification.

### Reduce matched flatness from four weighted defects to one

The defect matrix is `Δ = |D|² − 1`, and the weighted defect matrix is `W = C* Δ B*`. Permuting the two nonbase rows and columns of the seed preserves strictness, normalized sides, and matching. If `E′ = P E Q`, `B′ = P B`, and `C′ = C Q`, then `D′ = D` and `W′ = Q* W P*`.

Consequently a universal theorem for `W11 = 0` gives all four nontrivial entries by symmetry. The current eight coefficient checks can be replaced by the two coefficients for that entry. Specializing the reduced moment data also offers a route from 36 to 18 horizontal checks and from 36 to 18 vertical checks. These reductions require restructuring `FlatBridge.W_zero` around a single-entry theorem before transporting it; deleting the other checks first would leave the current theorem unsupported.

This has better likely payoff than replacing a kernel identity checker wholesale. `FlatData.lean` is about 438 KiB and the repository identifies the flatness checks as a principal build cost. The 75% reduction is a count of final scalar identities, not a measured 75% build-time or source-size saving.

### Reuse the existing Record decomposition

The supplied `lean/RecordExcludes.lean` proves the same exclusion statement using `C.decomp` once. It eliminates the repeated orthogonality, Pythagorean decomposition, quadratic-root bound, and radius monotonicity work from the original exclusion proof. The theorem body and surrounding signature shrink from 68 to 45 lines in the extracted comparison. The standalone replacement compiled with standard axioms, and the patched complete module also elaborated in an isolated copy. `patches/record_decomp.patch` applies the corresponding edit for review; it has not been applied to the user's project.

## Remaining opportunities and limits

The zero-J square sum is now the principal remaining large strip certificate, about 211 KiB of generated data. Replacing it is worthwhile, but the current algebra is not merely duplicated work. The existing handoff reports eleven signed weighted sums that vanish identically on this stratum. That rules out those particular proposed equations; it does not prove that every possible linear signed invariant is useless. A proof from mixed swap corners or a smaller quadratic identity is a research target, not an established replacement.

The existing Fourier joining path also gives a way to discharge the numerical `.fourier` field: after the matched and conjugate-matched images are covered, their closure contains F6. The explicit cross-ratio and limit proof is included in `ALGEBRAIC_PROOFS.md`. This needs a new Lean joining theorem and a later assembly module to avoid an import cycle. It does not remove record 877 or the `.anchor` field.

The normal-bound root can be replaced in a redesigned certificate interface by a rational quadratic barrier. The supplied Lean lemma proves the comparison without square roots. The boundary shell can also use the Pythagorean upper bound `‖Tη‖ ≤ R`, not just the weaker triangle bound `R+n`. `BoundaryK` already uses the sharper inner shell; adding the outer bound requires changing `BoundaryCover.hcover` and its producer/consumer proofs. These are improvements to certificate format and size; record-count savings have not been measured.

The import closure of `Final` contains **186 modules and 32,588 nonblank lines**, excluding Mathlib and Lean core: 130 local modules/22,445 lines and 56 upstream modules/10,143 lines. Fourteen local source files import the whole of `Mathlib`. Narrowing imports at the base of the dependency graph may substantially lower memory; changing only a leaf while `Basic` still imports everything will not. Preserve the upstream interface and do not copy thousands of declarations simply to reduce an import count.

Following all listed transfers from records 877 and 9319 reaches every one of the 12,021 records. A smaller subatlas cannot be obtained by just taking the current target-closed reachable set of the anchors. Pruning requires new transfer witnesses, larger certified regions, or different algebraic local exclusions. A graph component alone is not a boundary-cover proof. A concrete pruning experiment is to record which targets certify each accepted boundary leaf, select a smaller witness family covering every leaf, then recompute reachability from the anchors and rerun the restricted certificates. This may remove redundant transfers; record-count savings require the resulting selected family to close under all remaining coverage obligations and have not been measured.

No atlas-free global exclusion follows from the existing local Fourier/product results. The atlas-free study (not part of the proof) leaves the global exclusion open. A connected parameter space does not make “no quartet extension” a clopen property by itself, and a maximum on a constrained triple component need not be an ambient maximum of the four-variable seed invariant. Retain the atlas until a genuine global argument closes that gap.
