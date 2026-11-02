"""A normal-form leaf: a cell closed pattern by pattern by the cubic normal-form witness.

The witness (`normal_form/`, pinned: the repaired code of its algebraic review, NORMAL_FORM_REVIEW.md) proves for one
cell record, pattern by pattern, that every third basis K is excluded or has the balanced order-three symmetry
(CLASSIFIED). The review covers that per-pattern theorem on the record; `check` adds what it leaves to the caller:

1. the record is the cell's: below level 0 the leaf file names this ball and cell, its record contains the whole closed
   cell (cells.contains) and its branch is the ball's (overlap.identify); at level 0 the record is the ball's own;
2. Stage C's input preconditions hold for the record (pinned stagec_guard.check);
3. the witness's own replay (run_cell.setup and run_cell.one with the certificate) rebuilds C1, the normal form and the
   complete cover from the record alone, finds the certificate bound to this record and to exactly this cover
   (run_cell.validate_certificate, every pattern present), and resolves every pattern EXCLUDED or CLASSIFIED, as the
   certificate claims.

The leaf file `<cell>.json.gz` holds the cell's record (certificate.leaf) and the witness's certificate under
`normal_form`.
"""
from . import cells, overlap, pinned

RC = pinned.normal_form
CLASSIFIED, EMPTY = 'NORMAL FORM CLASSIFIED', 'NORMAL FORM EMPTY'


def check(ball, level, cell, path):
    """The leaf check (above) of the leaf file `path`. Returns (status, {pattern status: count}); raises if refused."""
    rec = cells.record(path, ball, level, cell)
    if level == 0: pinned.require(rec == pinned.original(ball), 'the record is not the ball')
    else:
        cells.contains(ball, rec, level, cell)
        overlap.identify(ball, rec, level, cell)
    pinned.stagec_guard.check(pinned.native, rec)
    cert = pinned.frontier.read_json(path).get('normal_form')
    pinned.require(isinstance(cert, dict), 'no normal-form certificate')
    return replay(path, cert)


def replay(path, cert):
    """Every pattern of the record in `path` resolved by `cert`, replayed by the witness: (status, counts)."""
    n = RC.setup(path, cert)
    RC.validate_certificate(cert, RC.STATE['record'], RC.STATE['cover'], RC.STATE['cliques'], list(range(n)))
    counts = {}
    for i in range(n):
        row, _ = RC.one((path, i, cert, None))
        pinned.require(row['status'] in ('EXCLUDED', 'CLASSIFIED') and row['verdict_matches'],
                       'pattern %d: %s' % (i, row.get('reason') or row['status']))
        counts[row['status']] = counts.get(row['status'], 0) + 1
    return (CLASSIFIED if counts.get('CLASSIFIED') else EMPTY), counts
