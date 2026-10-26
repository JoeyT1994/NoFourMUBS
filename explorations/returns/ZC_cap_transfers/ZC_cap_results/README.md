# ZC spherical-cap transfer return

`REPORT.md` contains the result, full proofs, comparison table, scope, and
replay instructions. `per_ball_cap_counts.csv` has all 200 sample rows.
`coverage_summary.json` gives machine-readable achieved totals and the
complete list of certified sources.

## Contents

- `ZC_work/cap_verify.py`: recomputes the source normal form and every cap
  target/orientation condition, then verifies exact sphere coverage.
- `ZC_work/coverage.py`: independent integer-only coverage checker and
  numerical hull-witness constructor.
- `ZC_work/weighted.py`: optional Arb output-weighted normal correction and
  Hessian bounds from ZT equations (25)--(29).
- `ZC_work/certificates/`: actual cap coefficients, multiplier witnesses,
  and exact polar-facet coverage witnesses.
- `ZC_work/results/`: interval replay results and hashes. A complete cover
  is explicitly marked `CERTIFIED full sphere`.
- `ZC_work/proposals/`: numerical search outcomes for all 200 sources,
  including failures and incomplete covers. A proposal is not a proof.
- `ZC_work/gaps/` and `verify_gap.py`: exact rational witnesses that the
  two remaining frozen candidate lists leave points uncovered. These
  witnesses concern those particular lists, not the existence of other
  cap covers or transfer regions.
- `ZC_work/transfer_input.json.gz`: compact replay data with every source
  and target header and ordered transfer descriptor retained.
- `ZC_cap_transfers/context/`: the supplied context and original input,
  preserved for provenance and reconstruction. These include the required
  whole-ball theorem and its local-germ hypothesis.
- `ZC_work/construction.py`: numerical initial cap search and adaptive
  augmentation. Only replay promotes its outputs to certified results.
- `ZC_work/CAP_FORMAT.md`: exact certificate fields and their meaning.
- `MANIFEST.sha256`: hashes of all delivered files except the manifest.

## Quick replay

From the package root:

```bash
python -m pip install -r requirements.txt
cd ZC_work
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
  python cap_verify.py transfer_input.json.gz certificates/seed_6.json \
  --output replay_seed_6.json
```

The final status must be `CERTIFIED full sphere`. An unsuccessful bound,
missing coverage witness, or undecided interval inequality is rejected.

To recheck every delivered complete cover, sequentially:

```bash
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
  python replay_all.py
```

This reads the certified source IDs in `coverage_summary.json`, writes
fresh results to `replay_results/`, and exits unsuccessfully if any source
does not pass. Sequential replay keeps memory modest. The declared Python,
NumPy, SciPy and python-flint versions are in `runtime_versions.json`.
SciPy is used for proposal generation only; exact coverage replay does not
import it.

## Independent integrity checks

From `ZC_work`:

```bash
python coverage.py --self-test
python verify_gap.py proposals/seed_2124.json gaps/seed_2124.json
python verify_gap.py proposals/seed_2257.json gaps/seed_2257.json
python verify_input_projection.py \
  ../ZC_cap_transfers/context/sample_certificate.json.gz \
  transfer_input.json.gz --output projection_replay.json
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
  python test_rejection.py transfer_input.json.gz certificates/seed_6.json \
  --output rejection_replay.json
```

The projection check compares all 2,328 seed headers and all 11,860 ordered
transfer descriptors exactly. Only original box arrays and unused outgoing
edge data are omitted from cap replay. The rejection suite exercises
changed windings, false bounds, enlarged caps, invalid multipliers, missing
facets, corrupt dual vertices, and cap-geometry alias consistency.

## Reconstructing proposals

Use the original context input because initial numerical directions are
derived from its box groups. For one source:

```bash
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
  python construction.py \
  --input ../ZC_cap_transfers/context/sample_certificate.json.gz \
  --seeds 6 --out new_proposals --workers 1
```

For adaptive weighted refinement, use the corresponding construction
flags shown by `python construction.py --help`. Search procedures are
heuristics and are not asserted to find optimal cap counts. A changed
proposal must receive a fresh coverage witness and interval replay.
The stored witnesses can be replayed without reconstructing the search.

## Scope

The statements are geometric T0/T1 boundary transfers on whole source
spheres. The same local matched-completion germ as Z remains an explicit
hypothesis. The code invokes neither an atlas completeness theorem nor
Stage C. It does not establish a MUB exclusion theorem.

The current finite table distinguishes successful full covers from source
contraction failures or remaining cap-search gaps. No old box is silently
accepted as a new cap certificate. A new outgoing X-ball cap cover and
incoming T3 cap verification are not established in this return. The
mathematical transfer and coverage lemmas carry over once the appropriate
augmented source model and jets have been independently supplied and
verified.
