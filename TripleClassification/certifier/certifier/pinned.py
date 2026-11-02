"""The frozen code every check builds on, loaded from the repository after its SHA-256 manifest is verified.

`PINNED.sha256` lists 40 files of the NoFourMUBS repository at commit 914919b (PR #4), by path, with their SHA-256:

- PR #4's plane checker, `TripleClassification/code/plane_*.py`, with `anchored_column_certificate.py`,
  `gamma_test.py`, `nothird.py` and `stagec_guard.py`;
- the frozen native whole-ball certifier, `proof/theorems/TC_triple_classification/family_neighbourhoods/` (every
  `*.py`, `PROOF.md`, `requirements.txt`), the seed-atlas certificate code it imports (`proof/seed_atlas/cert`,
  `proof/seed_atlas/driver`, `proof/atlas/stagec.py`) and the documents its source binding hashes;
- the original seed atlas, `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (SHA-256 33ad9798...).

`APPROVED` adds one later file of the one-tree checker, `TripleClassification/code/gamma_exact.py`, at its approved hash.
`REVIEWED` adds the cubic normal-form witness (`normal_form/` of this package: run_cell.py, witness.py, moving.py), the
repaired code of its algebraic review of 2 November 2026, byte-identical.

Each is read from the repository at its own path, except the five `plane_*_certificate.py` files, which PR #4 added
and main does not have: they are kept in `pr4/` of this package, byte-identical. The paths matter: the native
certifier's source binding (`run.binding`, id aaab342c...) hashes its sources by their paths relative to the repository
root, and the plane checker requires that binding.

The repository root is the one this package lies in, or `MUB_CERTIFIER_ROOT` (`--root`); the package must lie inside
it (PR #4's checker names its own files relative to the root). Importing this module checks every file against the
manifest and the binding, puts the pinned directories first on `sys.path`, and imports the pinned modules under the
names used below; it refuses to load on any mismatch. Nothing in this package changes these files or their behaviour.
"""
import functools, hashlib, os, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = Path(os.environ.get('MUB_CERTIFIER_ROOT') or HERE.parents[2]).resolve()
MANIFEST, MANIFEST_SHA256 = HERE / 'PINNED.sha256', '26eb5e2d6c4ea36a2da0a719e9e6817e37ac47bf04f67ee8b9d8de326cb8a661'
PR4 = {'TripleClassification/code/%s_certificate.py' % k: HERE / 'pr4' / ('%s_certificate.py' % k)
       for k in ('plane_cell', 'plane_column', 'plane_frontier', 'plane_joint', 'plane_tree')}
APPROVED = {'TripleClassification/code/gamma_exact.py':      # the exact lower bound of Gamma_F (approved one-tree checker)
            'e6413eba58fe16d41bbc8add08ce6c32deec8133943f91cb461a3e04a40672a3'}
REVIEWED = {'run_cell.py': 'e17f9cb22aed9a00b236e078e10180eaccd98071f36b5dc8ed72ad56d3849ddc',     # the normal-form witness
            'witness.py': '55aff65102feb5fd965eb6ada740dcf9f057876409e284e8e20463bc17801eed',
            'moving.py': '757672df04467bdf4014522eaf5ab778e343322e686863e4d6503b438f0a31ac'}
NATIVE_BINDING = 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7'
ATLAS = ROOT / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'


def sha256(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def files():
    """{repository path: (the file read for it, its SHA-256)}: the manifest's files and the approved ones."""
    out = {rel: (ROOT / rel, digest) for rel, digest in APPROVED.items()}
    out.update({'normal_form/' + name: (HERE / 'normal_form' / name, digest) for name, digest in REVIEWED.items()})
    for line in MANIFEST.read_text().splitlines():
        digest, rel = line.split('  ', 1); out[rel] = (PR4.get(rel, ROOT / rel), digest)
    return out


def verify_manifest():
    """Every pinned file has its recorded SHA-256; returns the manifest's own SHA-256."""
    if sha256(MANIFEST) != MANIFEST_SHA256: raise ImportError('the pinned manifest has changed')
    if ROOT not in HERE.parents: raise ImportError('this package is not inside the repository root %s' % ROOT)
    for rel, (path, digest) in files().items():
        if not path.is_file(): raise ImportError('pinned file missing: %s (is %s a clone of NoFourMUBS?)' % (path, ROOT))
        if sha256(path) != digest: raise ImportError('pinned file changed: %s' % path)
    return MANIFEST_SHA256


def require_pinned_modules():
    """Every module loaded from a directory of pinned files is a pinned file: nothing shadows one."""
    paths = {path.resolve() for path, _ in files().values()}; dirs = {p.parent for p in paths}
    for m in list(sys.modules.values()):
        f = getattr(m, '__file__', None)
        if f and Path(f).resolve().parent in dirs and Path(f).resolve() not in paths:
            raise ImportError('module %s was loaded from an unpinned file %s' % (m.__name__, f))


verify_manifest()
os.environ['TC_ROOT'] = str(ROOT)                    # the pinned modules locate their tree from this
os.environ.pop('TC_LEAF_CACHE', None)
for d in ('proof/seed_atlas/driver', 'proof/seed_atlas/cert', 'proof/theorems/TC_triple_classification/family_neighbourhoods',
          'TripleClassification/code'):
    sys.path.insert(0, str(ROOT / d))
sys.path.insert(0, str(HERE / 'pr4'))

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
import gamma_exact                                  # exact lower bound of Gamma_F (g_cell)
sys.path.insert(0, str(HERE / 'normal_form'))
import run_cell as normal_form                      # the normal-form witness: setup, one pattern, certificate checks
os.environ['TC_ROOT'] = str(ROOT)                    # run_cell sets it to its own tree on import

require_pinned_modules()
if native.ROOT != ROOT: raise ImportError('the native certifier does not see the repository root')
if native.binding(ATLAS)['id'] != NATIVE_BINDING: raise ImportError('native source binding changed')

require = column.require                            # raises ValueError(message) unless the condition holds


BALLS = {}                                          # balls given by their record: {key: record}


def register(record):
    """A ball given by its record (any ball in the atlas format, not only a seed ball): its key, 'r' and the first 16
    hex digits of the record's SHA-256."""
    key = 'r' + frontier.jsonsha(record)[:16]; BALLS[key] = record; return key


@functools.lru_cache(maxsize=None)
def _seed(ball): return frontier.original_record(ROOT, ball)


def original(ball):
    """The record of `ball`: a seed ball's (an atlas index: the pinned atlas, its SHA-256 checked by
    frontier.original_record), or a registered ball's (a key from `register`)."""
    if isinstance(ball, str):
        require(ball in BALLS, 'unknown ball %s' % ball); return BALLS[ball]
    return _seed(ball)


def atlas_size():
    return len(frontier.read_json(ATLAS)['seeds'])


def tidy_path():
    """The pinned modules prepend their directories to sys.path on every call; drop the repeats."""
    seen = set(); sys.path[:] = [p for p in sys.path if not (p in seen or seen.add(p))]
