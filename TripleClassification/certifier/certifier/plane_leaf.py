"""A plane leaf: a dyadic cell closed pattern by pattern.

Its file `<cell>.json.gz` holds the cell's H record, one witness per pattern and the depth of the column proofs
(certificate.py). `check` accepts the leaf when:

1. the record names this ball, level and cell, and its H ball contains the whole closed cell (cells.contains, Arb);
2. the record's analytic branch is the original ball's (overlap.identify, Arb);
3. from the record alone, C1, the H normal form, Stage C's input preconditions and the complete cover of the possible
   third-basis columns are rebuilt (pinned plane_cell_certificate.complete_cover). The cover's patterns are the
   six-cliques of mutually orthogonal colours; the file must give one witness per pattern, in order;
4. every column proof the pair and joint witnesses use is rebuilt from the record and replayed into tubes
   (column_proofs.tubes: pinned verify_tree), and every witness holds (witnesses/: pair, joint, secant, gamma).

The status is CERTIFIED_EMPTY (every pattern excluded), CERTIFIED_CLASSIFIED (some pattern is the known family) or,
when some pattern is ordering-discharged, CERTIFIED_MINIMUM_TRANSITION (restricted scope; see README).

This is PR #4's plane_cell_certificate.check with the secant and gamma witnesses of the one-tree checker
(TripleClassification/code/ext_cell_certificate.py), without its projector and one-column witnesses, which no
certificate uses, and with the column proof trees rebuilt rather than read.
"""
import time
from . import cells, column_proofs, overlap, pinned
from .witnesses import gamma, joint, pair, secant

P = pinned.column
EMPTY, CLASSIFIED, MIN_TRANSITION = ('CERTIFIED_EMPTY_RECORDED_H_CELL', 'CERTIFIED_CLASSIFIED_RECORDED_H_CELL',
                                     'CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL')


def check(ball, level, cell, path):
    """The leaf check (above) of the leaf file `path`. Returns the whole-cell result (status, patterns); raises if the
    leaf is refused."""
    rec = cells.record(path, ball, level, cell)
    cells.contains(ball, rec, level, cell)
    overlap.identify(ball, rec, level, cell)
    data = pinned.frontier.read_json(path)
    return whole_cell(path, data.get('depth'), data.get('witnesses'))


def kind(witness):
    """A witness's kind, by its keys; the plain PR #4 form {'colours', 'columns'} is the pair witness."""
    return next((k for k in ('projector', 'gamma', 'secant', 'joint') if k in witness), 'pair')


def validate(cliques, witnesses):
    """One witness per pattern, in order, each of a valid shape; returns the colours whose column proofs the pair and
    joint witnesses use (secant and gamma witnesses use the cover's phase balls only)."""
    P.require(len(witnesses) == len(cliques), 'incomplete pattern accounting')
    used = set()
    for clique, w in zip(cliques, witnesses):
        P.require(w['colours'] == clique, 'complete-cover pattern changed')
        k = kind(w)
        P.require(k != 'projector', 'the projector witness is not accepted')
        P.require(dict(gamma=gamma, secant=secant, joint=joint, pair=pair)[k].valid(clique, w), 'invalid %s witness' % k)
        if k in ('pair', 'joint'): used.update(w['columns'])
    return used


def whole_cell(path, depth, witnesses):
    start = time.monotonic(); s, model, C, binding, columns, cliques = pinned.cell.complete_cover(path)
    P.require(isinstance(witnesses, list), 'no witnesses')
    used = validate(cliques, witnesses)
    tubes = {c: column_proofs.tubes(model, columns[c], C, depth) for c in sorted(used)}
    pairs = {}; root_pairs = {}; root_scalars = {}; gamma_context = None; gamma_cache = {}; rows = []
    for n, (clique, w) in enumerate(zip(cliques, witnesses)):
        k = kind(w)
        if k == 'gamma':
            if gamma_context is None: gamma_context = gamma.context(model)
            gamma.check(gamma_context, columns, clique, w, gamma_cache); status = 'ORDERING_DISCHARGED'
        elif k == 'secant':
            secant.check(model, columns, clique, w); status = 'EXCLUDED'
        elif k == 'joint':
            status = joint.check(model, tubes, w['columns'], w, root_pairs, root_scalars)
        else:
            pair.check(tubes, w['columns'], pairs); status = 'EXCLUDED'
        rows.append(dict(number=n, colours=clique, witness=k, status=status))
    statuses = {r['status'] for r in rows}
    return dict(status=MIN_TRANSITION if 'ORDERING_DISCHARGED' in statuses else CLASSIFIED if 'CLASSIFIED' in statuses else EMPTY,
                patterns=rows, seconds=time.monotonic() - start)
