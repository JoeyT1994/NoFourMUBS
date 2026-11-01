"""Proposing a plane leaf for a cell: the cell's record and a witness per pattern. No proof role: `close` keeps a leaf
only after plane_leaf.check accepts it.

For each pattern of the rebuilt cover, in order:
1. the gamma witness (mode L, then K; the last alignment that worked, then the best alignment of the centre phases),
   kept only if its bound is below g_cell;
2. a pair of proved columns whose tubes are never orthogonal, proving the pattern's columns one at a time, narrowest
   phase ball first (a column proof is a quadtree of slabs, each excluded, outside, or captured by a tube);
3. the joint exclusion over the proved columns' tubes (known family allowed);
4. the moving-frame secant witness: the two narrowest columns as anchors, each other column in turn.
A pattern none of these resolves fails the cell ('complete-cover pattern remains').

This is TripleClassification/code/fast_search.py (PR #4's search without its redundant replays) without the projector
witness and the one-column witness.
"""
import itertools, tempfile
from fractions import Fraction
from pathlib import Path
import numpy as np
from scipy.optimize import least_squares
from flint import arb, ctx
from .. import cells, pinned
from ..certificate import leaf
from ..column_proofs import prove_column
from ..witnesses import gamma, secant

P, Whole, Joint, F, A = pinned.column, pinned.cell, pinned.joint, pinned.frontier, pinned.anchored
SCALAR_CAP = 2000                 # the joint search's scalar budget (column trees: depth 6, 6,000 nodes)


def cell_record(ball, level, cell):
    """The cell's record (frontier.build_record), with the fields of its leaf file (certificate.leaf)."""
    ctx.prec = 224
    rec = F.build_record(pinned.original(ball), level, list(cell), pinned.ROOT)
    return dict(schema=cells.INPUT_SCHEMA, ball=ball, level=level, cell=list(cell), record=rec, record_sha256=F.jsonsha(rec))


def propose_cell(ball, level, cell, use_gamma=True):
    """The cell's plane leaf file (bytes), or raises ArithmeticError/ValueError with the reason."""
    data = cell_record(ball, level, cell)
    with tempfile.TemporaryDirectory(prefix='certifier.search.') as td:
        path = Path(td) / 'cell.json.gz'; path.write_bytes(leaf(data))
        return leaf(data, 6, propose(path, use_gamma))                # 6: prove_column's default depth


def propose_secant(model, cols, column=None, anchors=None):
    """The numerical secant proposal for six phase balls cols (dicts v0, radius) and an H model (the proposal half of
    projector/moving_secant_certificate.py, propose_columns, unchanged)."""
    if anchors is None:anchors=sorted(range(6),key=lambda j:A.mid(cols[j]['radius']))[:2]
    if column is None:column=next(i for i in range(6) if i not in anchors)
    E=A.numeric(A.basis()); H=np.exp(1j*A.numeric(model['Q0']).reshape(6,6))
    v=np.array([[A.mid(c['v0'][a]) for c in cols] for a in range(6)])
    anchor=np.exp(1j*v[:,anchors])
    def equations(t):
        k=np.exp(1j*(v[:,column]+np.einsum('aj,j->a',E,t)));m=np.einsum('aj,a->j',H.conj(),k)
        z=anchor.conj()*k[:,None];g=z.sum(0)
        f=np.r_[g.real,g.imag,(abs(m)**2-6)/6]
        jg=np.einsum('at,aj->tj',1j*z,E);jm=np.einsum('aj,a,ab->jb',H.conj(),1j*k,E)
        return f,np.r_[jg.real,jg.imag,2*(m.conj()[:,None]*jm).real/6]
    fit=least_squares(lambda t:equations(t)[0],np.zeros(5),jac=lambda t:equations(t)[1],
                      max_nfev=100,ftol=1e-14,xtol=1e-14,gtol=1e-14)
    rho=np.linalg.norm(fit.fun)
    if not rho>1e-14:raise ArithmeticError('no transverse proposal')
    return dict(column=column,anchors=list(anchors),t=encoded(fit.x),P=encoded(np.linalg.pinv(fit.jac)),lam=encoded(fit.fun/rho))


