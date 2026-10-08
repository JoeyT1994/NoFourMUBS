# FourierTransverseStability_v2

A signed-square-root transverse chart for physical order-six Hadamards. It
covers both matched sheets and excludes both nonmatched physical pairings
on every accepted box. It needs **R>0**, not inf R>1 and not all-400 maximality.
It does not certify arbitrary R=0 fibers or the entire shoulder.

The canonical family rectangle is
`P in [-1/128,3/64]`, `q in [-1/64,3/128]` (turns).
The normal chart has `|u|<=1/10`, `|xi|<=5/32` (radians), and a moving-reference
row AND column projector bound `d_both <= |u|/3+|xi|/5`.
The runtime predicate uses a sharper polynomial bound and the existing
**projector** tube radius `1/36`.

## Verify once

```sh
python3 -B ProvenResults/FourierTransverseStability_v2/verify.py --workers 4
```

Requirements: Python 3, NumPy, mpmath, SymPy and a C++17 compiler (`g++`). No
network, cluster, new package installation or external solver is used.
Frozen floating arrays are exact dyadic proposals; only exact/outward
inequalities accept. The already-proved five regional matrix tubes are
hash-pinned inputs, not re-proved here.

## Use a seed-only whole-box terminal

From a Python environment whose module path includes this directory:

```python
from geometry import contains_box, standard_guard

# Four original binary64 seed centres, interpreted as exact dyadic radians.
centres = [theta_a, theta_b, theta_c, theta_d]
h = standard_guard()  # outward rational upper bound of pi/8192 + 2**-40
certificate = contains_box(centres, [h, h, h, h])
if certificate is not None:
    # Every physical R>0 completion in the WHOLE box enters a proved tube.
    # No matrix lift was performed. The R=0 slice is outside this implication.
    assert certificate["all_four_pairings_covered"]
```

A return value of `None` is inconclusive. The physical-Hadamard and R>0
hypotheses are not runtime tests of unknown matrices. No completion is
inferred from a numerical centre.

`contains_box` uses exact seed phase transforms, a scalar signed-sqrt(R)
reference coordinate, and interval distance bounds. It never reconstructs
a side or a matrix. Parameter tiles are proved once; the query does not
repeat their contraction proofs or subdivide the input box.

## Measurements

The named new `shoulder_transverse_coordinates_sample4000.json` was unavailable;
no percentage is claimed for it. On the available original 80,613-box pilot,
55,454 WHOLE standard-guarded boxes pass (68.7903936089...%).
Both secondary-neighbourhood groups have zero acceptance; see `PROOF.md`.

```sh
# Re-evaluate every retained accepted box with the final predicate at 192 bits.
python3 -B ProvenResults/FourierTransverseStability_v2/verify_measurement.py \
  --input /path/to/shoulder_boxes_pilot_full.txt.gz --workers 4

# Independently rescan every original pilot box, including all rejections.
python3 -B ProvenResults/FourierTransverseStability_v2/measure.py \
  --input /path/to/shoulder_boxes_pilot_full.txt.gz \
  --output /path/to/new_measurement_receipts --workers 4
```

The `.txt.gz` source serializes binary64 centres explicitly. Do not replace
these inputs with derived floating `p,q,u,v` centre proposals from a coordinate
sample unless original seed centres and outward transform errors are also
available. `PROOF.md` gives the reference, all hypotheses, the four-pairing
argument, exact constants, residual estimates and remaining limits.
