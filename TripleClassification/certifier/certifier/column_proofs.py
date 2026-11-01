"""Column proofs: a column's proof tree is not stored in a certificate; it is rebuilt from the cell's record.

A column proof covers every completing column of one colour over the H cell. Its tree splits the column's
two-dimensional phase slab dyadically; each leaf slab is excluded, outside, or captured by a tube (a centre point and
a radius covering every completing column through that slab). `prove_column` builds the tree: it is deterministic
given the record (the colour's phase ball from the rebuilt cover) and the depth. `tubes` rebuilds the tree and then
replays it with PR #4's verify_tree, which re-checks every leaf slab in Arb and builds the tubes, exactly as a stored
tree was replayed. So a rebuilt tree is accepted on the same terms as a stored one; the depth only steers the build.

prove_column is TripleClassification/code/fast_search.py's (PR #4's P.prove_column, also returning its tubes), unchanged.
"""
import itertools
import numpy as np
from flint import arb
from . import pinned

P = pinned.column
MAX_DEPTH = 10


def tubes(model, supplied, C, depth):
    """The tubes of the column proof rebuilt at this depth, from verify_tree's replay; raises if it cannot be built or
    does not verify."""
    P.require(type(depth) is int and 0 <= depth <= MAX_DEPTH, 'invalid column depth')
    item, _ = prove_column(model, supplied, C, depth=depth, node_cap=(4 ** (depth + 1) - 1) // 3)   # no budget binds
    col = P.Column(model, supplied, P.hex_array(item['weak'], (2, 5)))
    return P.verify_tree(col, item['tree'], item['roots'], C, root_modes=item.get('root_modes'))[1]


def depth(node, level=0):
    """The deepest level of a stored column proof tree: rebuilding at this depth gives the same tree (each leaf it
    captured at a lower level had a tube below the target radius, which any depth accepts)."""
    return max(depth(child, level + 1) for child in node['children']) if 'children' in node else level


def prove_column(model, supplied, C, depth=6, node_cap=6000, epsilon_target=.004):
    """P.prove_column, also returning the tubes verify_tree would rebuild from its proposal."""
    col = P.Column(model, supplied); roots = []; root_modes = []; count = 0; tubes = {}
    def visit(level, index):
        nonlocal count
        count += 1
        if count > node_cap: raise ArithmeticError('column node budget exhausted')
        proposal = col.propose_slab(level, index)
        try: result = col.check_slab(level, index, proposal)
        except ArithmeticError: result = dict(status='UNKNOWN')
        if result['status'] in ('EXCLUDED', 'OUTSIDE'):
            return dict(proposal, kind=result['status'].lower())
        if result['status'] == 'CAPTURED':
            root_ = col.root_proposal(result['center'])
            mode = 'constant'
            try:
                native, native_error = P.tube(C, model, root_, result, 'native')
                if native['Tnorm'] * model['r'] < arb('.1') and native_error < result['radius']:
                    mode = 'native'
            except (ArithmeticError, ZeroDivisionError): pass
            if mode == 'constant':
                root_ = np.array([float(x.mid()) for x in result['center']])
            match = next((i for i, x in enumerate(roots) if root_modes[i] == mode and np.linalg.norm(root_ - x) < 1e-7), None)
            candidate = root_ if match is None else roots[match]
            p, epsilon = P.tube(C, model, candidate, result, mode)
            if epsilon < arb(epsilon_target) or level >= depth:
                if match is None: match = len(roots); roots.append(root_); root_modes.append(mode)
                # verify_tree's tube for this leaf: same root values (hex encoding is exact), capture and mode
                if match in tubes: epsilon = max(tubes[match][1], epsilon).upper()
                tubes[match] = (p, epsilon)
                return dict(proposal, kind='captured', root=match)
        if level >= depth: raise ArithmeticError('column depth budget exhausted')
        return dict(children=[visit(level + 1, (2 * index[0] + i, 2 * index[1] + j)) for i, j in itertools.product(range(2), repeat=2)])
    tree = visit(0, (0, 0))
    return dict(weak=P.encode(col.weak), roots=[P.encode(x) for x in roots], root_modes=root_modes, tree=tree), tubes
