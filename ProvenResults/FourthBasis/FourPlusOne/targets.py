"""4+1 in the current strict reconstruction; no new carrier coordinates.

The four outer rays are mutually orthogonal. The fifth ray is unbiased,
NOT orthogonal, to those four. All five are common-unbiased to I and H.
build_system(True) fixes their four overlap phases and has quadratic ray
equations. The strict a=-1 specialization keeps both actual sheets.
"""
from pathlib import Path
from functools import lru_cache
import sys
import sympy as sp

sys.path.insert(0, str(Path(__file__).resolve().parent))
from strict_a1_system import SEEDS, tau, star, dagger, seed_data


def target_gram():
    G = 6*sp.eye(5)
    for j in range(4):
        G[j, 4] = G[4, j] = sp.sqrt(6)
    return G


def target_gram_inverse():
    M = sp.zeros(5)
    M[:4, :4] = sp.eye(4)/6 + sp.ones(4)/12
    for j in range(4):
        M[j, 4] = M[4, j] = -1/(2*sp.sqrt(6))
    M[4, 4] = sp.Rational(1, 2)
    return M


def mixed_metric(E, E_dagger):
    """K_E = LL† for v -> (first three input, first three output entries)."""
    return sp.BlockMatrix([[sp.eye(3), E/sp.sqrt(6)],
                           [E_dagger/sp.sqrt(6), sp.eye(3)]]).as_explicit()


def defect(E, W, phases):
    """All four seeds may be used here; W has six rows and five columns."""
    if W.shape != (6, 5):
        raise ValueError('W must have shape (6,5)')
    return mixed_metric(E, dagger(E, phases))-W*target_gram_inverse()*dagger(W, phases)


@lru_cache(maxsize=2)
def build_system(aligned=True):
    """Return the equivalent strict a=-1, BOTH-sheet physical 4+1 system.

    aligned=True: 29 ray phases, 45 real equations, quadratic in rays.
    aligned=False: 25 ray phases, 41 real equations, four quartic overlaps.
    Counts omit tau**2=R and the unit-circle constraints.
    No close-pair selection is needed for these equivalent systems.
    """
    data = seed_data(); E = data['E']; g = data['g']
    rays = []; ray_symbols = []
    for j in range(1, 6):
        free_phase = bool(aligned and j <= 4)
        xx = sp.symbols(' '.join(f'x{j}{i}' for i in range(0 if free_phase else 1, 3)), nonzero=True)
        pp = sp.symbols(f'p{j}0 p{j}1 p{j}2', nonzero=True)
        ray_symbols.extend(xx+pp)
        x = sp.Matrix(xx if free_phase else (1, *xx)); p = sp.Matrix(pp)
        z = sp.sqrt(6)*p-dagger(E)*x
        h = sp.sqrt(6)*x-E*p
        rays.append(dict(x=x, p=p, z=z, av=data['JT']*z, ah=data['JG']*h))
    phases = SEEDS+tuple(ray_symbols)
    equations = []

    def real_parts(label, f0, f1=sp.S.Zero):
        f0b = star(f0, phases); f1b = star(f1, phases)
        equations.extend([
            dict(label=label+'.real', A=(f0+f0b)/2, B=(f1+f1b)/2),
            dict(label=label+'.imag', A=(f0-f0b)/(2*sp.I), B=(f1-f1b)/(2*sp.I))])

    for j, ray in enumerate(rays, 1):
        norm = (dagger(ray['z'], phases)*data['JT']*ray['z'])[0]-3*g
        equations.append(dict(label=f'ray{j}.norm', A=norm, B=sp.S.Zero))
        for direction in ('v', 'h'):
            sd = data[direction]; a = ray['a'+direction]
            f0 = (dagger(a, phases)*sd['N0']*a)[0]-g*g*sd['s']*sd['denominator']
            f1 = (dagger(a, phases)*sd['N1']*a)[0]
            real_parts(f'ray{j}.{direction}', f0, f1)

    overlaps = {}
    for i in range(4):
        for j in range(i+1, 5):
            ri, rj = rays[i], rays[j]
            ov = g*(dagger(ri['x'], phases)*rj['x'])[0]
            ov += (dagger(ri['z'], phases)*data['JT']*rj['z'])[0]
            overlaps[i, j] = ov
            if j < 4:
                real_parts(f'orthogonality.{i+1}.{j+1}', ov)
            elif aligned:
                real_parts(f'unbiasedness.{i+1}.5', ov-sp.sqrt(6)*g)
            else:
                equations.append(dict(label=f'unbiasedness.{i+1}.5',
                                      A=ov*star(ov, phases)-6*g*g, B=sp.S.Zero))

    W = sp.Matrix.hstack(*(ray['x'].col_join(ray['p']) for ray in rays))
    result = dict(seeds=SEEDS, ray_symbols=tuple(ray_symbols), phases=phases,
                  tau=tau, data=data, rays=rays, W=W, equations=equations,
                  overlaps=overlaps, aligned=aligned,
                  moment_equations=[eq for eq in equations if '.v.' in eq['label'] or '.h.' in eq['label']],
                  sheet_equation=tau*tau-data['R'],
                  domain='All seed/ray symbols have modulus one; R>0; tau real; tau**2=R. BOTH signs retained.',
                  selection_guard=None,
                  scope='Equivalent equations; no nonexistence or seed-only eliminant is claimed.')
    if aligned:
        result['defect'] = defect(E, W, phases)
    return result


if __name__ == '__main__':
    for aligned in (False, True):
        system = build_system(aligned)
        print(f"aligned={aligned}: {len(system['ray_symbols'])} ray phases, "
              f"{len(system['equations'])} real equations, both sheets")
