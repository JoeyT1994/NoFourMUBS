# Active F6 production closure

This is an **additive** local certificate for both active F6 endpoint seed
classes in the 2026-09-30 night checkout. It does not modify the production
cover predicate or its accounting.

The exact target half-width is

```
pi/512 + 1/2^40 radians in each of four seed coordinates.
```

The centre coordinates in the orbit files are in **pi/3 units**. The matrix
tube radius is **1/30 in normalized-column projector distance**; it is not a
seed radius. Nine independently covered representative cubes, with exact
cube-isometric transport, account for all 18 active-class and 72 old-class
seed cubes. `RESULTS.md` and `RECEIPT.json` give the measured final counts and
status; no incomplete receipt is usable by the predicate.

The statement is conditional on the three labeled reconstruction inputs
`A-SC`, `A-SIDE`, and `A-FORM` in `INPUTS.json`. All other adopted archive
results and context files have separately labeled roles and SHA-256 pins.
Both signs of both side fibres are covered. There is no positive-sheet-only
coverage assumption in this local certificate.

## Install into the night checkout

Unpack this additive directory at

```
NoFourMUBS/ProvenResults/ActiveF6ProductionClosure/
```

Keep the pinned night-checkout files unchanged. Required replay environment:
Linux LP64, Python 3.10 or later, SymPy 1.14.0, a C++17 compiler, GMP headers
and library, and the MPFR 4.x shared library named `libmpfr.so.6`. No Julia,
python-flint, gmpy2, numerical optimizer, cluster access, or downloaded data
is needed by the verifier. The predicate itself uses the Python standard
library. Run Python without `-O`.

From the repository root:

```bash
python -m pip install -r ProvenResults/ActiveF6ProductionClosure/requirements.txt
python ProvenResults/ActiveF6ProductionClosure/verify.py --workers 4
```

The verifier also works from another current directory when invoked with its
absolute path. It compiles fresh kernels; regenerates exact frame, algebra,
partition and arithmetic controls; regenerates all nine regional ray covers
and exact graph obstructions at 96 and 160 bits; and replays **every retained
seed leaf at both precisions**. By default outputs go under this module's
`replay/` directory. Use `--workdir /path/to/local/work` to select another
local output directory. Each seed shard has one compressed JSON output.
`run_receipt.json` is the run-level receipt. A failure returns a nonzero exit
status and is never converted to acceptance.

For an integrity-only audit:

```bash
python ProvenResults/ActiveF6ProductionClosure/verify.py --check-only
```

This prints `INTEGRITY_PASS`, **not** a fresh interval-replay PASS. For a
selected-shard replay, add `--shard BASENAME.json.gz` (repeatable). That mode
still regenerates the common arithmetic/algebra and regional certificates,
but reports `SELECTED_SHARDS_PASS`, never full completion. Default replay
never trusts previous output files as newly checked leaves.

## Apply to exact campaign boxes

```python
from fractions import Fraction
from ProvenResults.ActiveF6ProductionClosure import certify_rational_box

# Four exact rational centres and half-widths, all in radians.
answer = certify_rational_box(centers, radii)
if answer["ok"]:
    # Every physical maximal completion over the ENTIRE supplied box is
    # quartet-free, conditional on the labeled accepted reconstruction inputs.
    record(answer)
```

The public functions accept integers, `Fraction`, or rational strings.
Binary floats and booleans are rejected. An exact conversion of an existing
outward binary64 endpoint to `Fraction` is legitimate, but the caller must
not forget the complete outward box or its guard.

An exact production cube may be queried without approximating pi:

```python
from fractions import Fraction as Q
from ProvenResults.ActiveF6ProductionClosure import certify_rational_pi_box

answer = certify_rational_pi_box(
    [Q(1,3), Q(2,3), Q(2,3), Q(4,3)],
    [Q(1,512)] * 4,
    guard=Q(1,2**40),
)
assert answer["ok"]
```

`partition_for_seed((1,2,2,4))` returns the complete rational normalized
partition, its exact frame transport, and the leaf receipts. Physical
endpoints are retained as `a*pi+b` with exact rational coefficients. This
is a partition of the exact requested irrational-faced cube, not of an
inward floating approximation to it.

A box shifted away from an exact orbit centre is accepted only if its
**whole** supplied enclosure is contained in one of the retained cubes.
The predicate does not assert that every branch-layer box whose nearest
class is active is inside these production cubes. In particular, this
module is not a new global small-R confinement cutoff.

## File map

`PROOF.md` gives the theorem, frame audit, complete side lifts, regional
tube obstruction, error bounds and arithmetic trust base. `verify.py` is
the clean-checkout replay entry point. `predicate.py`, `boxes.py`, and
`frames.py` expose exact box application and transport. `src/` contains the
outward MPFR kernels and degree-two model algebra. `data/regions.json`
contains only exact acceptance data, not floating optimizer output.
`data/shards/` contains one certificate per seed-prefix shard; its complete
index and hashes are in `data/index.json`. The regional and common-audit
receipts are bundled separately rather than creating a file for each leaf.

The old `PRODUCTION_CUBE` 72-frame rule covers frame **images**, not all
axis-aligned cubes at the orbit centres: direct whole-cube containment
covers only 8 of its 72 nominal-width orbit cubes, and none of the newly
guarded full cubes follows merely by dropping the guard. This module
certifies all the guarded old-class cubes independently through six
cube-isometric representatives. See the exact witnesses in the frame audit.
