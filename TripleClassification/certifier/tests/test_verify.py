"""close and verify: the format, the tree, resuming, native leaves and the atlas.

On ball 1016's level-3 cell (4, 1, 1, 4), closed by one normal-form leaf (conftest.cell1016):
1. it verifies as a directory, as one .tar file and unpacked (leaves/); not as a certificate of another ball;
2. refused: a record that does not match its hash, the record naming another cell, the leaf named as another cell, the
   leaf replaced by an outside node (the cell meets the ball), an open node, missing leaf files, an incomplete partition;
3. a second close resumes from the journal and searches nothing; a leaves.tar cut in the middle of a member is repaired;
On ball 2254:
4. close gives one native leaf (the frozen whole-ball certifier on the original record) and no leaf files; it verifies;
5. a native leaf below the root: the level-1 cell (1, 1, 1, 1) from its own record;
6. a native leaf claimed for a ball (491) or a cell (825's level-5 cell (10, 15, 16, 8)) the native certifier does not
   close is refused;
7. a manifest of ball 2254's certificate; verify-all: ball 2254 CLOSED, the atlas not (the other balls are missing);
   run again, nothing is verified again.
"""
import json, os, shutil, tarfile
import pytest
from conftest import cli, gz_json, leaves, to_gz, write
from certifier import native_leaf
from certifier.certificate import SCHEMA, leaf
from certifier.verify import verify

LEAF = '3_4_1_1_4'


def variant(src, tmp_path, name, tree=None, files=None):
    t = json.load(open(os.path.join(src, 'tree.json'))); f = leaves(src)
    return write(str(tmp_path / name), tree(t) if tree else t, files(f) if files else f)


def test_layouts(cell1016, tmp_path):
    assert verify(cell1016, 1016, workers=1)['verdict'] == 'CELL CLOSED'
    one = tmp_path / 'b1016.tar'
    with tarfile.open(one, 'w') as t: t.add(cell1016, arcname='b1016')
    assert verify(str(one), 1016, workers=1)['verdict'] == 'CELL CLOSED'
    flat = tmp_path / 'flat'
    os.makedirs(flat / 'leaves')
    for n, b in leaves(cell1016).items(): (flat / 'leaves' / n).write_bytes(b)
    shutil.copy(os.path.join(cell1016, 'tree.json'), flat / 'tree.json')
    assert verify(str(flat), 1016, workers=1)['verdict'] == 'CELL CLOSED'
    with pytest.raises(ValueError): verify(cell1016, 1017, workers=1)


def edit_leaf(**change):
    def f(files):
        d = gz_json(files[LEAF + '.json.gz']); d.update(change); return dict(files, **{LEAF + '.json.gz': to_gz(d)})
    return f


def node(n): return lambda t: dict(t, tree=n)


@pytest.mark.parametrize('name,tree,files', [
    ('a record that does not match its hash', None, edit_leaf(record_sha256='0' * 64)),
    ('the record naming another cell', None, edit_leaf(cell=[4, 1, 1, 5])),
    ('the leaf named as another cell', node({'normal_form': '3_4_1_1_5'}), None),
    ('the leaf replaced by an outside node', node({'outside': True}), None),
    ('an open node', node({'open': True}), None),
    ('missing leaf files', None, lambda f: {}),
    ('an incomplete partition', node({'children': [{'outside': True}] * 15}), None)])
def test_refused(cell1016, tmp_path, name, tree, files):
    r = verify(variant(cell1016, tmp_path, 'b1016', tree, files), 1016, workers=1)
    assert r['verdict'] == 'OPEN' and r['failed'], name


def test_resume(cell1016, tmp_path):
    out = tmp_path / 'resume'; shutil.copytree(cell1016, out / 'b1016')
    args = ('close', 1016, out, '--cell', '3:4,1,1,4', '--max-level', 3, '--workers', 1)
    code, log = cli(*args)
    s = json.load(open(out / 'b1016' / 'summary.json'))
    assert code == 0 and s['per_level']['3']['resumed'] == 1 and s['search_core_hours'] == 0, log
    tar = out / 'b1016' / 'leaves.tar'
    with open(tar, 'r+b') as f: f.truncate(1000)                    # cut inside the first member
    code, log = cli(*args)
    s = json.load(open(out / 'b1016' / 'summary.json'))
    assert code == 0 and s['per_level']['3']['resumed'] == 0, log
    assert verify(str(out / 'b1016'), 1016, workers=1)['verdict'] == 'CELL CLOSED'
    with tarfile.open(tar) as t: assert sorted(m.name for m in t) == ['leaves/%s.json.gz' % LEAF]


@pytest.fixture(scope='module')
def ball2254(tmp_path_factory):
    out = tmp_path_factory.mktemp('close')
    code, log = cli('close', 2254, out, '--max-level', 0, '--workers', 1)
    assert code == 0, log
    return out


def test_native_whole_ball(ball2254):
    assert not os.path.exists(ball2254 / 'b2254' / 'leaves.tar')    # a native whole-ball certificate is its tree
    code, log = cli('verify', ball2254 / 'b2254', '--ball', 2254, '--json', ball2254 / 'report.json')
    r = json.load(open(ball2254 / 'report.json'))
    assert code == 0 and r['verdict'] == 'CLOSED' and r['counts'] == {'NATIVE CERTIFIED EMPTY': 1}, log


def test_native_below_the_root(tmp_path):
    from certifier.search import close
    files = close.native_attempt(2254, 1, [1, 1, 1, 1])
    assert files is not None
    p = tmp_path / 'in.json.gz'; p.write_bytes(files['1_1_1_1_1.json.gz'])
    assert native_leaf.check(2254, 1, [1, 1, 1, 1], str(p))[0] == 'NATIVE CERTIFIED EMPTY'


def test_native_leaf_below_the_root_the_certifier_refuses(tmp_path):
    """Ball 825's level-5 cell (10, 15, 16, 8): its record contains the cell and its branch is the ball's, but the
    native certifier does not close it (over 500 patterns)."""
    from certifier.search import close
    name = '5_10_15_16_8'
    tree = dict(schema=SCHEMA, ball=825, root=[5, [10, 15, 16, 8]], tree={'native': name})
    cert = write(str(tmp_path / 'b825'), tree, {name + '.json.gz': leaf(close.cell_record(825, 5, [10, 15, 16, 8]))})
    r = verify(cert, 825, workers=1)
    assert r['verdict'] == 'OPEN' and 'native certifier' in r['failed'][0][2]


def test_native_leaf_the_certifier_refuses(tmp_path):
    cert = write(str(tmp_path / 'b491'), dict(schema=SCHEMA, ball=491, root=[0, [0, 0, 0, 0]], tree={'native': '0_0_0_0_0'}), {})
    r = verify(cert, 491, workers=1)
    assert r['verdict'] == 'OPEN' and 'native certifier' in r['failed'][0][2]


def test_verify_all(tmp_path, ball2254):
    shutil.copytree(ball2254 / 'b2254', tmp_path / 'b2254')
    code, log = cli('manifest', tmp_path); assert (tmp_path / 'MANIFEST').read_text() == '2254 b2254\n', log
    code, log = cli('verify-all', tmp_path / 'MANIFEST', '--workers', 1)
    s = json.loads(log[log.index('{'):])
    assert code == 1 and s['closed'] == 1 and not s['all_closed'] and s['atlas_balls'] == 2775
    code, log = cli('verify-all', tmp_path / 'MANIFEST', '--workers', 1)  # resumed: nothing verified again
    assert 'ball 2254' not in log
