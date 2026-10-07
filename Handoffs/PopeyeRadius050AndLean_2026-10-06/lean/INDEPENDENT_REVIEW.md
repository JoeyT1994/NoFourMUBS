# Independent review of exact signed-mean Lean intake

The reviewed definitions and theorem statements correctly provide exact rational interval checking, rigorous phase-input enclosures, and conditional signed-mean exclusions. The concrete data for leaf 66902 are bound to the original certificate, with both its direct and transposed orientations retained. **No physical leaf or uniform-radius exclusion is admitted by this review.** The native polynomial/interval semantics and the physical case binding remain explicit missing premises.

This is an independent source, mathematical-semantics, receipt, import-path, and exact-data review. It did not invoke Lean or edit the worker's files. The successful kernel runs are the worker's recorded guarded runs; this review verifies that they bind the source being reviewed. The earlier failed phase/leaf attempts are preserved and are not counted as successful checks.

## Checked source and execution provenance

`CHECKS.json` records exact source, `.olean`, job, result, stdout and stderr hashes. Each current source matches its isolated build snapshot and both the `JOB.json` and `RESULT.json` source hash. Every custom import resolves through the recorded Lean search path to the audited dependency `.olean`. The aggregate checker output reports Lean `4.33.0-rc2`, and the current Lean executable hash matches the formalization record. The pinned mathlib revision is `51e6992efd06126df61a496bebf8f49482a4e129`, identified by the unchanged runtime/library checkout and inherited record. This review did not launch a separate runtime-version query.

The basic successful records are:

| Module | Successful run | Source SHA-256 |
|---|---|---|
| ExactInterval | check-interval-01 | `0afc1b7b425edf8b9525581206a3d044412b5880cebff29cf6c001f75888ba51` |
| SharpPhaseTaylor, reused dependency | check-existing-sharp | `0fea9d84e79c848a110b99a38286b8690ed5f72a0d468910a6215082aa4a7787` |
| FactoredSignedMean, reused dependency | check-existing-scalar | `be80cad16486045c9c5d8c8573e2b16e713e9ce8b786f3aa9074cf450e4e199f` |
| ExactPhase | check-phase-02 | `277ae44563fd7e11714437fc4d220ca5cbf4f5fc2a98fabbc6d40e727d9eb5b2` |
| ExactSignedMean | check-signed-01 | `6ea576c51485d8b90a19ecf83226830d72a02d94755008fab0dfaab67ad78ad4` |
| Leaf66902 | check-leaf-02 | `230e9e03f9c7c18caf0457d6fa2f7824013937bcd7d2c4c28a93d7972cd8b199` |
| WholeBoxPhase | check-whole-phase-02 | `33d82e780a30bae80fe665fde431a7b69e8abc91bbf6e85f22d31845bda829ee` |
| WholeBox66902 | check-whole-leaf-03 | `7a080e2274b3411e5d06d8e3ff5ccee34656e1b9d17827e862fce62026c91d9f` |
| SignedMeanAudit | check-audit-01 | `ea757a837be701747ef37d3168b7b95186499209ceac90eaf5993fe9cb91651a` |

The comment-stripped sources contain no `sorry`, `admit`, `sorryAx`, `native_decide`, `axiom`, or `unsafe` declaration. Successful transcripts report only `propext`, `Classical.choice`, and `Quot.sound`. The concrete arithmetic uses `decide +kernel`; this is kernel reduction, not a native-decision oracle. Initial `decide` failures do not supply proof credit: their failed receipts and `sorryAx` diagnostic traces are separate from the successful replacement.

The aggregate audit covers **all 95 newly declared theorems**, with no omitted helper or numeric decision. This includes the six unresolved-plus facts and four endpoint R/Delta facts omitted from the initial leaf's local print list. Its source-hash comments match the six final mathematical modules, and its printed declaration set agrees exactly with the formalization record. The two reused dependencies have separate fresh successful receipts and axiom output; they are not included in the count of 95 new declarations.

## Interval and phase semantics

`QInterval.Contains a x` means precisely `a.lo <= x <= a.hi` after rational-to-real casts. Addition, negation, subtraction and repeated multiplication have soundness theorems for real inputs. Multiplication uses the four rectangle vertices; the proof explicitly handles signs. An interval need not store a nonemptiness proof because actual membership already forces its lower endpoint below its upper endpoint. A reversed interval cannot fabricate a real input satisfying the containment premise.

`RingExpr.range_sound` connects executable rational interval evaluation to the real evaluation of a finite ring expression. `RingExpr.check_sound` additionally verifies that a proposed outer interval encloses that computed interval. This covers constants, variables, addition, negation and multiplication. It does not yet prove division, square roots, the native Taylor remainder rules, or arbitrary named coefficient expressions. Merely storing an interval inside a `MeanCertificate` does not invoke this evaluator or establish semantic containment.

`ExactPhase` implements the first n terms of the imaginary-axis exponential over rational complex pairs. Its mapping lemmas connect that exact computation to the existing `phasePartial n x`. The inherited sharp remainder is `|x|^n/n!` for every real x, with no small-angle restriction. Real and imaginary parts then enclose the actual cosine and sine at the rational center. Factorial division introduces no zero denominator; the generic mapping of natural division also agrees with the ordinary total field operations at zero.

