"""A native leaf: a cell closed whole by the frozen native certifier.

The native certifier (`family_neighbourhoods/run.py`, run_ball; source binding aaab342c...) closed 2,372 atlas balls
whole. For one ball record it certifies C1 and the normal form, rebuilds the complete cover of third-basis columns,
and resolves every pattern: excluded, or (an exact order-three action and a contraction q < 1 force a balanced
order-three symmetry) recognised as the known family. It returns CERTIFIED (some pattern recognised) or CERTIFIED
EMPTY. The argument was reviewed independently (NATIVE_REVIEW.md).

`check` accepts the leaf when the certifier returns either status on the right record and Stage C's input
preconditions hold for that record (pinned stagec_guard.check; a bare run_ball row does not test them):

- at level 0 the record is the original atlas ball, and the call is exactly the audited one (the pinned atlas, the
  pinned binding);
- below level 0 it is the cell's own record (its leaf file `<cell>.json.gz`), after proving that this record contains the
  whole cell (cells.contains) and that its branch is the original ball's (overlap.identify). It is run as a one-seed
  sub-atlas, as the audited trees ran sub-balls: run_ball reads the record from that file, and the binding it checks
  before and after the run is the pinned sources' with the sub-atlas's hash in place of the atlas's (`subatlas`).
"""
import gzip, hashlib, json, tempfile
from contextlib import contextmanager
from pathlib import Path
from flint import ctx
from . import cells, overlap, pinned

R = pinned.native
CERTIFIED = ('CERTIFIED', 'CERTIFIED EMPTY')


def check(ball, level, cell, path=None):
    """The leaf check (above). Returns 'NATIVE CERTIFIED' or 'NATIVE CERTIFIED EMPTY' and the certifier's row;
    raises if the leaf is refused."""
    if level == 0:
        pinned.require(list(cell) == [0, 0, 0, 0], 'invalid level-0 cell')
        ctx.prec = 224                           # as after loading the original ball's normal form (overlap)
        rec = pinned.original(ball); binding = R.binding(pinned.ATLAS)['id']
        pinned.require(binding == pinned.NATIVE_BINDING, 'native source binding changed')
        row = R.run_ball(pinned.ATLAS, ball, binding)
    else:
        rec = cells.record(path, ball, level, cell)
        cells.contains(ball, rec, level, cell)
        overlap.identify(ball, rec, level, cell)
        with subatlas(rec, ball, level, cell) as (path, binding): row = R.run_ball(path, 0, binding)
    pinned.require(row.get('status') in CERTIFIED, 'native certifier: %s' % row.get('reason', row.get('status')))
    pinned.stagec_guard.check(R, rec)            # Stage C input preconditions (raises on failure)
    return 'NATIVE ' + row['status'], row


@contextmanager
def subatlas(rec, ball, level, cell):
    """A one-seed atlas file holding `rec`, and run.binding pointed at it for the duration (run_ball calls the module's
    binding before and after the run). Yields (path, expected binding id)."""
    with tempfile.TemporaryDirectory(prefix='native.') as td:
        path = Path(td) / 'cell.json.gz'
        doc = dict(seeds=[rec], info=dict(onetree=dict(ball=ball, level=level, cell=list(cell))))
        path.write_bytes(gzip.compress(json.dumps(doc).encode(), mtime=0))
        pinned_binding = R.binding

        def binding(atlas):                      # the pinned binding's sources, with the sub-atlas's hash
            files = {str(q.relative_to(R.ROOT)): hashlib.sha256(q.read_bytes()).hexdigest() for q in R.source_paths()}
            v = dict(schema='tc-native-allk-v1+onetree', atlas_sha256=hashlib.sha256(Path(atlas).read_bytes()).hexdigest(),
                     sources=files, precision=160)
            v['id'] = hashlib.sha256(json.dumps(v, sort_keys=True).encode()).hexdigest(); return v
        R.binding = binding
        try: yield path, binding(path)['id']
        finally: R.binding = pinned_binding