def encoded(x):
    x=np.asarray(x)
    return [float(v).hex() for v in x] if x.ndim==1 else [encoded(row) for row in x]


def propose(path, use_gamma=True):
    """One witness per pattern for the cell record in `path` (the order they are tried in: module docstring)."""
    s, model, C, binding, columns, cliques = Whole.complete_cover(path)
    proved = {}; attempted = set(); pair_cache = {}; witnesses = []; root_pairs = {}; scalars = {}
    gs = dict(ctx=None, cache={}, last={})

    def gamma_witness(clique):
        if gs['ctx'] is None: gs['ctx'] = gamma.context(model)
        for mode in ('L', 'K'):
            tried = []
            for k in range(2):
                if k == 0: ab = gs['last'].get(mode, (list(range(6)), list(range(6))))
                else:
                    key = 'PL' if mode == 'L' else 'v0'
                    mid = np.array([[float(gs['cache'][c][key][r].mid()) for c in clique] for r in range(6)])
                    ab = tuple(list(x) for x in pinned.gamma_test.best_alignment(mid))
                if ab in tried: continue
                tried.append(ab); g = dict(mode=mode, a=ab[0], b=ab[1])
                try: up = gamma.bound(gs['ctx'], columns, clique, g, gs['cache'])
                except (ValueError, ArithmeticError, ZeroDivisionError): break
                if Fraction(up) < gs['ctx']['g_h']:
                    gs['last'][mode] = ab; return dict(g, g_up_hex=up.hex())
        return None

    def pair_witness(clique):
        for x, y in itertools.combinations(clique, 2):
            if x not in proved or y not in proved: continue
            if (x, y) not in pair_cache: pair_cache[(x, y)] = Whole.pair_excluded(proved[x][1], proved[y][1])
            if pair_cache[(x, y)]: return [x, y]
        return None

    def secant_witness(clique):
        cols = [dict(v0=list(columns[c]['v0']), radius=arb(columns[c]['phase_radius']), colour=c) for c in clique]
        anchors = sorted(range(6), key=lambda j: float(columns[clique[j]]['phase_radius']))[:2]
        for col in [j for j in range(6) if j not in anchors]:
            try:
                prop = propose_secant(model, cols, col, anchors); secant.check_columns(model, cols, prop); return prop
            except (ValueError, ArithmeticError, ZeroDivisionError, np.linalg.LinAlgError): continue
        return None

    for clique in cliques:
        if use_gamma:
            g = gamma_witness(clique)
            if g is not None: witnesses.append(dict(colours=clique, columns=list(clique), gamma=g)); continue
        chosen = pair_witness(clique)
        for c in sorted(clique, key=lambda c: float(columns[c]['phase_radius'])):
            if chosen is not None: break
            if c in attempted: continue
            attempted.add(c)
            try: proved[c] = prove_column(model, columns[c], C)
            except ArithmeticError: continue
            chosen = pair_witness(clique)
        if chosen is not None: witnesses.append(dict(colours=clique, columns=chosen)); continue
        available = sorted((c for c in clique if c in proved), key=lambda c: (len(proved[c][1]), c))
        try:
            j = Joint.exclude(model, {c: proved[c][1] for c in available}, available, pair_cache=root_pairs,
                              scalar_cache=scalars, allow_known=True, scalar_cap=SCALAR_CAP)
            witnesses.append(dict(colours=clique, columns=available, joint=j)); continue
        except (ValueError, ArithmeticError): pass
        found = secant_witness(clique)
        if found is None: raise ArithmeticError('complete-cover pattern remains: ' + str(clique))
        witnesses.append(dict(colours=clique, columns=[clique[i] for i in [found['column'], *found['anchors']]], secant=found))
    return witnesses
