"""Normal-form leaves, and balls given by their record.

On ball 1016 (a hard ball):
1. close on the level-3 cell (4, 1, 1, 4) gives one normal-form leaf; it verifies (CELL CLOSED);
2. refused: a pattern's claimed verdict changed, a pattern left out of the certificate, the certificate bound to another
   record or to another cover, the leaf node moved to a sibling cell (its record does not contain that cell);
3. on the level-2 cell (2, 0, 0, 2) the witness leaves a pattern open: the attempt stops there and the cell is split;
4. a ball given by its record file (the record of cell 3:(4, 1, 1, 4), as any ball): close and verify.
"""
import json, os
import pytest
from conftest import cli, gz_json, leaves, to_gz, write
from certifier.verify import verify

LEAF = '3_4_1_1_4.json.gz'


def variant(src, tmp_path, name, tree=None, edit=None):
    t = json.load(open(os.path.join(src, 'tree.json'))); f = leaves(src)
    if edit: x = gz_json(f[LEAF]); edit(x); f[LEAF] = to_gz(x)
    return write(str(tmp_path / name), tree(t) if tree else t, f)


def test_close_then_verify(cell1016):
    assert json.load(open(os.path.join(cell1016, 'tree.json')))['tree'] == {'normal_form': '3_4_1_1_4'}
    r = verify(cell1016, 1016, workers=1)
    assert r['verdict'] == 'CELL CLOSED' and r['counts'] == {'NORMAL FORM EMPTY': 1}


def flip(x):
    p = x['normal_form']['patterns']['0']; p['status'] = 'CLASSIFIED' if p['status'] == 'EXCLUDED' else 'EXCLUDED'


def drop(x): del x['normal_form']['patterns'][str(len(x['normal_form']['patterns']) - 1)]
def other_record(x): x['normal_form']['record_sha256'] = '0' * 64
def other_cover(x): x['normal_form']['pattern_sha256'] = '0' * 64


@pytest.mark.parametrize('edit', [flip, drop, other_record, other_cover])
def test_refused_certificates(cell1016, tmp_path, edit):
    r = verify(variant(cell1016, tmp_path, edit.__name__, edit=edit), 1016, workers=1)
    assert r['verdict'] == 'OPEN' and r['counts'] == {'FAILED': 1}


def test_refused_moved_leaf(cell1016, tmp_path):
    def moved(t): return dict(t, root=[3, [4, 1, 1, 5]], tree={'normal_form': '3_4_1_1_5'})
    d = variant(cell1016, tmp_path, 'moved', tree=moved)
    f = leaves(d); x = gz_json(f.pop(LEAF)); x['cell'] = [4, 1, 1, 5]
    write(d, json.load(open(os.path.join(d, 'tree.json'))), {'3_4_1_1_5.json.gz': to_gz(x)})
    r = verify(d, 1016, workers=1)
    assert r['verdict'] == 'OPEN' and r['counts'] == {'FAILED': 1}


def test_open_pattern_splits(tmp_path):
    code, log = cli('close', 1016, tmp_path, '--cell', '2:2,0,0,2', '--max-level', 2, '--workers', 1)
    assert code == 1, log
    s = json.load(open(tmp_path / 'b1016' / 'summary.json'))
    assert s['verdict'] == 'OPEN' and 'remains' in s['open_cells'][0][2]


def test_ball_from_record(cell1016, tmp_path):
    rec = gz_json(leaves(cell1016)[LEAF])['record']
    (tmp_path / 'ball.json').write_text(json.dumps({'record': rec}))
    code, log = cli('close', tmp_path / 'ball.json', tmp_path, '--workers', 1)
    assert code == 0, log
    [d] = [p for p in os.listdir(tmp_path) if p.startswith('br')]
    r = verify(str(tmp_path / d), workers=1)
    assert r['verdict'] == 'CLOSED'
