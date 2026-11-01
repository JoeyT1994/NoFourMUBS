"""close and verify on small certificates (the tests of the one-tree checker, TripleClassification/code/test_onetree.py).

On ball 491's level-4 cell (12, 5, 12, 12), closed by one plane leaf:
1. close, then verify: CELL CLOSED; the same certificate as one .tar file, and unpacked (leaves/), verifies too;
2. refused: a changed proposal, the record naming another cell, the leaf node renamed to another cell, the leaf
   replaced by an outside node (the cell meets the ball), an open node, missing leaf files, an incomplete partition;
3. a second close resumes from the journal and searches nothing; a journalled leaf whose files are gone is searched
   again; a leaves.tar cut in the middle of a member is repaired;
On ball 2254:
4. close gives one native leaf (the frozen whole-ball certifier on the original record) and no leaf files; it verifies;
5. a native leaf below the root: the level-1 cell (1, 1, 1, 1) from its own record;
On ball 491:
6. a native leaf claimed for the whole ball, which the native certifier does not close, is refused; so is a native
   leaf below the root that it does not close (ball 825's level-5 cell (10, 15, 16, 8), from its own record).
7. a manifest of ball 2254's certificate; verify-all: ball 2254 CLOSED, the atlas not (the other balls are missing);
   run again, nothing is verified again.
"""
import json, os, shutil, tarfile
import pytest
from conftest import cli, gz_json, leaves, to_gz, write
from certifier import cells, native_leaf, pinned
from certifier.verify import verify


@pytest.fixture(scope='module')
def cell491(tmp_path_factory):
    out = tmp_path_factory.mktemp('close')
    code, log = cli('close', 491, out, '--cell', '4:12,5,12,12', '--max-level', 4, '--workers', 1)
    assert code == 0, log
    return str(out / 'b491')


def variant(src, tmp_path, name, tree=None, files=None):
    t = json.load(open(os.path.join(src, 'tree.json'))); f = leaves(src)
    return write(str(tmp_path / name), tree(t) if tree else t, files(f) if files else f)


def test_close_then_verify(cell491, tmp_path):
    r = verify(cell491, 491, workers=1)
    assert r['verdict'] == 'CELL CLOSED' and r['scope'] == 'all' and r['counts'] == {'CERTIFIED_EMPTY_RECORDED_H_CELL': 1}
    one = tmp_path / 'b491.tar'
    with tarfile.open(one, 'w') as t: t.add(cell491, arcname='b491')
    assert verify(str(one), 491, workers=1)['verdict'] == 'CELL CLOSED'
    flat = tmp_path / 'flat'
    os.makedirs(flat / 'leaves')
    for n, b in leaves(cell491).items(): (flat / 'leaves' / n).write_bytes(b)
    shutil.copy(os.path.join(cell491, 'tree.json'), flat / 'tree.json')
    assert verify(str(flat), 491, workers=1)['verdict'] == 'CELL CLOSED'
    with pytest.raises(ValueError): verify(cell491, 492, workers=1)


LEAF = '4_12_5_12_12'


def edit_proposal(f):
    p = gz_json(f[LEAF + '.proposal.json.gz']); p['record_sha256'] = '0' * 64; return dict(f, **{LEAF + '.proposal.json.gz': to_gz(p)})


def edit_record(f):
    d = gz_json(f[LEAF + '.input.json.gz']); d['cell'] = [12, 5, 12, 13]; return dict(f, **{LEAF + '.input.json.gz': to_gz(d)})


def node(n): return lambda t: dict(t, tree=n)


@pytest.mark.parametrize('name,tree,files', [
    ('a changed proposal', None, edit_proposal),
    ('the record naming another cell', None, edit_record),
    ('the leaf named as another cell', node({'leaf': '4_12_5_12_13'}), None),
    ('the leaf replaced by an outside node', node({'outside': True}), None),
    ('an open node', node({'open': True}), None),
    ('missing leaf files', None, lambda f: {}),
    ('an incomplete partition', node({'children': [{'outside': True}] * 15}), None)])
def test_refused(cell491, tmp_path, name, tree, files):
    r = verify(variant(cell491, tmp_path, 'b491', tree, files), 491, workers=1)
    assert r['verdict'] == 'OPEN' and r['failed'], name


