#!/usr/bin/env python3
"""Reconstruct crossing norms afresh, then generate quantitative wall bounds."""
import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import subprocess
import sys
import tempfile
from flint import arb, fmpq, ctx
from bootstrap import HERE
from intervals import endpoints
import walls


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    ctx.prec=224
    with tempfile.TemporaryDirectory(prefix='tc-crossing-wall-') as temporary:
        norms_path=Path(temporary)/'norms.json'
        completed=subprocess.run([sys.executable,str(HERE/'crossing_norms.py'),'--output',str(norms_path)],
                                 text=True,capture_output=True)
        if completed.returncode:
            raise ArithmeticError('crossing norm reconstruction failed: '+completed.stderr[-2000:])
        norms=json.loads(norms_path.read_text())
    scalar_path=HERE.parent/'xball/reference/crossing_continuation_20261028/crossing_scalar_certificate.py'
    spec=importlib.util.spec_from_file_location('tc_exact_crossing_scalar',scalar_path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    exact=module.certify()
    def number(record):return arb(fmpq(int(record['numerator']),int(record['denominator'])))
    q=number(exact['graph_majorants']['normal_q'])
    delta=number(exact['mixed_defect_upper'])
    radius=number(exact['ambient_radius'])
    m=arb(147)/20*radius+arb(105)/2*radius*radius
    patterns=[]
    for p in norms['patterns']:
        alpha=arb(float.fromhex(p['normal_inverse_norm_upper_hex']))
        beta=arb(float.fromhex(p['obstruction_norm_upper_hex']))
        normal=(1-q)/alpha
        mixed=(1-delta)/(beta+m*alpha/(1-q))
        gap=walls.crossing_gap(q,delta,alpha,beta,m,arb(1)/100000,arb(1)/1000)
        patterns.append(dict(number=p['number'],normal_coefficient=endpoints(normal),
                             mixed_coefficient=endpoints(mixed),
                             illustrative_normal_wall='1/100000',illustrative_kernel_wall='1/1000',
                             illustrative_gap_lower=endpoints(gap),
                             illustrative_epsilon=walls.epsilon_below([gap])))
    product=walls.product_gap(arb(2)/7,60,arb(1)/210)
    result=dict(status='VERIFIED QUANTITATIVE LOCAL CONSEQUENCES',
                extension_sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest()
                                   for name in ('verify_walls.py','walls.py','intervals.py','bootstrap.py')},
                crossing_norms_reconstructed=True,crossing_norm_certificate=norms,
                scalar_source_sha256=hashlib.sha256(scalar_path.read_bytes()).hexdigest(),
                normal_defect=endpoints(q),mixed_defect=endpoints(delta),normal_derivative=endpoints(m),
                crossing_residual_scaling='native: mixed divided by 6',patterns=patterns,
                product_unweighted_gap=endpoints(product),
                product_native_scaled_gap=endpoints(walls.unweighted_to_native(product)),
                product_constant_hypotheses_replayed=False,
                complete_boundary_geometry_certified=False,
                all_k_atlas_classification=False)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(status=result['status'],patterns=patterns)))


if __name__=='__main__':main()
