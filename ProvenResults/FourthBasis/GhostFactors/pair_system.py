"""Necessary two-ray search with the automatic partner component removed.

This is a necessary relaxation of three-ray compatibility, NOT an equivalence.
Use the existing current-coordinate equations; retain b,c,d and the same sheet.
The linear localizer alone does NOT remove the nonphysical ghost solutions.
"""
from pathlib import Path
import sys
import sympy as sp

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / 'FourPlusOne'))
from strict_a1_system import build_system


def build_pair_search():
    system = build_system(2)
    L = system['rays'][0]['x'][1] + system['rays'][1]['x'][1]
    inverse_L = sp.Symbol('inverse_L')
    system.update(
        nonpartner_linear_factor=L,
        localizer_variable=inverse_L,
        localizer_equation=inverse_L*L-1,
        optional_physical_inequality='abs(x11+x21)**2 >= 1',
        implication='Every compatible orthogonal triple supplies a pair in this system.',
        converse=False,
        ghosts_removed=False,
    )
    return system


def quadratic_ghost_factors(H, v, w):
    """36 quadratic factors, each nonzero for physical flat v and w.

    H is the CURRENT reconstructed raw Hadamard, v is a recovered raw ray,
    w=H†v/sqrt(6). Its coordinates are raw phases on physical solutions.
    Keeping these factors nonzero removes every standard ghost. It may also
    remove other nonphysical complex points; it removes no physical point.
    This function does not expand the PDF reconstruction or its algebraic norms.
    """
    return [18*v[i]*w[j] + sp.sqrt(6)*(H[i,j]*w[j]**2+v[i]**2/H[i,j])
            for i in range(6) for j in range(6)]


if __name__ == '__main__':
    system = build_pair_search()
    print('12 real ray equations, 10 ray phases, all three seeds symbolic.')
    print('Linear factor:', system['nonpartner_linear_factor'])
    print('Localizer:', system['localizer_equation'])
    print('Necessary relaxation only. Ghost factors must still be imposed for complex elimination.')
