# Return L: proofs and replay bundle

Start with **REPORT.md**. It separates the proved local Fourier-edge theorem,
the exact algebra certificates, the full Fourier-family exclusion, and the
global conjectures that this return does not establish.

The completed Fourier certificate covers all 270 closed parent cells using
297 accepted rectangles: 265 at denominator 180, sixteen at denominator
360, and sixteen at denominator 720. The local theorem proves F for every
exact triple in the specified 55-coordinate phase box of radius
$1/40000$ radians. Neither result establishes global F or F′.

## Quick verification

From this directory:

```bash
python3 -S verify.py
```

This verifies the checksum manifest, reruns the short exact algebra and
local inverse certificates, regenerates and certifies all vector and parameter
trigonometric tables, and checks the saved Fourier-run evidence for complete
parameter coverage and exact graph bounds on the signed counters. The last
step checks recorded completion and integrity;
it does **not** rerun the large C++ search.

For checksums alone:

```bash
python3 -S verify.py --integrity-only
```

Equivalent individual algebra commands are:

```bash
python3 -S algebra/verify_exact.py
python3 -S algebra/verify_domain.py
python3 -S local/verify_dita_jacobian.py
python3 -S local/verify_augmented_inverse.py
```

These use only Python's standard library. NumPy is not needed to verify the
delivered inverse candidate. Keep Python assertions enabled; use neither
the `-O` option nor `PYTHONOPTIMIZE`.

## Fresh full Fourier-family replay

To repeat the entire large computation, including regenerating the
orthogonality database and exhausting every parameter cell:

```bash
python3 -S verify.py --full-fourier --jobs 4
```

Requirements are Python 3, internet access to fetch the two hash-pinned
public supplemental sources, and a GCC-compatible C++17 compiler on a
machine satisfying the checked IEEE binary64 conditions and a signed `int`
maximum of at least $2^{31}-1$. One to four
workers are supported. The full replay takes substantially longer than the
short exact checks and writes a fresh timestamped result directory.

The compiler flags, source hashes, arithmetic proof, memoization audit,
saved-run composition, and standalone commands are documented in
`fourier_exclusion/REPLAY.md`. The fresh driver checks both original source
hashes before generating the corrected program. If upstream source bytes
change, it fails rather than silently applying a patch to another version.

The original programs, generated copies of their complete source, and
executables are regenerated as part of replay. The bundle contains the
new support code, guarded transformations, exact tables, mathematical
audits, and recorded evidence.

## File map

| Location | Purpose |
|---|---|
| `REPORT.md` | Overall results, proof outline, exact scope, and remaining global gap. |
| `verify.py` | Portable integrity check and short/full replay entry point. |
| `SHA256SUMS` | SHA-256 digest of each distributed file except the manifest itself. |
| `algebra/REPORT.md` | Exact triple, Fourier predicate, complete minor/block censuses, and Tao control. |
| `algebra/FOURIER_DOMAIN.md` | Universal reduction of the Fourier torus to the closed parameter triangle. |
| `algebra/verify_exact.py` | Recomputes the number-field and Laurent identities and enumerations. |
| `algebra/verify_domain.py` | Checks the exact matrix symmetries, affine group, and lattice constants. |
| `algebra/*RECEIPT.json` | Detailed exact output, including every minor and exceptional parameter point. |
| `local/LOCAL_FOURIER_THEOREM.md` | Complete proof of the 25-microradian neighborhood theorem. |
| `local/INDEPENDENT_AUDIT.md` | Separate mathematical review of the local proof. |
| `local/verify_dita_jacobian.py` | Independent nonzero-minor certificate modulo 241. |
| `local/verify_augmented_inverse.py` | Exact rational inverse, transformation, coordinate, and radius checks. |
| `local/augmented_inverse_dyadic.json` | The 55-by-55 dyadic inverse candidate. |
| `fourier_exclusion/CERTIFICATE.md` | Standalone statement and proof chain for the complete two-dimensional exclusion. |
| `fourier_exclusion/REPLAY.md` | Full exclusion reproduction instructions and computational model. |
| `fourier_exclusion/ARITHMETIC_PROOF.md` | Exact tables and rigorously bounded floating operations. |
| `fourier_exclusion/ENDPOINT_LEMMA.md` | Complete analytic proof of the endpoint bound used by the search. |
| `fourier_exclusion/FOURIER_REPLAY_AUDIT.md` | Independent coverage, clique-enumeration, and state-restoration audit. |
| `fourier_exclusion/MEMOIZATION_AUDIT.md` | Proof that caching preserves the audited search results exactly. |
| `fourier_exclusion/RECIPROCAL_AUDIT.md` | Proof that the reverse compatibility filter preserves every possible exact quartet. |
| `fourier_exclusion/SUBDIVISION_AUDIT.md` | Source, table, and closed-cover verification for the parameter-cell subdivisions. |
| `fourier_exclusion/verify_subdivision_tables.py` | Exact regeneration and verification of the additional parameter table. |
| `fourier_exclusion/QUARTERGRID_AUDIT.md` | Independent source, table, and cover proof for the finer 720-grid refinement. |
| `fourier_exclusion/verify_quartergrid_change.py` | Exact table/cover checks, with an optional full generated-source comparison. |
| `fourier_exclusion/COVERAGE_AUDIT.md` | Independent review of the aggregate checker, closed child covers, and actual worker inputs; Section 7 audits the separately labelled pool reconstruction. |
| `fourier_exclusion/SIGNED_COUNTER_PROOF.md` | Exact graph bounds proving that the two signed diagnostic counters never overflow. |
| `fourier_exclusion/verify_counter_bounds.py` | Reconstructs the graph for every accepted leaf and recomputes its counter bound. |
| `fourier_exclusion/reconstruct_mother_pools.py` | Guarded reproduction of the auxiliary pools whose historical file was truncated; the original exclusion log is retained. |
| `fourier_exclusion/parameter_cover.png` | Explanatory view of the accepted closed parameter cover. |
| `fourier_exclusion/plot_parameter_cover.py` | Optional figure regeneration; requires Matplotlib and is not used by the certificate verifiers. |
| `fourier_exclusion/rigorous/` | Certified tables, ORT bins, run manifests, logs, and cell receipts. |
| `fourier_exclusion/rigorous/pool_reconstruction/` | Pool-only reconstruction data, compact source-change description, successful exit record, and checks against all surviving historical data. |
| `provenance/` | Original attachment audit and input hash manifest. |
| `verification/` | Integration verification records. |

## Reading the status labels

**PROVED** denotes a paper argument. **CERTIFIED** denotes a replayable
finite computation with exactly justified acceptance. For the large search,
this includes validated binary64 enclosures with exact table certificates;
it does not mean that all search operations use integers or that the proof
has been formalized in a proof assistant. **NUMERICAL** denotes evidence
without a completeness or exact-zero guarantee. **NOT ESTABLISHED** marks
claims that the return does not prove.

The local theorem concerns a neighborhood of the specified pair of
dephased matrices. The Fourier exclusion concerns the entire two-parameter
family and its transpose. Neither statement proves that every possible
triple or quartet has a Fourier edge. That global implication remains the
obligation needed to replace the four-dimensional atlas.
