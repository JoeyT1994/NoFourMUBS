"""Whole-box application of the complete active Fourier seed certificate.

Domain: a framed strict maximal Hadamard corner with M<5. A successful
containment gives horizontal phase norm <6/25 and hence d_F<1/30 by
PRACTICAL_LOCAL. Transposed frames preserve horizontal Frobenius norm.
"""
from pathlib import Path
import sys,json,hashlib
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
from direct_lift import frame_matrices
from flint import arb,ctx
from global_seed_cover import box

def verify_inputs():
    receipt=json.loads((HERE/'active_seed_lift_receipt.json').read_text())
    assert receipt['status']=='PASS' and receipt['halfwidth']=='1/1024'
    assert receipt['seed_pi_thirds']==[1,2,2,4] and receipt['cutoff']==5
    for path,digest in receipt['sources'].items():
        assert hashlib.sha256((ROOT/path).read_bytes()).hexdigest()==digest,path
    assert len(receipt['replays'])==2
    for row in receipt['replays']:
        r=row['result'];assert r['ok'] and arb(r['phase_norm_upper'])<arb(6)/25
        assert r['verified_rectangles']+64*r['seed_tiles_excluded']==8*64
    return receipt

def certify_box(centers,radii):
    cc=list(map(arb,centers));hh=list(map(arb,radii))
    assert len(cc)==len(hh)==4 and all(x.is_finite() for x in cc+hh) and all(x>=0 for x in hh)
    radius=arb(1)/1024;target=[arb.pi()*n/3 for n in [1,2,2,4]]
    for rows,cols,tr,matrix in frame_matrices():
        assert all(any(row) for row in matrix)
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        if any(h>radius for h in widths):continue
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        shifts=[round(float(((a-b)/(2*arb.pi())).mid())) for a,b in zip(transformed,target)]
        errors=[abs(a-2*k*arb.pi()-b)+h for a,b,k,h in zip(transformed,target,shifts,widths)]
        if all(e<=radius for e in errors):
            return dict(ok=True,reason='active_Fourier_phase_terminal',rows=list(rows),columns=list(cols),transpose=tr,
                frame_matrix=matrix,period_shifts=shifts,phase_norm_bound='6/25',distance_conclusion='d_F<1/30',
                conditional_on_strict_maximal_corner_and_M_less_than=5)
    return dict(ok=False,reason='not_contained_in_active_seed_cube')

def certify_path(path):
    centers,radii=box(path)
    return certify_box([arb.pi()*c.numerator/c.denominator for c in centers],
                       [arb.pi()*h.numerator/h.denominator for h in radii])

def main():
    ctx.prec=160;verify_inputs();c=[arb.pi()*n/3 for n in [1,2,2,4]]
    controls=[]
    for rows,cols,tr,matrix in frame_matrices():
        transformed=[sum(a*x for a,x in zip(row,c)) for row in matrix]
        result=certify_box(transformed,[arb(1)/16384]*4);assert result['ok']
        controls.append(result)
    assert len(controls)==72
    assert not certify_box(c,[arb(1)/512]*4)['ok']
    assert not certify_box([arb(0)]*4,[arb(1)/16384]*4)['ok']
    result=dict(status='PASS',scope='Whole-box containment in all 72 corner frames; not global coverage',global_confinement_proved=False,
        positive_frame_controls=len(controls),negative_controls=2,
        source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        proof_receipt_sha256=hashlib.sha256((HERE/'active_seed_lift_receipt.json').read_bytes()).hexdigest())
    (HERE/'active_seed_terminal_checks.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':main()
