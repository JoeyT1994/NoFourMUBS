# Status of the PR-M return

## 1. Proved on paper

**G2 — achieved relative to the supplied independent L1 inputs.** `PRM.md`, Theorem A and §§2–5 prove that every strict nonmatched flat completion is Tao. The scope is all `R>0`, both sheet orientations, and all guard-failing strata inside that strict domain.

The new ingredients are finite strict side fibres, a two-column rigidity alternative, the comparison of two disjoint flat bases in a three-dimensional complement, a six-projector dependence, and its conversion to a bipartite column graph. They force a `3 x 3` Fourier block. An elementary Fourier normal form and exact finite census complete the converse.

**G1 — achieved on the requested guarded physical locus.** `PRM.md`, Theorem B and §6 prove affine-minus necessity for `omega_n<0`. The exact relation is `omega_n = -delta_p^2 R / |f6|^2`. The Tao alternative cannot satisfy the product guards. At `omega_n=0`, the two prescriptions coincide; the result does not assert plus-residual nonvanishing there.

**G3 — achieved relative to the named critical-strip inputs.** `PRM.md`, Theorem C and §7 derive `MatchedExactReach`, stronger than `MatchedDensityReach`. The paper's two elementary Fourier-algebra imports in the old MC1 proof are replaced by proofs in this return. The remaining critical-strip classification, endpoint exclusions, fixed-row sum rule and Fourier critical-locus theorem are imported exactly as listed in `PRM.md` §1.

No use is made of PR-M itself, the old nonmatched-exceptions theorem, global product-regular escape, a generic dimension argument, or numerical density. G2 itself does not use global strict-corner coverage.

## 2. Certified by exact computation

The complete replay is `python3 verify_all.py`; it needs only the Python standard library and no network access. Each failed identity, witness, certificate comparison or source-integrity check exits nonzero.

- **81** cubic Fourier-normal-form tuples: **27** first-character cases, **18** second-character-only cases, **18** Tao cases with explicit verified monomial equivalences, and **18** nonflat cases with exact entry-norm witnesses.
- **400** Laurent identities for all positional corners of the continuous two-parameter Fourier family. The transpose follows from the exact invariance argument. These are whole-family identities, not 400 sampled matrices.
- **8** generic product-bridge identities in six independent Gram variables, including the discriminant bridge and explicit cofactor reduction.
- **729** normalized cubic phase sides: **279** singular; **324** invertible with repeated coordinate roots; **126** invertible with simple coordinates and zero companion determinant.
- The three-point Fourier coefficient identities and geometric-row specialization.
- **52** supplied structural Laurent identities, replayed through the byte-for-byte retained I3 verifier in `vendor/verify_structural.py`.

The replay receipt is `reports/verification.json`. It records its own scope. It does not label the paper lemmas as mechanically formalized.

## 3. Numerical evidence

Floating-point searches were used only during exploration before the geometric proof was found. They are not proof inputs, are not acceptance tests, and are not needed to regenerate any certificate. The returned verification path contains no numerical fitting, approximate root classification, or tolerance-based branch acceptance.

## 4. What remains open or unperformed in this return

No further PR-M mathematical subcase is left by the stated paper argument, **relative to its explicit supplied imports**. The ramified locus is handled by coincidence of the two prescriptions, not by an unsupported extension of the strict exclusion.

The new geometric lemmas and their combination with coverage have **not been ported to Lean**. This return does not claim that the production Lean project was compiled with a new term proving `MatchedDensityReach`, or that an unconditional no-four-MUBs theorem was newly machine-checked.

The full I1 and I2 certificate suites and the critical-strip proof corpus were not replayed in this return. Their stated theorems remain supplied inputs. I3's structural algebra was replayed; that is a narrower, expressly identified check. Independent review should focus particularly on §§3–4 of `PRM.md`, the new finite-fibre and projector argument, and on the declared coverage import boundary.
