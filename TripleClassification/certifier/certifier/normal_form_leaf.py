"""A normal-form leaf: a cell closed pattern by pattern by the cubic normal-form witness.

The witness (`normal_form/`, pinned: the repaired code of its algebraic review, NORMAL_FORM_REVIEW.md) proves for one
cell record, pattern by pattern, that every third basis K is excluded or has the balanced order-three symmetry
(CLASSIFIED). The review covers that per-pattern theorem on the record; `check` adds what it leaves to the caller:

1. the record is the cell's: below level 0 the leaf file names this ball and cell, its record contains the whole closed
   cell (cells.contains) and its branch is the ball's (overlap.identify); at level 0 the record is the ball's own;
2. Stage C's input preconditions hold for the record (pinned stagec_guard.check);
3. the witness's own replay (run_cell.setup and run_cell.one with the certificate) rebuilds C1, the normal form and the
   complete cover from the record alone, finds the certificate bound to this record and to exactly this cover
   (run_cell.validate_certificate), and resolves every pattern EXCLUDED or CLASSIFIED, as the certificate claims;
4. a pattern listed under `ordering` (only where the search was asked for it) is discharged instead by the ordering
   witness (ordering.py) on the native cover's column enclosures; the leaf then has minimum-transition scope.

The leaf file `<cell>.json.gz` holds the cell's record (certificate.leaf), the witness's certificate under
`normal_form`, and any ordering witnesses under `ordering` ({pattern: {"mode", "a", "b"}}).
"""
from . import cells, ordering, overlap, pinned

RC = pinned.normal_form
CLASSIFIED, EMPTY, MIN_TRANSITION = 'NORMAL FORM CLASSIFIED', 'NORMAL FORM EMPTY', 'NORMAL FORM MINIMUM-TRANSITION'


def check(ball, level, cell, path):
    """The leaf check (above) of the leaf file `path`. Returns (status, {pattern status: count}); raises if refused."""
    rec = cells.record(path, ball, level, cell)
    if level == 0: pinned.require(rec == pinned.original(ball), 'the record is not the ball')
    else:
        cells.contains(ball, rec, level, cell)
        overlap.identify(ball, rec, level, cell)
    pinned.stagec_guard.check(pinned.native, rec)
    data = pinned.frontier.read_json(path); cert = data.get('normal_form')
    pinned.require(isinstance(cert, dict), 'no normal-form certificate')
    return replay(path, cert, data.get('ordering') or {})


def replay(path, cert, orders=None):
    """Every pattern of the record in `path` resolved by `cert` (or by an ordering witness in `orders`), replayed:
    (status, counts)."""
    n = RC.setup(path, cert); orders = orders or {}
    pinned.require(isinstance(orders, dict) and all(k.isdigit() and int(k) < n for k in orders), 'invalid ordering witnesses')
    whole = [i for i in range(n) if str(i) not in orders]
    RC.validate_certificate(cert, RC.STATE['record'], RC.STATE['cover'], RC.STATE['cliques'], whole)
    counts = {}
    if orders:
        S = RC.STATE; ctx = ordering.context(S['model']); cache = {}
        for k, w in orders.items():
            clique = S['cliques'][int(k)]
            ordering.check(ctx, ordering.columns(S['prepared'], S['bounds'], clique), clique, w, cache)
        counts['ORDERING'] = len(orders)
    for i in whole:
        row, _ = RC.one((path, i, cert, None))
        pinned.require(row['status'] in ('EXCLUDED', 'CLASSIFIED') and row['verdict_matches'],
                       'pattern %d: %s' % (i, row.get('reason') or row['status']))
        counts[row['status']] = counts.get(row['status'], 0) + 1
    return (MIN_TRANSITION if counts.get('ORDERING') else CLASSIFIED if counts.get('CLASSIFIED') else EMPTY), counts
