"""The pair witness (PR #4): two columns of the pattern whose replayed tubes are never orthogonal.

Each column's proof tree is replayed (plane_column_certificate.verify_tree) into finitely many tubes, each a centre
point and a radius covering every completing column of that colour over the H cell. The witness names two colours; it
holds when every pair of their tubes has a strictly positive orthogonality margin (pair_margin, Arb), so no two
columns of those colours are orthogonal and the pattern contains no orthonormal basis.

The one-column witness of PR #4 (a column whose proof leaves no tube) is not accepted: no certificate uses it.
"""
from .. import pinned

P = pinned.column


def check(tubes, chosen, checked):
    """Raises unless every pair of tubes of the two colours has a positive margin; `checked` caches pairs per cell."""
    key = tuple(sorted(chosen))
    if key not in checked:
        margins = [P.pair_margin(a, ea, b, eb) for a, ea in tubes[key[0]].values() for b, eb in tubes[key[1]].values()]
        if not all(m > 0 for m in margins): raise ArithmeticError('a captured pair may be orthogonal')
        checked[key] = [str(m) for m in margins]
    return checked[key]


def valid(clique, witness):
    """Exactly two distinct colours of the pattern (integers)."""
    chosen = witness['columns']
    return len(chosen) == 2 and len(set(chosen)) == 2 and all(type(c) is int and c in clique for c in chosen)
