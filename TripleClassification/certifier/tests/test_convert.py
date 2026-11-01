"""convert: a full-format certificate of onetree.py (every column's proof tree stored) to the witness-only format.

tests/data/full holds two one-leaf certificates in the full format: ball 194's level-4 cell (3, 13, 5, 3) (secant
witnesses, made by onetree.py close) and ball 793's level-2 cell (2, 0, 0, 1) (joint-known witnesses, from ball 793's
atlas certificate on the cluster). Both verify under onetree.py check (CELL CLOSED).
1. each converts, with the same verdict, scope and counts, into a certificate that stores no column tree;
2. verify refuses the full format itself (and says to convert it);
3. a full-format certificate with a changed witness, or a proposal bound to another record, converts to nothing: the
   same leaf is refused, as onetree.py check refuses it;
4. convert does not overwrite an existing certificate.
"""
import json, os
import pytest
from conftest import DATA, gz_json, leaves, to_gz, write
from certifier.certificate import RECORD_KEYS, convert
from certifier.verify import verify

FULL = dict(secant_194=(194, '4_3_13_5_3', 'CERTIFIED_EMPTY_RECORDED_H_CELL'),
            known_793=(793, '2_2_0_0_1', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL'))


@pytest.mark.parametrize('name', sorted(FULL))
def test_convert(tmp_path, name):
    ball, leaf, status = FULL[name]; src = os.path.join(DATA, 'full', name)
    r = convert(src, tmp_path / 'out', workers=1)
    assert r['verdict'] == 'CELL CLOSED' and r['scope'] == 'all' and r['counts'] == {status: 1}
    files = leaves(str(tmp_path / 'out'))
    assert sorted(files) == [leaf + '.json.gz']
    new = gz_json(files[leaf + '.json.gz']); old, inp = (gz_json(leaves(src)[leaf + s]) for s in ('.proposal.json.gz', '.input.json.gz'))
    assert set(new) == set(RECORD_KEYS) | {'depth', 'witnesses'} and new['witnesses'] == old['witnesses']
    assert all(new[k] == inp[k] for k in RECORD_KEYS)
    assert len(files[leaf + '.json.gz']) < sum(len(leaves(src)[leaf + s]) for s in ('.proposal.json.gz', '.input.json.gz'))


def test_verify_refuses_the_full_format():
    with pytest.raises(ValueError, match='convert'): verify(os.path.join(DATA, 'full', 'secant_194'), workers=1)


def negate_lam(p):
    w = next(w for w in p['witnesses'] if 'secant' in w); w['secant']['lam'] = [float.hex(-float.fromhex(x)) for x in w['secant']['lam']]


def other_record(p): p['record_sha256'] = '0' * 64


@pytest.mark.parametrize('edit', [negate_lam, other_record], ids=['changed witness', 'proposal of another record'])
def test_refused_leaf_not_converted(tmp_path, edit):
    src = os.path.join(DATA, 'full', 'secant_194'); leaf = FULL['secant_194'][1]
    f = leaves(src); p = gz_json(f[leaf + '.proposal.json.gz']); edit(p)
    bad = write(str(tmp_path / 'bad'), json.load(open(os.path.join(src, 'tree.json'))), dict(f, **{leaf + '.proposal.json.gz': to_gz(p)}))
    r = convert(bad, tmp_path / 'out', workers=1)
    assert r['verdict'] == 'OPEN' and [x[:2] for x in r['failed']] == [[4, [3, 13, 5, 3]]] and not os.path.exists(tmp_path / 'out')


def test_no_overwrite(tmp_path):
    (tmp_path / 'out').mkdir()
    with pytest.raises(ValueError, match='exists'): convert(os.path.join(DATA, 'full', 'secant_194'), tmp_path / 'out', workers=1)
