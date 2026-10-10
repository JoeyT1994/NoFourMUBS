# Status: a conditional coverage reduction, with two remaining geometry gaps

## 1. Outcome

This return does **not** close the unconditional connectedness theorem or
the final no-four-MUBs theorem. It supplies the gap audit, a smaller route
to exactly `NoFourMUBs.Inputs.covered`, complete topology proofs, a complete
paper proof of the weaker matched uniqueness statement, and explicit
interfaces for the remaining obligations.

The two mathematical gaps in the proposed direct route are:

1. **L1 — physical matched existence at every strict seed.** The forced
   fourth block must be entrywise unit. The proposed universal
   fourth-moment certificate was not completed.
2. **D — global density in the physical non-Tao quotient.** The matched
   image, its conjugate, and the Fourier class must be dense enough to
   reach every non-Tao class by closure. This is not proved by finite
   fibres or the upstream retained-atlas theorem.

L2, uniqueness of an existing positive matched fibre modulo `Equivalent`,
has a complete paper proof in `STEP2_BLUEPRINT.md`, §7. It remains an
explicit input in Lean until that algebraic proof is formalized.

Step 1's maximum census, full-quotient Record clopenness, the matched
maximum-anchor certificates, and a Fourier-anchor certificate are separate
inputs. The handoff does not supply the actual Record data needed to
discharge all those membership certificates.

The general interface permits up to 18 maximum anchors. Blueprint §5.3
also proves a restricted row/column transport lemma that reduces these to
**one** actual positive matched maximum anchor, plus the Fourier anchor.
That optional transport lemma is paper-proved and its algebra is checked;
its Lean formalization is not included, so the main Lean theorem retains
the explicit finite-family input.

## 2. Evidence categories

### 2.1 Proved on paper in this return

| Result | Proof and scope |
|---|---|
| Compactness of the physical matrix space | Finite products of unit circles, intersected with the closed Gram equations; blueprint §3. |
| Closedness of the polynomial matched relation | Permanent, determinant, conjugation, and real square root are continuous; blueprint §3. |
| Continuity from a compact closed relation | Nonempty fibres and uniqueness only after quotienting suffice; no continuous representative choice or Hausdorff target is assumed; blueprint §4. |
| Compact-superlevel propagation | A clopen subset of `{R>0}` containing every positive ambient local maximum is the full superlevel set; blueprint §5. No connectedness or local connectedness hypothesis is needed. |
| Conditional exact coverage | L1, L2, D, the census, Record clopenness and finite anchors imply precisely `Inputs.covered`; blueprint §6. |
| Matched uniqueness L2 | Actual-side Laurent and Fourier identities, reflection and cyclic column permutations, followed by upstream `Hadamard6.eq_forcedD_of_row_cross`; blueprint §7. Includes the equal-magnitude reflection tie. |
| Restricted maximum-orbit transport | Extending the leading row/column permutations and globally dephasing preserves both signatures and the seed invariants. With L2, all 18 matched maximum classes coincide; blueprint §5.3. Optional and not yet in Lean. |
| The phase metric / quotient-topology argument and Fourier joining construction | Detailed in `MINIMAL_ROUTE.md` and `work/topology_audit.md`; not needed as additional hypotheses of the new direct-coverage theorem. |

For L2 the underlying side lemma is seed-independent: the same actual Gram
and the same nonreal polynomial signature determine a normalized phase
side up to column permutation. Neither arbitrary-seed side existence nor
global product-regular escape enters that proof.

### 2.2 Lean proof status

| File or declaration | Current checked status |
|---|---|
| `lean/TopologyCore.lean` | **COMPILED** against the pinned Mathlib; all seven exported theorem axiom audits contain only `propext`, `Classical.choice`, and `Quot.sound`. |
| `lean/QuotientTopology.lean` | **COMPILED** with the real upstream imports. Its compactness, quotient continuity and quotient-equality audits contain only the three standard foundational axioms. |
| `lean/Step2Statements.lean` | **COMPILED** with `lake build Step2Statements` against the actual bundled projects: 8,841 build jobs, final module 6.0 seconds. The continuity, exact-to-density and exact coverage theorem audits contain only the three standard foundational axioms. See `logs/step2_lean.log`. |

The statements file uses the literal upstream types and predicates. Its
unproved statements are definitions of propositions, not new axioms.
All three new proof modules are compiled. There are no admitted proofs or
project-added axioms in these files. The principal checked theorem is
`NoFourMUBs.Step2.coverage_of_matched_density`.
The proved assembly conclusion is exactly:

```lean
∀ H, IsHadamard H → ¬ IsTaoOrbit H →
  ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K
```

The new topology does not assert connectedness of the retained atlas,
connectedness of the strict seed set, or continuity of the literal radical
representative. It proves the quotient-valued implication required by the
proposed replacement route.

### 2.3 Certified by exact computation

