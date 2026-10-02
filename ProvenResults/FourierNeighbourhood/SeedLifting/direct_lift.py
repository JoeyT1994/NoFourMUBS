"""Certified one-segment D0 lifting near the E2 Fourier seed surface.

All input angles are radians. Only ok=True authorizes exclusion, under
the accepted strict reconstruction inputs listed in DIRECT_LIFT.md.
Every physical branch is covered; no sampled side or carrier is selected.
"""
from itertools import combinations, permutations, product
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[2] /
                       'CornerBounds' / 'SideColumnPrune'))
from prune import arb, acb, R_jet, TERMS


def sine_sum(x, y):
    z = [b-a for a, b in zip(x, y)]
    return sum(sign*(x[b]-x[a]).sin()*(y[d]-y[c]).sin()
               *(z[i]-z[j]).sin()
               for i, j, a, b, c, d, sign in TERMS)


def atlas_data(x, y):
    """Outward surface R, Gram eigenvalue and all alternative-side gaps."""
    omega = acb(0, 2*arb.pi()/3).exp()
    z, w = acb(0, x).exp(), acb(0, y).exp()
    S, T = 1+z+w, 1+omega.conjugate()*z+omega*w
    R = 9*abs(z*z-w)**2*abs(w*w-z)**2*abs(z*w-1)**2
    gram = 3-(abs(S)**2+abs(T)**2).sqrt()
    if not (abs(S) > 0 and abs(T) > 0 and R > 0):
        return None
    alpha = S*T.conjugate()/(S.conjugate()*T)
    gamma = -S/S.conjugate()
    ax, gy = alpha.arg(), gamma.arg()
    xx = [arb(0), 2*arb.pi()/3, 4*arb.pi()/3,
          ax, ax+2*arb.pi()/3, ax+4*arb.pi()/3]
    yy = [arb(0), x, y, gy, gy-y, gy-x]
    gaps = []
    for columns in combinations(range(6), 3):
        complement = [i for i in range(6) if i not in columns]
        q = sine_sum([xx[i] for i in complement],
                     [yy[i] for i in complement])
        gaps.append((columns, 8*abs(q)-R.sqrt()))
    return R, gram, gaps


def certify_box(centers, radii):
    """Whole-box D0 exclusion, in the E2 frame (a,b)=(omega,omega^2).

    Centres and radii are Arb enclosures; radii must be nonnegative.
    Phase lifts of the first pair must be close to (2*pi/3,4*pi/3).
    The first pair is projected to the surface, keeping the other pair.
    The result does not cover R=0 crossings or arbitrary atlas frames.
    """
    cc, hh = list(map(arb, centers)), list(map(arb, radii))
    if len(cc) != 4 or len(hh) != 4 or not all(h >= 0 for h in hh):
        raise ValueError('Need four centres and nonnegative half-widths')
    surface = [2*arb.pi()/3, 4*arb.pi()/3, *cc[2:]]
    widths = [abs(cc[i]-surface[i])+hh[i] for i in range(2)]
    e = sum(h*h for h in widths).sqrt()
    data = atlas_data(cc[2]+arb(0, hh[2]), cc[3]+arb(0, hh[3]))
    if data is None:
        return dict(ok=False, reason='surface_not_strict')
    R0, k0, gaps = data
    jet = R_jet(surface, [*widths, *hh[2:]])
    variation = sum(abs(jet.d[i])*widths[i] for i in range(2))
    cap = arb((R0+variation).upper())
    r = arb((R0-variation).lower())
    kappa = arb((k0-2*arb(6).sqrt()*e-e*e).lower())
    result = dict(seed_distance_upper=str(e.upper()), R_path_lower=str(r), R_path_upper=str(cap),
                  gram_lower=str(kappa))
    if not (r > 0 and kappa > 0):
        return dict(result, ok=False, reason='path_not_certified')
    if not cap < 243:
        return dict(result, ok=False, reason='exceptional_Tao_not_excluded')
    b = 72*arb(8).sqrt()/r.sqrt()
    # max(1,b) without choosing based on an uncertain ball comparison.
    phase_speed = b if b >= 1 else (arb(1) if b <= 1 else b+1)
    needed = 768*phase_speed*e
    witness = next(((cols, gap) for cols, gap in gaps if gap > needed), None)
    if witness is None:
        return dict(result, ok=False, reason='alternative_branch_not_excluded',
                    required_gap_upper=str(needed.upper()))
    L = ((1+2*b*b)/6+(1+2*b)**2/kappa).sqrt()
    distance = L*e
    result.update(side_speed_upper=str(b.upper()), carrier_speed_upper=str(L.upper()),
                  carrier_distance_upper=str(distance.upper()), gap_columns=witness[0],
                  gap_lower=str(witness[1].lower()), required_gap_upper=str(needed.upper()))
    if not distance <= arb(1)/16384:
        return dict(result, ok=False, reason='outside_proved_tube')
    return dict(result, ok=True, reason='direct_fourier_lift')


def frame_matrices():
    """All 72 exact re-dephasing maps of the leading positional corner."""
    entry = [[[0]*4 for _ in range(3)] for _ in range(3)]
    for n, (i, j) in enumerate(product((1, 2), repeat=2)):
        entry[i][j][n] = 1
    for rows, cols, tr in product(permutations(range(3)),
                                  permutations(range(3)), (False, True)):
        matrix = []
        for i, j in product((1, 2), repeat=2):
            if tr:
                i, j = j, i
            matrix.append([entry[rows[i]][cols[j]][k]+entry[rows[0]][cols[0]][k]
                           -entry[rows[i]][cols[0]][k]-entry[rows[0]][cols[j]][k]
                           for k in range(4)])
        yield rows, cols, tr, matrix


def certify_any_frame(centers, radii):
    """Try all 12 Fourier surfaces using the 72 exact corner frames.

    Transformed boxes are outward supersets. Accepting such a box is safe;
    its overestimation may cause rejection. Transpose preserves the final
    Frobenius estimate and swaps the two Fourier orientations.
    """
    cc, hh = list(map(arb, centers)), list(map(arb, radii))
    if len(cc) != 4 or len(hh) != 4 or not all(h >= 0 for h in hh):
        raise ValueError('Need four centres and nonnegative half-widths')
    for rows, cols, tr, matrix in frame_matrices():
        transformed = [sum(a*c for a, c in zip(row, cc)) for row in matrix]
        widths = [sum(abs(a)*h for a, h in zip(row, hh)) for row in matrix]
        for i in range(2):
            # A float only proposes a periodic lift; every integer is valid.
            try:
                shift = round(float((transformed[i]-2*(i+1)*arb.pi()/3)/(2*arb.pi())))
            except (ValueError, OverflowError):
                return dict(ok=False, reason='unbounded_input')
            transformed[i] -= shift*2*arb.pi()
        result = certify_box(transformed, widths)
        if result['ok']:
            return dict(result, rows=rows, columns=cols, transpose=tr)
    return dict(ok=False, reason='no_certified_frame')
