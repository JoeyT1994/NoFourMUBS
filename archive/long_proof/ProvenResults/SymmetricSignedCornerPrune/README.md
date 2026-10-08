# SymmetricSignedCornerPrune

New global signed-moment necessary seed inequalities, plus an outward strict-D0 predicate. See `PROOF.md` for every coefficient and input assumption. Both side signs are tested; seed boxes crossing R=0 are permitted. No claim is made about an F6 matrix neighborhood.

## Reproduce

Run in a Python environment with mpmath 1.3.0 and SymPy 1.14.0 (NumPy is needed only for the sibling construction module):

```sh
python ProvenResults/SymmetricSignedCornerPrune/verify.py --project-root /path/to/NoFourMUBS --all
```

The retained receipt records PASS: exact coefficient and moment identities, source hashes, known-D0 rejection controls, source sample audit, and all 1,000 outward box decisions. The demonstrated total is 511 excluded, 489 unresolved. `ok=True` means no physical **strict-D0 completion**, not quartet exclusion at an arbitrary seed.

For a rational box in radians:

```python
from fractions import Fraction
from ProvenResults.SymmetricSignedCornerPrune import predicate
result = predicate(
    [Fraction(-3,2), Fraction(1), Fraction(1), Fraction(-3,2)],
    [Fraction(1,8192)]*4,
)
```

The example illustrates the interface, not a claimed accepting box. A CLI accepts exact rational strings as `--centers` and `--radii`.

Re-run the sample pilot, writing a **new** output shard:

```sh
python ProvenResults/SymmetricSignedCornerPrune/pilot.py \
  ProvenResults/SymmetricSignedCornerPrune/data/sample_1000.json \
  /new/output/d0_pilot_00000.jsonl
```

The pilot also writes one small run-level summary; its cell records are bundled into one JSONL shard. The data and receipt from the completed run are already included. Cached source R bounds are never used to accept.