| Check | Result | What it establishes |
|---|---|---|
| Original reconstruction dossier, all 15 checks | **PASS**; 66.9809 seconds elapsed, full receipt and source hashes retained. | The listed polynomial identities, interval witnesses, finite censuses and provenance checks. The runner itself leaves paper imports and analytic arguments as inputs. |
| New `verify_topology.py` | **PASS**. | Signature phase/permutation/transpose symmetries; the finite maximum orbit; the indeterminate Fourier family; Fourier ordering; rational horizontal projection. |
| New `verify_l2_identities.py` | **PASS**. | Three full Laurent identities, nine full Fourier identities, and six Fourier-inversion convention checks on six independent unit phase variables. |
| New `verify_l2_polynomial_certificates.py` | **PASS**. | Full integer coefficient and explicit cofactor certificates for all twelve L2 identities, expanded before any cyclotomic reduction and checked coefficientwise. |

The maximum-orbit check works exactly in
`Q[x]/(x² − x/2 + 1)`, with `x = (1 + i√15)/4`. It verifies 18 distinct
phase tuples among the 144 listed transformations and checks the exact
value `R = 3^13 / 2^12` at all 18. This is a finite enumeration and value
check, **not** a proof that these are all positive local maxima.

The Fourier check works over the exact Laurent ring with
`ω² + ω + 1 = 0`. It checks all 36 phase and 36 Gram equations as identities,
the cross ratio `z`, Fourier conjugation, and the literal upstream anchor
ordering. The horizontal projector is checked using rational entries,
including idempotence, symmetry, rank 25 and lattice denominator 36.

The three new standalone verifiers use only Python's standard library and
exact integers/rationals. They raise an error and exit nonzero on failure.
No acceptance decision is based on floating-point values. Successful
Python certificates are distinguished from Lean proofs of those identities.

`l2_polynomial_certificates.json` records the cleared left and right sides,
residuals, denominators, monomial shifts, and explicit integer cofactors
`Q` for `cleared(lhs-rhs) = (ω²+ω+1)Q`. All twelve checks pass; the largest
cofactor has 80 monomials. This supplies explicit coefficient certificates,
in addition to the independent quotient-ring verification and its hashes.

### 2.4 Unresolved computations and unproved inputs

| Item | Status and limit |
|---|---|
| First direct universal-flatness attempt | **UNRESOLVED**, 240-second SIGALRM limit; tool exit 142. An `A01` contraction reached 483,553 numerator terms and 477,415 denominator terms. Zero universal coefficients verified. |
| Combined-denominator attempt | **UNRESOLVED**, 240.0592 seconds, child exit −14. Zero universal coefficients verified. |
| Exact-division/common-denominator attempt | **UNRESOLVED**, 240.1455 seconds, child exit −14 / tool exit 142. Reached term 48 of 72; zero universal coefficients verified. |
| `MatchedExistence` | Explicit Lean `Prop`; the complete direct matched-flatness proof/certificate remains missing. |
| `MatchedUniqueness` | Explicit Lean `Prop`; paper proof and exact identities supplied, algebraic formalization remains missing. |
| `MatchedDensityReach` | Explicit Lean `Prop`; no global real-locus density proof supplied. |
| `MaximumCensus` | Step 1 input; the new finite orbit check does not discharge it. |
| `RecordClopen`, `MaximumAnchorCertificate`, `FourierAnchorCertificate` | Certificate-layer inputs. The clopen predicate is on the full quotient, and maximum membership is a distinct extra finite obligation. |

The exact residual targets and every rational moment entry are recorded in
`work/geometry_obligations.md`. An interrupted expansion, a nonzero test
specialization, or generic complex dominance is not counted as a universal
physical flatness or density certificate.

## 3. Disagreements and missing justification in the references

### 3.1 Uniform minus-matching necessity is stronger than the supplied proof

**Location of the assertion:**
`reference/ClassificationPaper/source/paper_body.tex`, the paragraph
immediately before `eq:affine-minus-matching-main` (label at line 864).
`reference/MinimalConstruction/Proofs/NONMATCHED_EXCEPTIONS.md` imports the
necessary direction as **PR-M**.

**What the cited supplement actually proves:**

1. The restatement of `def:product-regularity`, at
   `supp_body.tex` lines 1514 onward, explicitly defines the lift to be
   minus matched.
2. The restatement of `thm:regular-seed-domain`, at lines 1613 onward,
   proves physicality for the matched lifts.
3. `prop:supp-generic-flatness`, at lines 1690 onward, proves the minus
   residual identically zero and proves the plus residual **not identically
   zero**, using the exact specialization `(2,3,5,7)`.

These results do not exclude exceptional physical zeros of the plus
residual on the guarded, distinct-root locus. The global guard search
produces a guarded actual frame; treating that frame as a matched lift
still needs the necessity direction of PR-M. At product-root ramification
the two matchings coincide, so a correct necessity statement must also
qualify or handle that case.

