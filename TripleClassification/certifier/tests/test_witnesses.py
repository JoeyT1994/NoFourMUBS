"""The pattern witnesses on real cells (the tests of TripleClassification/code/test_ext.py), each a one-leaf certificate
in tests/data/certificates closed by `close`:

  secant_194   ball 194, level-4 cell (3, 13, 5, 3): secant witnesses
  pairs_825    ball 825, level-6 cell (3, 22, 27, 42), which no column budget closes: pair and secant witnesses
  gamma_825    ball 825, level-5 cell (10, 15, 16, 8): every pattern by a gamma witness (minimum-transition scope)
  joint_363    ball 363, level-4 cell (5, 10, 6, 0): pair witnesses and a joint witness
  known_793    ball 793, level-2 cell (2, 0, 0, 1): joint witnesses recognising the known family (CLASSIFIED; this leaf
               is taken from the atlas certificate of ball 793)

Each verifies; each witness, changed, is refused; the projector and one-column witnesses are refused.
"""
import copy, json, os
import pytest
from conftest import gz_json, leaves, to_gz, write
from certifier import plane_leaf
from certifier.verify import verify

CELLS = dict(secant_194=(194, '4_3_13_5_3'), pairs_825=(825, '6_3_22_27_42'), gamma_825=(825, '5_10_15_16_8'),
             joint_363=(363, '4_5_10_6_0'), known_793=(793, '2_2_0_0_1'))


def proposal(cert):
    ball, leaf = CELLS[os.path.basename(cert)]
    return gz_json(leaves(cert)[leaf + '.proposal.json.gz'])


def with_proposal(cert, p):
    ball, leaf = CELLS[os.path.basename(cert)]
    return write(cert, json.load(open(os.path.join(cert, 'tree.json'))), dict(leaves(cert), **{leaf + '.proposal.json.gz': to_gz(p)}))


@pytest.mark.parametrize('name,kinds,scope', [
    ('secant_194', {'secant'}, 'all'), ('pairs_825', {'pair', 'secant'}, 'all'),
    ('gamma_825', {'gamma'}, 'minimum-transition'), ('joint_363', {'pair', 'joint'}, 'all'), ('known_793', {'joint'}, 'all')])
def test_genuine(copy_of, name, kinds, scope):
    cert = copy_of(name)
    assert {plane_leaf.kind(w) for w in proposal(cert)['witnesses']} == kinds
    r = verify(cert, CELLS[name][0], workers=1)
    assert r['verdict'] == 'CELL CLOSED' and r['scope'] == scope, r['failed']
    if name == 'known_793': assert r['counts'] == {plane_leaf.CLASSIFIED: 1}


def first(p, kind):
    """The first witness of this kind ('known': a joint witness recognising the known family)."""
    if kind == 'known': return next(w for w in p['witnesses'] if w.get('joint', {}).get('known'))
    return next(w for w in p['witnesses'] if plane_leaf.kind(w) == kind)


def negate_lam(w): w['secant']['lam'] = [float.hex(-float.fromhex(x)) for x in w['secant']['lam']]
def swap_anchors(w): w['secant']['anchors'] = w['secant']['anchors'][::-1]
def anchor_outside(w): w['secant']['anchors'][0] = 6
def realign(w): w['gamma']['a'] = [0] + w['gamma']['a'][:0:-1]
def reorder(w): w['columns'].reverse()
def other_mode(w): w['gamma']['mode'] = 'K' if w['gamma']['mode'] == 'L' else 'L'
def zero_scalars(w): [x.update(direction=['0x0.0p+0'] * len(x['direction'])) for x in w['joint']['scalars']]
def other_action(w): a = w['joint']['known'][0]['action']; a['labels'] = a['labels'][1:] + a['labels'][:1]
def other_column(w): w['columns'][1] = next(c for c in w['colours'] if c not in w['columns'])
def one_column(w): w['columns'] = w['columns'][:1]


@pytest.mark.parametrize('name,kind,edit', [
    ('secant_194', 'secant', negate_lam), ('secant_194', 'secant', swap_anchors), ('secant_194', 'secant', anchor_outside),
    ('gamma_825', 'gamma', realign), ('gamma_825', 'gamma', reorder), ('gamma_825', 'gamma', other_mode),
    ('joint_363', 'joint', zero_scalars), ('known_793', 'known', other_action),
    ('pairs_825', 'pair', other_column), ('pairs_825', 'pair', one_column)],
    ids=lambda x: getattr(x, '__name__', x))
def test_changed_witness_refused(copy_of, name, kind, edit):
    cert = copy_of(name); p = proposal(cert); edit(first(p, kind))
    r = verify(with_proposal(cert, p), CELLS[name][0], workers=1)
    assert r['verdict'] == 'OPEN', '%s %s accepted' % (name, edit.__name__)


def test_projector_witness_refused(copy_of):
    cert = copy_of('pairs_825'); p = proposal(cert); w = first(p, 'pair')
    colours = w['colours']; w.clear(); w.update(colours=colours, columns=list(colours), projector=dict(order=list(colours)))
    r = verify(with_proposal(cert, p), 825, workers=1)
    assert r['verdict'] == 'OPEN' and 'projector' in r['failed'][0][2]