The concrete leaf proves four center-phase certificates with 32 retained terms, i.e. polynomial degree 31 and remainder of order 32. These are not initially whole-box sine/cosine bounds. The separate `WholeBoxPhase` module proves the global Lipschitz estimate with constant one, widens the center intervals by a rational radius, and proves a cubic phasor remainder bounded by `|u|^4/24`. Its uniform version assumes `|u|<=r`; an additional separate nonnegativity hypothesis for r is unnecessary because that assumption already implies it.

`WholeBox66902` applies those lemmas to all four actual rational center/radius pairs. Its hypotheses are exactly the coordinate box-membership inequalities. It uses the independently checked outward native radius when widening the phase intervals and bounding the cubic error. Thus the phase-input statements cover every point of the closed coordinate boxes, including their boundaries. This establishes the analytic primitive needed for subsequent native-model binding; it does not by itself validate the native coefficient intervals or their propagated errors.

The final replacement also spells out the source center/radius constants, proves their equalities with the imported phase parameters, and proves `sourceRadius + |sourceCenter-center| <= nativeRadius` before applying the triangle inequality. All four source constants were independently matched to the original certificate strings. In this producer the phase center itself is the exact source rational, so the center displacement is zero; only the radius is enlarged. The explicit cover proof prevents a later integration from silently treating a rounded center as exact. The earlier whole-box receipt `check-whole-leaf-01` belongs to a narrower source version and is superseded here by `check-whole-leaf-03`.

## Signed-mean statement review

The executable positive-sign test has three sufficient cases: nonnegative A and Y with one strictly positive; positive A dominating `|Y q|` through `A^2-Y^2 q^2>0`; or positive Y with `Y q` dominating `|A|` through the opposite strict inequality. Its soundness theorem explicitly requires `q>0` and valid interval containments. The negative test correctly negates A and Y and retains the same squared quantity.

A `MeanCertificate.Valid A B D q` is the conjunction of five substantive enclosures: A, `B-D`, `B+D`, `A^2-(B-D)^2 q^2`, and `A^2-(B+D)^2 q^2`. These are assumptions, not consequences of importing five interval pairs. The plus exclusion additionally assumes `D>=0`, `q>0`, and the actual physical squared bound `(A+B q)^2 <= (D q)^2`. The minus version has `(A-B q)^2 <= (D q)^2` and correctly swaps/negates the two linear factors.

The theorem therefore has the right logical form: valid interval information plus a successful sign decision contradicts the corresponding physical squared bound. It does not silently prove the physical bound, identify q with the correct positive square root, or show that D is the intended nonnegative normalization. Those bindings must still be supplied from the actual matrix/reconstruction expressions and the strict physical domain.

The six imported pair certificates prove `excludesMinus=true` and `excludesPlus=false`. The latter means that this particular sufficient test is inconclusive; it is not existence evidence for the plus branch. Conversely, the six minus decisions do not justify deleting all physical orientation branches or closing the leaf. All six concrete contradiction theorems still display their `Valid`, D, q, and physical-bound premises.

The numerical statements named `rowR_below_tao`, `columnR_below_tao`, and the two positive-Delta statements are facts about the imported rational endpoints. Without semantic enclosures and the appropriate physical classification/boundary statement, their names do not confer a Tao exclusion or eliminate exceptional cases.

## Independent data checks and remaining work

The original input certificate SHA-256 is `f9be867396551512f5d40361a678dd4ef45f4fda15349f256f07bcbc5e9ad9a8`; the native replay receipt hash is `9c1d48955c691adc6437e78cbab76202a0bf6ba2bc5a7690c3b782246116b1d9`. The importer manifest, its own script hash, and the generated Lean source hash all match the files. Leaf 66902 has one unsplit terminal and no pending branch in that supplied native certificate; this is provenance, not a new formal whole-leaf theorem.

An independent rational calculation reproduces every 32-term center-phase enclosure and each outward radius inequality. All 68 binary64 coefficient endpoints are converted to their exact binary rational values and match the generated Lean definitions. The two providers remain ordered `transpose=false` and `transpose=true`. Independent evaluation of the Boolean sign predicates reproduces all six true minus results and all six false plus results. No floating value or native producer success flag is used as a semantic premise in these checks.

The next proof obligations are concrete: connect the exact ring expressions to the intended native coefficient expressions; prove their full box enclosures, including every denominator and remainder; bind A, B, D and q to the corrected physical reconstruction; and supply the complete orientation/exceptional-case cover. The exact input phase bounds and conditional sign soundness are reusable checked components toward those obligations. They are not a physical proof admission under `research_factory/LEAN_POLICY.md`.

The portable `public/` packet also passes the independent manifest check: all 24 files are present, its nine Lean files equal the audited sources, its portable receipts bind the original successful records, and its data certificate equals the decompressed original. The three native research-source hashes match the current pinned files, but this comparison confers no semantic credit on their unformalized arithmetic. The Python producer source was inspected directly: it evaluates its 80-term rational phase enclosure at the exact source center, then converts only the enclosure endpoints and an outward radius to native doubles.

This directory's `check_receipts.py` is a read-only audit program, and `CHECKS.json` retains the hashes, declaration names, dependency resolution, all 95 aggregate axiom checks, public-package verification and exact-data results. The worker's source packet was not modified by this review.
