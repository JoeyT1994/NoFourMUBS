# SignedCornerPSDPrune

An additive, whole-box strict-D0 prune. The default pilot certifies **972 of
1,000** retained boxes, including **all 688 in the three requested stationary
classes**, at **0.03464 measured CPU-s per attempted box**. It retains all
511 earlier signed-mean exclusions. All six physical strict-D0 controls
return `ok=False`.

Read `PROOF.md` for the theorem and dependency ledger. In particular, coupling
orientations uses the already accepted **fixed-corner matched-completion
exhaustion**, not merely positive-sheet coverage. The code checks the absence
of Tao corners on each whole box before using the opposite-sign shortcut.
Deleting that guard is not a valid optimization.

## Installation and replay

This directory overlays the original repository without changing any existing
file. From the repository root:

```sh
python ProvenResults/SignedCornerPSDPrune/verify.py --all --workers 4
```

The project root defaults to the location of this directory. Alternatively,
from any working directory:

```sh
python /path/to/NoFourMUBS/ProvenResults/SignedCornerPSDPrune/verify.py \
  --project-root /path/to/NoFourMUBS --all --workers 4
```

`--all` checks all 3,000 retained records across three 1,000-box configurations.
It regenerates exact algebra; tests directed arithmetic and 896 exact rational
coefficient values; checks physical controls; verifies exact seed subdivision
coverage; recomputes coefficient bounds; and independently replays the negative
principal minors with 60-digit intervals. It checks all 17 upstream SHA256
pins and the sample's exact source lines. Worker processes explicitly use
**spawn**, with all helper names available at module scope.

Without `--all`, the algebra/controls remain complete and 12 selected records
per configuration are replayed. Add `--receipt /new/path.json` to write a
machine-readable verification receipt. Existing receipt files are not
silently overwritten.

Tested environment: Python 3.13.5, mpmath 1.3.0, SymPy 1.14.0, g++ 14.2.0,
Linux x86-64 with ordinary IEEE-754 binary64 arithmetic. Python 3.10+ is
required by the code. `requirements.txt` pins the tested Python libraries.
The predicate itself needs only mpmath and the C++ compiler/runtime; SymPy
is used only by the verifier. No Julia, FLINT, SciPy, cluster, or optional
side-chart data is needed.

The C++ core is compiled on first use into a source-hash-keyed temporary
cache with `-fno-fast-math -ffp-contract=off`. Compilation is atomic, so local
spawn workers do not consume a partially built library. No compiled binary
is included in the overlay. The final clean-checkout receipt also exercises
a fresh compiler cache.

## Public predicate

With the repository on Python's import path:

```python
from fractions import Fraction
from ProvenResults.SignedCornerPSDPrune.predicate import predicate

result = predicate(
    centers,                 # four ints, Fractions, or exact finite binary floats
    radii,                   # four positive, independently specified seed radii
    extra=True,              # extra two-side-column family at the root
    seed_depth=8,
    seed_nodes=255,
    q_depth=8,
    q_nodes=511,
)
if result['ok']:
    # The entire original closed seed box has no physical strict-D0 completion.
    consume_certificate(result['leaves'])
```

Centers and half-widths are **radians**, not pi/3 units. No matrix-entry or
projector radius is accepted or inferred. The four input half-widths may be
unequal; both transposition and exact child construction preserve them.

Only `ok=True` authorizes exclusion. `ok=False` is inconclusive, including
budget exhaustion and inability to separate a rational denominator. Invalid
input or configuration raises `ValueError`. Missing compiler/runtime support
raises an error rather than producing an acceptance. `side_predicate` is a
lower-level single-orientation diagnostic; use `predicate` for the retained
campaign result. `exclude_box` is an alias of `predicate`.

A call returns a seed-cover certificate with closed binary leaf paths. Each
leaf retains its orientation/scaling/template providers, 112 outward
coefficient endpoints per provider, and a q/sign cover with explicit negative
principal-minor witnesses. These are the objects checked by `verify.py`.
The API uses process-local interval state; use process workers, not concurrent
threads sharing an interval context.

### Cost/strength profiles

| Profile | Arguments beyond centers/radii | Closed / 1000 | CPU-s / box |
|---|---|---:|---:|
| Fast | `extra=False, seed_depth=0` | 912 | 0.00873 |
| Root extra | `extra=True, seed_depth=0` | 930 | 0.01696 |
| Bounded, default | `extra=True, seed_depth=8` | 972 | 0.03464 |

The default already tries cheap providers first. Running a separate fast call
and then re-running the default duplicates that first stage; it is not needed
for this implementation. The bounded pilot used at most 89 seed nodes and
actual accepted depth 7, within the configured caps 255 and 8.

Timing is summed serial predicate CPU time with a warm compiled core, excluding
one-time compilation and JSON serialization. Driver CPU and wall times are
retained separately. The largest observed individual bounded cost was 1.787
CPU-s. The old module's 0.43981 CPU-s/box is an archive measurement, not a
same-hardware controlled comparison. No throughput or closure-rate claim is
made for the full multi-million-box campaign.

## Reproducing the pilot

Only the same deterministic 1,000-box sample is supported by this pilot driver;
it does not launch a full-list scan or cluster run.

```sh
python ProvenResults/SignedCornerPSDPrune/pilot.py \
  --project-root . --mode bounded --output /new/path/pilot_bounded.jsonl
```

Choose `--mode fast` or `--mode root` for the other profiles. The output path
must not already exist. The associated summary is written beside it.

Source selection is `1+floor(k*(338054-1)/999)`, k=0,...,999. Each seed radius
is an outward upper enclosure of `pi/2^level+2^(-40)`. Cached R bins and
nearest-class/distance labels are audited **metadata only**, never part of an
acceptance test.

## Files and remaining scope

`engine.cpp` contains interval arithmetic, Taylor jets, moment formulas,
principal-minor witnesses, and bounded q covers. `predicate.py` handles exact
rational boxes, Tao guards, provider staging, and bounded seed covers.
`determinant_terms.hpp` retains all 48 integer coefficients; its table is
regenerated by the verifier. `exact_reference.py` is a separate rational
complex arithmetic reference for the full coefficient evaluations.
`data/pilot_{fast,root,bounded}.jsonl` contains every attempted box and its
certificate or unresolved status. The associated summary JSON files include
class-specific closure and timing. `INPUTS.json` labels and pins upstream
inputs. `UNRESOLVED.json` identifies the 28 remaining sample boxes.

No existing registry, campaign list, production certificate, or source theorem
is modified. An integrator can register this module as an additional strict-D0
prune after replay. It does not require SideTriplePrune, a carrier chart, or a
FourierCornerRigidity gap bound. It neither closes the active F6 class globally
nor proves population-wide stationary-class coverage. The theorem is general;
the retained numerical application proves precisely the boxes in the receipts.
