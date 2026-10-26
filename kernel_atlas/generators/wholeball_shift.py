"""Exact ball translation for seed angles below the centre arithmetic grid."""
from copy import deepcopy
from fractions import Fraction as Q
from pathlib import Path

from wholeball_scalar import rational, lean_rational, write_module, OUTPUT_ROOT
from wholeball_matrix import matrix_expr, vector_expr, sqrt_upper


def solve_exact(matrix, rhs):
    """Small rational Gaussian elimination; the result is checked explicitly."""
    n = len(rhs)
    rows = [list(row)+[value] for row,value in zip(matrix,rhs)]
    for k in range(n):
        pivot = max(range(k,n),key=lambda i:abs(rows[i][k]))
        if rows[pivot][k] == 0:
            raise ArithmeticError('singular seed frame cannot translate this centre')
        rows[k],rows[pivot] = rows[pivot],rows[k]
        divisor = rows[k][k]
        rows[k] = [v/divisor for v in rows[k]]
        for i in range(n):
            if i != k:
                factor = rows[i][k]
                rows[i] = [a-factor*b for a,b in zip(rows[i],rows[k])]
    solution = [row[-1] for row in rows]
    if any(sum(a*b for a,b in zip(row,solution)) != value for row,value in zip(matrix,rhs)):
        raise ArithmeticError('exact translation witness failed')
    return solution


def grid_seed(seed):
    """Keep the original ball exact, using a containing ball when necessary."""
    theta = [rational(v) for v in seed['theta0']]
    scale = 2**60
    if all((v*scale).denominator == 1 for v in theta):
        return seed, None
    grid = [Q(round(v*scale),scale) for v in theta]
    matrix = [[rational(seed['Mth'][4*i+j]) for j in range(4)] for i in range(4)]
    offset = solve_exact(matrix,[a-b for a,b in zip(theta,grid)])
    sigma = sqrt_upper(sum(v*v for v in offset))
    radius = rational(seed['r'])
    frame = [[rational(seed['U'][4*i+j]) for j in range(4)] for i in range(36)]
    p = [[rational(v)] for v in seed['P']]
    adjusted = deepcopy(seed)
    adjusted['theta0'] = grid
    adjusted['r'] = radius+sigma
    adjusted['P'] = [row[0]-sum(a*b for a,b in zip(u,offset)) for row,u in zip(p,frame)]
    if not (sum(v*v for v in offset) <= sigma*sigma and sigma >= 0 and radius > 0):
        raise ArithmeticError('translation containment bounds failed')
    return adjusted,dict(theta=theta,offset=offset,radius=radius,sigma=sigma,P=p)


def emit_shift(seed,index,shift,core_name,output):
    output=Path(output).resolve()
    if output.parent != OUTPUT_ROOT.resolve():
        raise ValueError('translated module must be directly in WholeBall')
    name=output.stem
    ns='NoFourMUBs.KernelAtlas.WholeBall.'+name
    orientation='(1 : ℤˣ)' if seed['o']==1 else '(-1 : ℤˣ)'
    source=('import KernelAtlas.WholeBall.ShiftedBall\n'
            f'import KernelAtlas.WholeBall.{core_name}\n\n'
            'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n\nopen Matrix\n\n'
            f'namespace {ns}\n\n'
            f'def theta : Fin 4 → ℚ := {vector_expr(shift["theta"])}\n'
            f'def offset : Fin 4 → ℚ := {vector_expr(shift["offset"])}\n'
            f'def radius : ℚ := {lean_rational(shift["radius"])}\n'
            f'def sigma : ℚ := {lean_rational(shift["sigma"])}\n'
            f'def P : Matrix (Fin 36) (Fin 1) ℚ := {matrix_expr(shift["P"])}\n\n')
    core=f'wholeBallCheck Centre{index}.ball Centre{index}.centre Jets{index}.M {core_name}.P {core_name}.V {core_name}.data'
    gate=f'shiftCheck Centre{index}.ball Jets{index}.M {core_name}.P P {core_name}.V theta offset radius {core_name}.data.scalar.bounds.r sigma'
    source+=(f'theorem shift_checked : {gate} = true := by decide +kernel\n\n'
             f'theorem checked : ({core}) && ({gate}) = true := by\n'
             f'  exact Bool.and_eq_true.mpr ⟨{core_name}.checked, shift_checked⟩\n\n'
             'theorem radius_positive : 0 < (radius : ℝ) := by norm_num [radius]\n\n'
             'theorem hC1 : ∀ w : Fin 4 → ℝ, SeedAtlas.wnorm w ≤ (radius : ℝ) →\n'
             f'    0 < Step2.seedR (SeedAtlas.seedOf (realVector theta + realMatrix Jets{index}.M *ᵥ w)) ∧\n'
             '    ∃ Q : RMat6, ∃ N : Matrix Hadamard6.I6 Hadamard6.I6 ℤ,\n'
             f'      SeedAtlas.RepO {orientation} (SeedAtlas.seedOf (realVector theta + realMatrix Jets{index}.M *ᵥ w)) (phaseMat Q) ∧\n'
             f'      frob (Q - recordPhase P - SeedAtlas.tang (phaseFrame (realMatrix {core_name}.V)) w - SeedAtlas.wind N) ≤ ({core_name}.data.scalar.bounds.n : ℝ) :=\n'
             f'  shiftedWholeBallCheck_sound (o := {orientation}) (by decide +kernel)\n'
             f'    {core_name}.checked shift_checked\n\nend {ns}\n')
    write_module(output,source)
    write_module(output.with_name(name+'Axioms.lean'),
                 f'import KernelAtlas.WholeBall.{name}\n\n#print axioms {ns}.checked\n#print axioms {ns}.hC1\n')
