#!/usr/bin/env python3
"""Replay every new finite certificate using the Python standard library.

Do not run with -O: these exact verifiers deliberately use assertions.
This driver launches each component in isolated mode, without optimization.
"""
from fractions import Fraction as F
from pathlib import Path
import json
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / 'certificates'


def replay(name, json_receipt=None):
    started = time.monotonic()
    result = subprocess.run(
        [sys.executable, '-I', str(ROOT / 'scripts' / name)],
        cwd=ROOT, text=True, capture_output=True,
    )
    (CERT / (name.removesuffix('.py') + '.log')).write_text(result.stdout + result.stderr)
    if result.returncode:
        print(result.stdout)
        print(result.stderr, file=sys.stderr)
        raise SystemExit(result.returncode)
    if json_receipt:
        data = json.loads(result.stdout)
        assert data['status'] in ('PASS', 'CERTIFIED')
        (CERT / json_receipt).write_text(json.dumps(data, indent=2, sort_keys=True) + '\n')
    print(f'{name}: PASS ({time.monotonic()-started:.2f} s)', flush=True)


def assemble():
    chart = json.loads((CERT / 'chart.json').read_text())
    block = json.loads((CERT / 'block_phase.json').read_text())
    coords = json.loads((CERT / 'coordinates.json').read_text())
    iso = json.loads((CERT / 'isotropy.json').read_text())
    extract = json.loads((CERT / 'extraction.json').read_text())
    assert chart['status'] == block['status'] == 'PASS'
    assert F(chart['contraction_upper']) < F(163, 200)
    assert F(chart['total_correction_upper']) == F(153, 10000)
    assert F(chart['determinant_abs_lower']) > F(7, 10)
    assert F(block['uniform_principal_phase_error_upper']) == F(11, 50)
    assert F(iso['visible_phase_correction']) == F(chart['total_correction_upper'])
    assert F(iso['hidden_phase_correction']) == F(block['uniform_principal_phase_error_upper'])
    assert iso['stabilizers'] == 72 and iso['pairs_checked'] == 720**2
    assert iso['visible_rectangle_exclusions'] + iso['additional_hidden_rectangle_exclusions'] == 720**2 - 72
    envelope = coords['rho_3_20_envelope']
    assert F(envelope['coordinate_norm_upper']) == F(3855986956803, 19531250000000)
    assert F(envelope['coordinate_norm_upper']) < F(1, 5)
    assert extract['chart_sigma_min_global_unscaled'] == '>=1/265'

    rho = F(3, 20)
    f = lambda r: F(4, 3)*r**2 + F(10, 3)*r**3 + F(249, 24)*r**4
    boundary = rho + f(rho)
    assert boundary == F(251523, 1280000)
    assert F(1, 5) - boundary == F(4477, 1280000)
    assert rho > F(13, 100) and rho > F(1, 8)
    assert F(197, 137)*F(2537, 1000)/(1-F(163, 200)) < 20
    assert 20*74*60**2 == 5328000
    assert F(6, 1)/F(7, 10) < 9
    # Completion derivative constants; all are upper bounds, not estimates.
    wp = 9**2*150
    wpp = 2*9**3*150**2 + 9**2*13329000
    dp = 150*3*9 + 3*120*9 + 3*3*wp
    dpp = (13329000*3*9 + 3*10663200*9 + 3*3*wpp
           + 2*150*120*9 + 2*150*3*wp + 2*3*120*wp)
    assert wp == 12150 and wpp == 1112454000
    assert dp == 116640 and dpp == 10679882400
    assert 6*(dpp + dp**2) == 145708632000 < 150000000000
    summary = {
        'status': 'PASS',
        'base_theorem_dependency': 'Supplied U full Hadamard germ theorem, input/U_REPORT.md Sections 3.2 and 4.1-4.3',
        'fixed_U_parameter_ellipsoid_radius': '1/5 in the horizontal linear tangent metric',
        'phase_quotient_coverage_radius': '3/20',
        'boundary_phase_quotient_distance': '>3/20',
        'coverage_path_coordinate_norm_upper': str(F(envelope['coordinate_norm_upper'])),
        'boundary_extraction_norm_upper': str(boundary),
        'boundary_parameter_margin': str(F(1, 5)-boundary),
        'framed_injectivity': True,
        'only_equivalence_permutation_pairs': 72,
        'raw_parameter_sigma_min_lower': '1/265',
        'raw_parameter_Hessian_upper': 150000000000,
        'acceptance_arithmetic': 'integers, fractions, and exact Q(sqrt(3)); no floating-point acceptance checks',
        'not_established': ['coverage radius 0.2 for the fixed U chart', 'Lean formalization', 'existing atlas boundary-transfer validation'],
    }
    (CERT / 'SUMMARY.json').write_text(json.dumps(summary, indent=2) + '\n')
    print('Final scalar assembly and certificate interfaces: PASS', flush=True)
    print(json.dumps(summary, indent=2))


if __name__ == '__main__':
    if not __debug__:
        raise SystemExit('Run without -O: assertions are part of the exact verifier.')
    CERT.mkdir(exist_ok=True)
    (ROOT / 'data').mkdir(exist_ok=True)
    replay('verify_chart.py')
    replay('verify_block_phase.py')
    replay('verify_spectrum.py', 'spectrum.json')
    replay('verify_coordinates.py', 'coordinates.json')
    replay('verify_extraction_bounds.py', 'extraction.json')
    replay('verify_global_isotropy.py', 'isotropy.json')
    assemble()
