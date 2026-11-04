"""Freeze cap geometry and prove exact sphere coverage before Arb replay.

Hull pruning and optional tiny threshold increases are proposals only. All
coverage claims require cap_coverage.verify_coverage. Every transfer still
requires the separate xball_replay.py run on the frozen output bytes.
"""
from __future__ import annotations
import argparse,gzip,hashlib,json,time
from pathlib import Path
import numpy as np
from scipy.spatial import ConvexHull
import xball_construct as B
import cap_coverage as C


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--input',type=Path,default=B.ROOT/'results/xball_final_proposal.json')
    ap.add_argument('--output',type=Path,default=B.ROOT/'results/xball_caps_certificate.json')
    ap.add_argument('--receipt',type=Path,default=B.ROOT/'results/coverage_replay.json')
    args=ap.parse_args();st=time.perf_counter()
    proposal=json.loads(args.input.read_text());caps=proposal['caps']
    rows=C.integer_rows(caps);unique={tuple(row):cap for row,cap in zip(rows,caps)}
    candidates=list(unique.values())
    diagnostic,_=B.hull_diagnostic(candidates)
    if diagnostic['minimum_distance']<=1.0000008:
        raise ArithmeticError('proposal lacks required numerical margin for finalization: '+str(diagnostic))
    attempts=[]
    for jitter in (0,7,31):
        trial=[]
        for cap in candidates:
            c={k:v for k,v in cap.items() if k!='info'}
            if jitter:
                if c['mode']!='local_sphere' or any(c.get('multiplier_vec',[0,0,0,0])):
                    raise ValueError('threshold perturbation requires local_sphere and scalar multipliers')
                if type(c['h']) is not int:raise ValueError('threshold perturbation requires integer h')
                token=json.dumps([c['v'],c['h']],separators=(',',':')).encode()
                c['h']+=1+int.from_bytes(hashlib.sha256(token).digest()[:4],'big')%jitter
            trial.append(c)
        points=np.array([c['v'] for c in trial],float)/np.array([B.scalar(c['h']) for c in trial])[:,None]
        hull=ConvexHull(points)
        trial=[trial[int(i)] for i in hull.vertices]
        coverage=C.construct_coverage_certificate(trial,compact=True)
        verification_started=time.perf_counter()
        result=C.verify_coverage(trial,coverage)
        attempts.append(dict(jitter=jitter,coverage=result,seconds=time.perf_counter()-verification_started))
        print(json.dumps(attempts[-1]),flush=True)
        if result.get('passed') and result.get('covers'):
            certificate=dict(format='zc2a-edge-cap-certificate-v1',caps=trial,coverage=coverage)
            raw=json.dumps(certificate,separators=(',',':')).encode()
            args.output.write_bytes(raw)
            (args.output.with_suffix('.json.gz')).write_bytes(gzip.compress(raw,mtime=0))
            # Expanded-witness size is measured, but need not be distributed:
            # the index schema reconstructs all those integers exactly.
            old=dict(schema=C.SCHEMA,dimension=4,cap_count=len(trial),facets=[])
            introws=C.integer_rows(trial)
            for simplex in coverage['simplices']:
                numerator,denominator=C.exact_dual_vertex(introws,simplex)
                old['facets'].append(dict(vertices=simplex,numerator=numerator,denominator=denominator))
            compact_bytes=json.dumps(coverage,separators=(',',':')).encode()
            expanded_bytes=json.dumps(old,separators=(',',':')).encode()
            sizes=dict(certificate_json=len(raw),certificate_gzip=len(gzip.compress(raw,mtime=0)),
                       compact_coverage_json=len(compact_bytes),compact_coverage_gzip=len(gzip.compress(compact_bytes,mtime=0)),
                       expanded_coverage_json=len(expanded_bytes),expanded_coverage_gzip=len(gzip.compress(expanded_bytes,mtime=0)))
            receipt=dict(status='CERTIFIED coverage only',transfers='NOT ESTABLISHED by this receipt',
                         input_proposal_sha256=hashlib.sha256(args.input.read_bytes()).hexdigest(),
                         certificate_sha256=hashlib.sha256(raw).hexdigest(),caps=len(trial),
                         groups=len({c['group_index'] for c in trial}),
                         proposal_caps=len(caps),deduplicated_caps=len(candidates),
                         coverage=result,attempts=attempts,sizes=sizes,seconds=time.perf_counter()-st)
            args.receipt.write_text(json.dumps(receipt,indent=2)+'\n')
            print(json.dumps({k:v for k,v in receipt.items() if k!='attempts'}),flush=True)
            return
    raise ArithmeticError('all exact coverage proposals rejected')


if __name__=='__main__':main()
