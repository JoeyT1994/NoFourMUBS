#!/usr/bin/env python3
"""Reproduce the new checks, without importing supplied project source.

Exact upstream crossing structure and coefficient-amplitude certification
remain explicit inputs. Reading their receipts is not a replay of that code.
"""
from fractions import Fraction as Q
from pathlib import Path
import hashlib
import json
import re

if not __debug__:
    raise RuntimeError('Run proof verification without Python optimization flags.')

from projected_frequency_bounds import verify_pattern
from crossing_scalar_certificate import certify
from regular_reference import verify as verify_regular
from family_interval_check import check_data

ROOT=Path(__file__).resolve().parent


def write_json(name,data):
    (ROOT/name).write_text(json.dumps(data,indent=2)+'\n')


def arb_upper(text):
    match=re.fullmatch(r'\[([^\[\]]+?) \+/- ([^\[\]]+?)\]',text)
    if match is None:
        raise ValueError('Unrecognized Arb interval format')
    mid,rad=map(Q,match.groups())
    assert rad>=0
    return mid+rad


def check_input_bindings():
    radius=json.loads((ROOT/'input/crossing/crossing_radius_20261028_v3.json').read_text())
    structure=json.loads((ROOT/'input/crossing/crossing_structure_20261028.json').read_text())
    assert radius['base_binding']==structure['base_binding']
    mappings={
        'results/crossing_structure_20261028.json':'input/crossing/crossing_structure_20261028.json',
        'reference/prior_local_CHECKPOINT.md':'input/crossing/prior_local_CHECKPOINT.md',
        'experiments/crossing_radius.py':'input/crossing/crossing_radius.py',
        'experiments/crossing_structure.py':'input/crossing/crossing_structure.py',
        'experiments/QUANTITATIVE_CROSSING.md':'input/crossing/QUANTITATIVE_CROSSING.md',
    }
    hashes={}
    for source,local in mappings.items():
        digest=hashlib.sha256((ROOT/local).read_bytes()).hexdigest()
        assert digest==radius['sources_sha256'][source],source
        hashes[source]=digest
    bounds={'normal_inverse_defect':Q(1,10**14),
            'hessian_H':Q(1167,500),'third_derivative_H':Q(63),
            'hessian_G':Q(147,20),'third_derivative_G':Q(105)}
    assert {p['number'] for p in radius['patterns']}=={1,2}
    assert {p['number'] for p in structure['patterns']}=={1,2}
    for p in radius['patterns']:
        assert p['physical_actions_exact'] is True
        assert p['third_frequency_gram_row_bound']==308
        for name,bound in bounds.items():
            assert arb_upper(p[name])<bound,(p['number'],name)
    for p in structure['patterns']:
        assert p['jacobian_rank']==51 and p['augmented_rank']==55
        assert p['mixed_cokernel_rank']==4
        assert p['fixed_plane_dimensions']==[2,2]
        assert p['commuting_actions'] is True
        assert p['exact_fourier_covariance'] is True
        assert p['orthogonal_fixed_planes'] is True
    return structure,dict(
        status='CHECKED receipt consistency, attached source hashes, and exact domination of Arb endpoints',
        attached_hashes=hashes,
        rational_upper_bounds={k:str(v) for k,v in bounds.items()},
        missing_hashed_source='results/exact_centres.json',
        exact_structure_or_Arb_generation_replayed=False,
        coefficient_amplitude_construction='Retained input, confirmed by reading the supplied source; cubic factor sqrt(308)',
        supplied_project_python_imported_or_executed=False)


def uniform_patch_checks(certificate):
    base=json.loads(certificate.read_text())
    T=base['jacobian_denominator'];Z=base['jacobian_numerators']
    def enclosure(width):
        return dict(lower=[[str(Q(z,T)-width) for z in row] for row in Z],
                    upper=[[str(Q(z,T)+width) for z in row] for row in Z],
                    sigma_lower=[7,5])
    # The entire exact same-action reference patch has this entrywise J bound.
    reference_patch_radius=Q(1,100000)
    exact_J_midpoint_error=Q(1,10**8)
    assert 60*reference_patch_radius+exact_J_midpoint_error<Q(1,1000)
    narrow=check_data(enclosure(Q(1,1000)),certificate)
    assert narrow['certified_uniform_moving_bound'] is True
    assert narrow['valid_tube_radius_if_passed']==[7,300]
    assert narrow['squared_enclosure_error']==['108','15625']
    wide=check_data(enclosure(Q(1,100)),certificate)
    assert wide['certified_uniform_moving_bound'] is False
    assert wide['valid_tube_radius_if_passed'] is None
    return dict(status='PROVED for exact same-action references in the stated patch',
                reference_patch_horizontal_radius=str(reference_patch_radius),
                entrywise_jacobian_halfwidth='1/1000',
                valid_patch=narrow,
                wider_enclosure_returns_inconclusive=wide,
                upstream_parameter_box_enclosure_computed=False)


def main():
    print('Checking supplied receipt bindings and rational bounds...',flush=True)
    structure,bindings=check_input_bindings()
    print('Recomputing both exact projected-frequency certificates...',flush=True)
    frequency=dict(status='PROVED',arithmetic='standard-library exact Q(sqrt(3))',
        input_sha256=hashlib.sha256((ROOT/'input/crossing/crossing_structure_20261028.json').read_bytes()).hexdigest(),
        patterns=[verify_pattern(p) for p in structure['patterns']])
    write_json('projected_frequency_bounds_verified.json',frequency)
    print('Checking enlarged crossing scalar inequalities...',flush=True)
    scalar=certify()
    write_json('crossing_scalar_certificate.json',scalar)
    print('Verifying the saved regular reference by intervals and integers...',flush=True)
    certificate=ROOT/'regular_reference_certificate.json'
    regular=verify_regular(certificate)
    write_json('regular_reference_verified.json',regular)
    print('Checking a uniform reference patch and an inconclusive wider enclosure...',flush=True)
    patch=uniform_patch_checks(certificate)
    write_json('family_interval_patch_verified.json',patch)
    result=dict(
        all_independent_checks_passed=True,
        status='PROVED new arithmetic and analytic implications with the documented upstream dependencies',
        normalization='radians; horizontal72 quotient; correctly aligned dephased55 sufficient; regular residuals unweighted96',
        input_bindings=bindings,
        projected_frequency_receipt='projected_frequency_bounds_verified.json',
        crossing_full_phase_ball_radius='1/50',
        crossing_mixed_defect=scalar['mixed_defect_upper'],
        regular_reference=regular,
        uniform_patch=patch,
        gluing='Analytic proof in gluing.md; same-anchor horizontal C=101/25, yielding gamma>=1/202 outside the matching radius-1/50 union',
        qualitative_crossing_surface_input_required=False,
        original_all_K_inclusion_or_atlas_cover_replayed=False,
        supplied_project_python_imported_or_executed=False)
    write_json('VERIFIED.json',result)
    print(json.dumps({k:result[k] for k in [
        'all_independent_checks_passed','crossing_full_phase_ball_radius',
        'crossing_mixed_defect','qualitative_crossing_surface_input_required',
        'original_all_K_inclusion_or_atlas_cover_replayed']},indent=2))


if __name__=='__main__':
    main()
