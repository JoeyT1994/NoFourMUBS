"""The overlap witness (overlap.py): a cell record's analytic branch is the original ball's (native review F1).

Data (tests/data/overlap): ball 905's original record, three of its level-8 cell records and a cell record of
ball 1016; ball 550's original record and its corner cell (3, (1, 1, 1, 6)).
1. each of the three 905 cell records is identified with ball 905's branch (two are boundary cells, whose centres lie
   outside the original ball, so theta* must be moved into both balls);
2. the stored centre phases P are only a proposal: shifted by 0.3 rad in rows 3-5, the record's normal form solves the
   same sides again, and the witness identifies the same branch;
3. a record of ball 1016 presented as a cell of ball 905 is refused (no common seed point);
4. the corner cell of ball 550, whose record ball only touches the original ball, is identified against the original
   ball's normal form on a 1% larger radius.
"""
import copy, glob, gzip, json, os
import pytest
from certifier import overlap

from certifier import pinned
DATA = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'data', 'overlap')
load = lambda *p: json.load(gzip.open(os.path.join(DATA, *p)))
ORIGINAL = load('persistent_cells', 'b905_original.json.gz')['record']
CELLS = [json.load(gzip.open(f)) for f in sorted(glob.glob(os.path.join(DATA, 'persistent_cells', '905_8_*.input.json.gz')))]


@pytest.fixture(scope='module')
def parent(): return overlap.model(ORIGINAL)


@pytest.mark.parametrize('d', CELLS, ids=[str(d['cell']) for d in CELLS])
def test_cell_record_identified(parent, d):
    w = overlap.witness(ORIGINAL, d['record'], d['level'], d['cell'], parent)
    assert w['eta_upper'] < w['tau']


def test_centre_phases_are_a_proposal(parent):
    d = CELLS[0]; rec = copy.deepcopy(d['record'])
    rec['P'] = [(float.fromhex(v) + (0.3 if k // 6 >= 3 else 0.0)).hex() for k, v in enumerate(rec['P'])]
    w = overlap.witness(ORIGINAL, rec, d['level'], d['cell'], parent)
    assert w['eta_upper'] < w['tau']


def test_record_of_another_ball_refused(parent):
    x = load('blocking_cells', '1016_3_1_2_2_0.input.json.gz'); d = CELLS[0]
    with pytest.raises(ArithmeticError): overlap.witness(ORIGINAL, x.get('record', x), d['level'], d['cell'], parent)


def test_corner_cell_on_enlarged_normal_form():
    o = load('corner_cells', 'b550_original.json.gz')['record']; c = load('corner_cells', '550_3_1_1_1_6.input.json.gz')
    w = overlap.witness(o, c['record'], c['level'], c['cell'], overlap.model(o), {})
    assert w.get('enlarged') == 1.01