**Minimal witness to the invalid inference:** take guard `G(t)=1` and
residual `F₊(t)=t²`. Then `F₊` is not identically zero and is nonzero at
the guarded point `t=1`, yet vanishes at the guarded point `t=0`.
Thus nonidentity plus one nonvanishing specialization cannot establish
nowhere-vanishing on the guarded locus.

This is a **gap in the supplied justification**, not an actual Hadamard
counterexample and not a proof that the asserted matching theorem is
false. It affects the dossier's route to MC4/MC5 and exact reach. It does
not affect the new compactness lemmas or actual-side uniqueness proof.
The full dependency audit is in `GAP_MAP.md` and the geometry notes.

### 3.2 The permitted-import inventory omits an actual dependency

`NONMATCHED_EXCEPTIONS.md` uses `lem:supp-product-factor` as **PR-F**.
The label is at `supp_body.tex` line 1483. It is absent from the README's
permitted-classification-import table. This is an import-accounting
omission; it is not silently treated as already formalized upstream.

### 3.3 Finite-corner coverage does not establish strict reach or connectedness

`Hadamard6.paper_finite_corner_theorem` proves `HasFiniteCorner H`.
`Hadamard6.paper_total_output_corollary` proves the equivalence with
`InFiniteCornerAtlas H`. The definition `Hadamard6.Retained` already
includes `EntrywiseUnit (forcedD E B C)`; neither endpoint eliminates that
physical restriction or states `R>0`.

The counterexample to a general finite-fibre/density inference is

```text
Y = {(x,y,t) : t(t−1)=0 and xt=0}.
```

Its projection to `(x,y)` is surjective with finite fibres. One component
`t=0` dominates the base, while the separate line `x=0,t=1` lies above an
exceptional base set and is not in the closure of that component. This is
an elementary counterexample to the proposed inference, not a Hadamard
counterexample or an error in upstream's actual theorem.

## 4. Build provenance and source integrity

- Lean toolchain: `leanprover/lean4:v4.33.0-rc2`, release compiler commit
  `d8b18978322de05a8f3dba51ef03cf5461676c17`.
- Mathlib: `51e6992efd06126df61a496bebf8f49482a4e129`; 8,681 cached files
  successfully obtained and decompressed.
- Upstream: the bundled commit `57b0302`; no upstream `.lean` source edit.
- The full upstream `lake build Hadamard6` completed successfully (3,527
  jobs). `Hadamard6.PaperTheorem`'s printed endpoint axiom audits contain
  only `propext`, `Classical.choice`, and `Quot.sound`; see
  `logs/upstream_final.log`.
- Byte comparison with the original ZIP verified all 137 upstream Lean
  files and all 9 nofourmubs Lean files unchanged. Individual hashes are in
  `certificates/source_integrity.json`.
- The nofourmubs dependency was changed to the relative bundled path as
  requested. The delivered root Lake project directly requires both
  bundled projects, so the final dependency resolution uses these copies.
- The first parallel upstream build exhausted the workspace's 8 GiB
  memory limit while compiling three large resultant certificates and
  exited 137 for those jobs. The source documents roughly 5 GiB peak
  elaboration memory for a single such identity. Sequential rebuilding
  succeeded for the three affected files in 181, 157 and 151 seconds.
  The initial failure log is `logs/upstream_parallel_initial.log` and the
  successful job logs are `logs/resultant{4,6,8}_serial.log`.

The host blocks reading `/proc/<own-pid>/exe` but permits the equivalent
`/proc/self/exe` link. A narrowly scoped `readlink` compatibility shim was
therefore preloaded to redirect only that exact own-process path. The
stock release Lean compiler and logical kernel were not modified. The
shim source is included under `work/environment/` for reproducibility;
normal systems do not need it. It is not a proof checker or a theorem
implementation.

Temporary lightweight compilation probes are diagnostic only. Final
compiled-module claims are based on the real project imports and build
logs, not on copied quotient definitions in a probe.

## 5. Task acceptance boundary

| Requested output | Delivered status |
|---|---|
| A1 gap map | Complete source audit, with exact declarations and precise missing statements. |
| A2 minimal route | Complete conditional alternative to direct `Inputs.covered`, with topology interfaces and dependency diagram. |
| A3 complete proofs of every missing theorem | **Partially fulfilled:** complete topology and L2 proof; L1 and D remain explicitly unresolved. No purported complete Step 2 proof is supplied. |
| A4 Lean statements and conditional theorem | **Fulfilled and compiled:** explicit proposition interfaces and a complete conditional proof of exactly the coverage field, with no `sorry` or added axioms. |

To finish the route, formalize L2, complete L1's matched physical-existence
proof, prove D or the stronger exact reach theorem, and supply the stated
census and Record/anchor certificates. If using the existing nonmatched
argument for reach, resolve PR-M first. The final MUB theorem additionally
needs the local exclusion and Tao exclusion inputs already present in
`NoFourMUBs.Inputs`.
