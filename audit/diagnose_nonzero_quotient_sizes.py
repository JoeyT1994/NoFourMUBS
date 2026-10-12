"""Read-only size comparison using the archived pseudo-reduction algorithm.

No Lean source, replacement numerator, trace certificate or atlas is emitted.
The recurrence is exactly the one stated in CriticalPseudoReduction.lean.
Only existing, already stored intermediate data is used as the input.
"""
import hashlib
import inspect
import json
import signal
import sys
import time
from pathlib import Path

from prepare_nonzero_moment_clearing import CTX
from flint import fmpq_mpoly
from verify_critical_square_sums import split_reduce

ROOT=Path(__file__).resolve().parent.parent
AUDIT=ROOT/'audit'
DIR=ROOT/'lean/NoFourMUBs/Step2/CriticalZero/SumClearing'


def stored_poly(path,name):
    rows=[]
    for line in path.read_text().splitlines():
        if line.startswith('def '+name+'_part'):
            rows += json.loads(line.split(' := ',1)[1])
    assert rows
    return CTX.from_dict({(dx,dy,dk,0):c for dk,row in enumerate(rows)
                          for dx,ys in enumerate(row) for dy,c in enumerate(ys) if c})


def reduce_size(poly):
    # Observe the original verifier. Do not maintain a second reduction engine.
    lines,start=inspect.getsourcelines(split_reduce)
    degree_line=start+next(i for i,l in enumerate(lines) if 'd=n.degrees()[var]' in l)
    filename=inspect.getsourcefile(split_reduce)
    steps=0;peak=len(poly)
    def observe(frame,event,arg):
        nonlocal steps,peak
        if frame.f_code.co_filename==filename and frame.f_code.co_name=='prem' and event=='line':
            if frame.f_lineno==degree_line:steps+=1
            if 'n' in frame.f_locals:peak=max(peak,len(frame.f_locals['n']))
        return observe
    prior=sys.gettrace()
    try:
        sys.settrace(observe)
        reduced=split_reduce(poly,'nonzero')
    finally:
        sys.settrace(prior)
    p=fmpq_mpoly(str(reduced),CTX)
    return {'initial_terms':len(poly),'final_terms':len(p),'final_degrees':list(map(int,p.degrees())),
            'peak_terms':peak,'steps':steps,'nonconstant_XY_terms':
            sum(1 for ex,c in p.terms() if ex[0] or ex[1])}


def main():
    records=[]
    for filename,name in [('Product0043LeftData.lean','n0041'),('Product0043Data.lean','n0043')]:
        path=DIR/filename;p=stored_poly(path,name)
        start=time.monotonic();signal.alarm(50)
        record=reduce_size(p);signal.alarm(0)
        record.update(input=str(path.relative_to(ROOT)),sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                      elapsed_seconds=time.monotonic()-start)
        records.append(record);print(json.dumps(record),flush=True)
    result={'status':'READ_ONLY_SIZE_DIAGNOSTIC_NOT_LEAN_PROOF','records':records,
            'new_proof_route_started':False,'atlas_certification':False,
            'reused_original_reducer':inspect.getsourcefile(split_reduce),
            'reused_original_reducer_sha256':hashlib.sha256(Path(inspect.getsourcefile(split_reduce)).read_bytes()).hexdigest()}
    (AUDIT/'CRITICAL_NONZERO_QUOTIENT_SIZE_DIAGNOSTIC.json').write_text(json.dumps(result,indent=2)+'\n')


if __name__=='__main__':main()
