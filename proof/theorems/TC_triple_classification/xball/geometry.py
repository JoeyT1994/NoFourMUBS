"""Exact dyadic accounting in the original four w coordinates."""
from fractions import Fraction
import itertools


def validate(cell):
    if (len(cell) != 5 or any(type(v) is not int for v in cell)
            or not 0 <= cell[0] <= 20
            or any(not 0 <= i < 2**cell[0] for i in cell[1:])):
        raise ValueError('invalid dyadic four-cell')
    return tuple(cell)


def bounds(cell):
    m, *idx = validate(cell)
    n = 2**m
    return [(Fraction(2*i-n,n),Fraction(2*i+2-n,n)) for i in idx]


def radial_squares(cell):
    pairs = bounds(cell)
    lower = sum((Fraction(0) if a <= 0 <= b else min(a*a,b*b)
                 for a,b in pairs), Fraction(0))
    upper = sum((max(a*a,b*b) for a,b in pairs), Fraction(0))
    return lower, upper


def children(cell):
    m, *idx = validate(cell)
    return [(m+1, *(2*i+b for i,b in zip(idx,bits)))
            for bits in itertools.product((0,1),repeat=4)]


def identifier(cell):
    return ':'.join(map(str,validate(cell)))


def make_cover(level=2, core_power=2):
    """Partition [-1,1]^4; the core radius is r/2**core_power.

    Cells touching the origin refine until wholly in the core or separated
    from zero. Original-sphere tangencies are retained.
    """
    if type(level) is not int or not 1 <= level <= 6:
        raise ValueError('cover level must be between 1 and 6')
    if type(core_power) is not int or not 1 <= core_power <= 8:
        raise ValueError('core power must be between 1 and 8')
    core2 = Fraction(1,4**core_power)
    leaves = []
    def visit(cell):
        lower, upper = radial_squares(cell)
        if lower > 1:
            kind = 'OUTSIDE'
        elif upper <= core2:
            kind = 'CORE'
        elif cell[0] >= level and lower > 0:
            kind = 'SHELL'
        else:
            for child in children(cell):visit(child)
            return
        leaves.append(dict(cell=list(cell), id=identifier(cell), kind=kind))
    visit((0,0,0,0,0))
    result = dict(schema='tc-xball-cover-v1', coordinates='u=w/r',
                  level=level, core_power=core_power,
                  core_radius_ratio=[1,2**core_power], leaves=leaves)
    result['verification'] = verify_cover(result)
    return result


def verify_cover(cover):
    power = cover['core_power']
    if type(power) is not int or not 1 <= power <= 8:
        raise ValueError('invalid core power')
    if cover['core_radius_ratio'] != [1,2**power]:
        raise ValueError('core ratio mismatch')
    core2 = Fraction(1,4**power)
    leaves = {}
    for leaf in cover['leaves']:
        cell = validate(leaf['cell'])
        if cell in leaves or leaf['id'] != identifier(cell):
            raise ValueError('duplicate or misidentified leaf')
        lower, upper = radial_squares(cell)
        kind = leaf['kind']
        if kind == 'OUTSIDE':
            if not lower > 1: raise ValueError('outside leaf meets closed ball')
        elif kind == 'CORE':
            if not upper <= core2: raise ValueError('core leaf exceeds core radius')
        elif kind == 'SHELL':
            if lower > 1 or lower == 0: raise ValueError('invalid shell leaf')
        else:
            raise ValueError('unknown coverage leaf kind')
        leaves[cell] = kind
    visited = set()
    prefixes = set()
    for cell in leaves:
        m,*idx=cell
        for depth in range(m):prefixes.add((depth,*(i//2**(m-depth) for i in idx)))
    nodes = 0
    def visit(cell):
        nonlocal nodes
        nodes += 1
        if cell in leaves:
            if cell in prefixes: raise ValueError('ancestor and descendant overlap')
            visited.add(cell)
        elif cell in prefixes:
            for child in children(cell):visit(child)
        else:raise ValueError('missing cell in exact coverage tree')
    visit((0,0,0,0,0))
    if visited != set(leaves):raise ValueError('unreachable coverage leaf')
    counts = {kind:sum(v==kind for v in leaves.values()) for kind in ('OUTSIDE','CORE','SHELL')}
    return dict(status='CERTIFIED GEOMETRIC COVER', nodes=nodes, counts=counts,
                classification_status='NOT ESTABLISHED')
