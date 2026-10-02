"""Exact regional scope, 4-ary cover audit, and seed-only applicability tests.

The matcher has no matrix reconstruction and does not test maximality.
Its implication is ONLY for physical carriers with the leading corner
maximal among all 400 positional corners; see PROOF.md.
"""
from interval import *
from itertools import permutations, product

PROFILES = {
    'broad': dict(p=(Q(1,60), Q(1,45)), q=(Q(1,180), Q(1,90)),
                  hu=Q(1,500), hv=Q(1,2000), phase_cap=Q(1,90),
                  vector_cap=Q(1,125), tube=Q(1,36),
                  R_min=Q(1), R_max=Q(16), gap_min=Q(1,100)),
    'thick': dict(p=(Q(1,50), Q(1,45)), q=(Q(1,160), Q(1,128)),
                  hu=Q(1,250), hv=Q(1,1000), phase_cap=Q(1,70),
                  vector_cap=Q(1,100), tube=Q(1,36),
                  R_min=Q(1), R_max=Q(16), gap_min=Q(1,100)),
}
MAX_DEPTH = 10

def profile_json():
    return {name: {k: [str(y) for y in x] if isinstance(x, tuple) else str(x)
                   for k, x in data.items()} for name, data in PROFILES.items()}


def rectangle(profile, path):
    require(profile in PROFILES, 'unknown profile')
    require(isinstance(path, str) and len(path) <= MAX_DEPTH
            and all(c in '0123' for c in path), 'invalid quadtree path')
    pl, ph = PROFILES[profile]['p']; ql, qh = PROFILES[profile]['q']
    for char in path:
        digit = int(char); pm, qm = (pl+ph)/2, (ql+qh)/2
        pl, ph = (pm, ph) if digit & 2 else (pl, pm)
        ql, qh = (qm, qh) if digit & 1 else (ql, qm)
    return pl, ph, ql, qh


def audit_partition(paths):
    require(len(paths) == len(set(paths)) and len(paths) > 0,
            'duplicate or empty cover')
    leaves = set(paths)
    for path in paths:
        require(isinstance(path, str) and len(path) <= MAX_DEPTH
                and all(c in '0123' for c in path), 'bad cover path')
        require(not any(path[:k] in leaves for k in range(len(path))),
                'a leaf is an ancestor of another leaf')
    prefixes = {path[:k] for path in paths for k in range(len(path))}
    stack = ['']; visited = 0
    while stack:
        prefix = stack.pop(); visited += 1
        if prefix in leaves:
            continue
        require(prefix in prefixes, 'missing branch of tangential cover')
        stack.extend(prefix + c for c in '0123')
    require(sum((Q(1,4)**len(path) for path in paths), Q(0)) == 1,
            'incorrect exact covered area')
    return dict(leaves=len(paths), nodes=visited,
                normalized_area='1', max_depth=max(map(len, paths)))


def frames():
    """72 leading-corner rephasings/transposes, and their conjugates."""
    entry = [[[0]*4 for _ in range(3)] for _ in range(3)]
    for k, (i,j) in enumerate(product((1,2), repeat=2)):
        entry[i][j][k] = 1
    for rows, cols, tr, sign in product(permutations(range(3)),
                                       permutations(range(3)), (False, True), (1,-1)):
        M = []
        for i,j in product((1,2), repeat=2):
            ii,jj = (j,i) if tr else (i,j)
            M.append([sign*(entry[rows[ii]][cols[jj]][k]+entry[rows[0]][cols[0]][k]
                            -entry[rows[ii]][cols[0]][k]-entry[rows[0]][cols[jj]][k])
                      for k in range(4)])
        yield dict(rows=list(rows), columns=list(cols), transpose=tr,
                   conjugate=(sign == -1), matrix=M)

FRAMES = list(frames())


def exact_number(x):
    if isinstance(x, bool):
        raise ValueError('booleans are not phase coordinates')
    if isinstance(x, (int, Q)):
        return Q(x)
    if isinstance(x, float) and math.isfinite(x):
        return Q(x)
    raise ValueError('expected an integer, Fraction, or finite exact binary64')


def frame_test(centers, radii, frame, profile):
    """Input intervals may enclose exact affine-in-pi centers and widths."""
    cfg = PROFILES[profile]; M = frame['matrix']
    tc = [sum((v(m)*v(x) for m,x in zip(row,centers)), v(0)) for row in M]
    half = [sum((abs(m)*v(h) for m,h in zip(row,radii)), v(0)) for row in M]
    pm = sum(cfg['p'], Q(0))/2; qm = sum(cfg['q'], Q(0))/2
    targets = [2*iv.pi/3, 4*iv.pi/3,
               2*iv.pi*v(Q(1,6)+pm-qm), 2*iv.pi*v(Q(1,3)-qm)]
    try:
        # Integers only propose periodic lifts; every choice is a legitimate lift.
        shifts = [round(mid((t-z)/(2*iv.pi))) for t,z in zip(tc, targets)]
    except (ValueError, OverflowError):
        return None
    u = tc[0]-targets[0]-2*iv.pi*shifts[0]+box(half[0])
    w = tc[1]-targets[1]-2*iv.pi*shifts[1]+box(half[1])
    pdiff = [M[2][k]-M[3][k] for k in range(4)]
    pc = sum((v(m)*v(x) for m,x in zip(pdiff,centers)), v(0))
    pr = sum((abs(m)*v(h) for m,h in zip(pdiff,radii)), v(0))
    p = v(Q(1,6))+(pc+box(pr))/(2*iv.pi)-shifts[2]+shifts[3]
    q = v(Q(1,3))-(tc[3]+box(half[3]))/(2*iv.pi)+shifts[3]
    if not (mag(u) <= v(cfg['hu']) and mag(w) <= v(cfg['hv'])
            and p.a >= v(cfg['p'][0]) and p.b <= v(cfg['p'][1])
            and q.a >= v(cfg['q'][0]) and q.b <= v(cfg['q'][1])):
        return None
    lam = max((mag(u)/v(cfg['hu'])).b, (mag(w)/v(cfg['hv'])).b)
    return dict(profile=profile, frame=frame, periodic_shifts=shifts,
                p_interval=bounds_text(p), q_interval=bounds_text(q),
                u_interval=bounds_text(u), v_interval=bounds_text(w),
                normal_gauge_upper=str(as_rational(lam)),
                row_column_distance_upper=str(as_rational((lam*v(cfg['vector_cap'])).b)),
                projector_tube_radius=str(cfg['tube']),
                hypotheses=['physical raw order-six Hadamard',
                            'leading corner maximal among ALL 400 positional corners'],
                all_four_pairings_covered=True)


def contains_box(centers, halfwidths, profile_names=None):
    """Reusable geometric membership in proved bands, not a midpoint test.

    Run verify.py once to validate the retained regional theorem before using
    this predicate as a production terminal. No quartet exclusion is claimed
    without the two stated physical/maximality hypotheses.
    """
    require(len(centers) == len(halfwidths) == 4, 'four phases and widths required')
    cc = [exact_number(x) for x in centers]; hh = [exact_number(x) for x in halfwidths]
    require(all(h >= 0 for h in hh), 'negative halfwidth')
    names = list(PROFILES) if profile_names is None else list(profile_names)
    require(all(name in PROFILES for name in names), 'unknown requested profile')
    for fr in FRAMES:
        for name in names:
            result = frame_test(cc, hh, fr, name)
            if result is not None:
                return result
    return None