def test_resume(cell491, tmp_path):
    out = tmp_path / 'resume'; shutil.copytree(cell491, out / 'b491')
    code, log = cli('close', 491, out, '--cell', '4:12,5,12,12', '--max-level', 4, '--workers', 1)
    s = json.load(open(out / 'b491' / 'summary.json'))
    assert code == 0 and s['per_level']['4']['resumed'] == 1 and s['search_core_hours'] == 0, log
    tar = out / 'b491' / 'leaves.tar'; size = tar.stat().st_size
    with open(tar, 'r+b') as f: f.truncate(1000)                    # cut inside the first member
    code, log = cli('close', 491, out, '--cell', '4:12,5,12,12', '--max-level', 4, '--workers', 1)
    s = json.load(open(out / 'b491' / 'summary.json'))
    assert code == 0 and s['per_level']['4']['resumed'] == 0, log
    assert verify(str(out / 'b491'), 491, workers=1)['verdict'] == 'CELL CLOSED'
    with tarfile.open(tar) as t: assert sorted(m.name for m in t) == ['leaves/%s.input.json.gz' % LEAF, 'leaves/%s.proposal.json.gz' % LEAF]


@pytest.fixture(scope='module')
def ball2254(tmp_path_factory):
    out = tmp_path_factory.mktemp('close')
    code, log = cli('close', 2254, out, '--max-level', 1, '--workers', 1)
    assert code == 0, log
    return out


def test_native_whole_ball(ball2254):
    assert not os.path.exists(ball2254 / 'b2254' / 'leaves.tar')    # a native whole-ball certificate is its tree
    code, log = cli('verify', ball2254 / 'b2254', '--ball', 2254, '--json', ball2254 / 'report.json')
    r = json.load(open(ball2254 / 'report.json'))
    assert code == 0 and r['verdict'] == 'CLOSED' and r['counts'] == {'NATIVE CERTIFIED EMPTY': 1}, log


def test_native_below_the_root(tmp_path):
    from certifier.search import close, plane
    close.OPT.update(native_caps={1: 1800})
    files = close.native_attempt(2254, 1, [1, 1, 1, 1])
    assert files is not None
    p = tmp_path / 'in.json.gz'; p.write_bytes(files['1_1_1_1_1.input.json.gz'])
    assert native_leaf.check(2254, 1, [1, 1, 1, 1], str(p))[0] == 'NATIVE CERTIFIED EMPTY'


def test_native_leaf_below_the_root_the_certifier_refuses(tmp_path, copy_of):
    """Ball 825's level-5 cell (10, 15, 16, 8): its record contains the cell and its branch is the ball's, but the
    native certifier does not close it (over 500 patterns); the plane certificate needs gamma witnesses."""
    src = copy_of('gamma_825'); name = '5_10_15_16_8'
    tree = dict(schema='onetree-v1', ball=825, root=[5, [10, 15, 16, 8]], tree={'native': name})
    cert = write(str(tmp_path / 'b825'), tree, {name + '.input.json.gz': leaves(src)[name + '.input.json.gz']})
    r = verify(cert, 825, workers=1)
    assert r['verdict'] == 'OPEN' and 'native certifier' in r['failed'][0][2]


def test_native_leaf_the_certifier_refuses(tmp_path):
    cert = write(str(tmp_path / 'b491'), dict(schema='onetree-v1', ball=491, root=[0, [0, 0, 0, 0]], tree={'native': '0_0_0_0_0'}), {})
    r = verify(cert, 491, workers=1)
    assert r['verdict'] == 'OPEN' and 'native certifier' in r['failed'][0][2]


def test_verify_all(tmp_path, ball2254):
    shutil.copytree(ball2254 / 'b2254', tmp_path / 'b2254')
    code, log = cli('manifest', tmp_path); assert (tmp_path / 'MANIFEST').read_text() == '2254 b2254\n', log
    code, log = cli('verify-all', tmp_path / 'MANIFEST', '--workers', 1)
    s = json.loads(log[log.index('{'):])
    assert code == 1 and s['closed'] == 1 and s['by_scope'] == {'all': 1} and not s['all_closed'] and s['atlas_balls'] == 2775
    code, log = cli('verify-all', tmp_path / 'MANIFEST', '--workers', 1)  # resumed: nothing verified again
    assert 'ball 2254' not in log
