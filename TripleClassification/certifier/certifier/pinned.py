"""The vendored, frozen code every check builds on, loaded after its SHA-256 manifest is verified.

`_pinned/` is a byte-identical copy of 40 files of the NoFourMUBS repository at commit 914919b (PR #4), at their
repository paths:

- PR #4's plane checker, `TripleClassification/code/plane_*.py`, with `anchored_column_certificate.py`,
  `gamma_test.py`, `nothird.py` and `stagec_guard.py`;
- the frozen native whole-ball certifier, `proof/theorems/TC_triple_classification/family_neighbourhoods/` (every
  `*.py`, `PROOF.md`, `requirements.txt`), with the seed-atlas certificate code it imports (`proof/seed_atlas/cert`,
  `proof/seed_atlas/driver`, `proof/atlas/stagec.py`) and the documents its source binding hashes;
- the original seed atlas, `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (SHA-256 33ad9798...).

The paths matter: the native certifier's source binding (`run.binding`, id aaab342c...) hashes its sources by their
paths relative to the tree root, and the plane checker requires that binding. `tools/check_vendored.py` compares
every file with the repository's commit.

Importing this module checks every file against `_pinned/MANIFEST.sha256` (and the manifest against MANIFEST_SHA256),
puts the pinned directories first on `sys.path`, and imports the pinned modules under the names used below. Nothing
else in this package changes these files or their behaviour.
"""
import functools, hashlib, os, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent / '_pinned'
MANIFEST_SHA256 = '26eb5e2d6c4ea36a2da0a719e9e6817e37ac47bf04f67ee8b9d8de326cb8a661'
NATIVE_BINDING = 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7'
ATLAS = ROOT / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def verify_manifest():
    """Every vendored file has its recorded SHA-256; returns the manifest's own SHA-256."""
    manifest = ROOT / 'MANIFEST.sha256'
    if sha256(manifest) != MANIFEST_SHA256: raise ImportError('the pinned manifest has changed')
    for line in manifest.read_text().splitlines():
        digest, rel = line.split('  ', 1)
        if sha256(ROOT / rel) != digest: raise ImportError('pinned file changed: %s' % rel)
    return MANIFEST_SHA256


verify_manifest()
os.environ['TC_ROOT'] = str(ROOT)                    # the pinned modules locate their tree from this
os.environ.pop('TC_LEAF_CACHE', None)
for d in ('proof/seed_atlas/driver', 'proof/seed_atlas/cert', 'proof/theorems/TC_triple_classification/family_neighbourhoods',
          'TripleClassification/code'):
    sys.path.insert(0, str(ROOT / d))

import plane_column_certificate as column            # column proofs: Column, verify_tree, tube, pair_margin
import plane_cell_certificate as cell               # complete_cover: C1, normal form, Stage C, the complete K cover
import plane_joint_certificate as joint             # joint tube exclusion and the known-family recognition
import plane_frontier_certificate as frontier       # cell records: build_record, cell_geometry, original_record
import plane_tree_certificate as tree               # misses_ball (exact rationals)
import anchored_column_certificate as anchored      # anchored-column algebra used by the secant witness
import gamma_test                                   # Gamma_F bounds (prep, score_upper, lo, up)
import stagec_guard                                 # Stage C input preconditions
import run as native                                # the frozen native whole-ball certifier (run_ball, binding)
import native_columns                               # native column tubes (build, contract)
import patches                                      # normal_form
import seedcert                                     # Ball, certify_c1
import wholeball                                    # SEEDS, frob, spectral

for _m in (column, cell, joint, frontier, tree, anchored, gamma_test, stagec_guard, native, native_columns, patches,
           seedcert, wholeball):
    if ROOT not in Path(_m.__file__).resolve().parents: raise ImportError('%s is not the pinned file' % _m.__name__)
if native.ROOT != ROOT: raise ImportError('the native certifier does not see the pinned tree')

require = column.require                            # raises ValueError(message) unless the condition holds


@functools.lru_cache(maxsize=None)
def original(ball):
    """The atlas record of seed ball `ball` (the pinned atlas, its SHA-256 checked by frontier.original_record)."""
    return frontier.original_record(ROOT, ball)


def atlas_size():
    return len(frontier.read_json(ATLAS)['seeds'])


def tidy_path():
    """The pinned modules prepend their directories to sys.path on every call; drop the repeats."""
    seen = set(); sys.path[:] = [p for p in sys.path if not (p in seen or seen.add(p))]
