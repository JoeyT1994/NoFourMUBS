"""Dyadic cells of a seed ball's chart, and the cell records that leaves carry.

A seed ball B is the set of Hadamard matrices H = exp(iQ), Q = Q0 + U w + H2(w, w)/2 + X xi, |w| <= r, |xi| <= tau
(its atlas record). Its chart box r [-1, 1]^4 is split dyadically: the cell (level, (c0, c1, c2, c3)) is the closed
cube r prod_k [-1 + 2 c_k / 2^level, -1 + 2 (c_k + 1) / 2^level], and it has 16 children at level + 1.

A leaf below the whole ball carries the cell's own record (an H ball of the atlas format centred in the cell, built
by frontier.build_record), stored in its leaf file `<level>_<c0>_<c1>_<c2>_<c3>.json.gz`. `record` checks that this file
names this ball and cell, and `contains` proves in Arb that the record's ball contains the whole closed cell.
"""
from . import pinned
from flint import ctx

INPUT_SCHEMA = 'tc-h-cell-input-v1'
WHOLE_BALL = (0, (0, 0, 0, 0))


def name(level, cell):
    return '%d_%s' % (level, '_'.join(map(str, cell)))


def children(level, cell):
    return [(level + 1, [2 * c + ((i >> (3 - k)) & 1) for k, c in enumerate(cell)]) for i in range(16)]


def outside(level, cell):
    """The closed cell misses the closed unit ball of the chart: exact rational arithmetic (pinned misses_ball)."""
    return pinned.tree.misses_ball(level, list(cell))


def record(path, ball, level, cell):
    """The H record in a leaf's input file, after checking that the file is this cell's and the record its own."""
    data = pinned.frontier.read_json(path)
    pinned.require(data.get('schema') == INPUT_SCHEMA and data['record_sha256'] == pinned.frontier.jsonsha(data['record'])
                   and [data['ball'], data['level'], data['cell']] == [ball, level, list(cell)], 'leaf record is not this cell')
    return data['record']


def contains(ball, rec, level, cell):
    """The record's H ball contains the whole closed cell of the original ball (pinned cell_geometry, Arb)."""
    ctx.prec = 224
    return pinned.frontier.cell_geometry(pinned.original(ball), rec, level, list(cell))
