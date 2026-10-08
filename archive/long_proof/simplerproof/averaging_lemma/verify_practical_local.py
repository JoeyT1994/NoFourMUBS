"""Replay the finite-radius cutoff-5 local theorem. No global cover claimed."""
import contextlib, hashlib, io, json
from fractions import Fraction as Q
from pathlib import Path
from practical_remainder import run
HERE=Path(__file__).resolve().parent

def main():
    # Regenerate the algebra from the defining equations, rather than
    # accepting saved coefficient tables or their previous PASS fields.
    from practical_local_jet import run as second_jet
    from practical_cubic_bound import run as third_jet
    with contextlib.redirect_stdout(io.StringIO()):
        second_jet()
        third_jet()
    print('Exact second and third jets regenerated.',flush=True)
    points=[Q(0),Q(39,200)]+[Q(k,40) for k in range(8,25)]
    rows=[]
    for k,(a,b) in enumerate(zip(points,points[1:])):
        with contextlib.redirect_stdout(io.StringIO()):
            r=run(Q(3,10),None,Q(39,200),'practical_radius03_%02d.json'%k,
                  s_min=a if a else None,s_max=b)
        assert Q(r['normal_error_cap'])<=Q(3,8)
        assert Q(r['maximum_paired_remainder_order4'])<29
        rows.append({q:r[q] for q in ['S_interval','normal_error_cap','maximum_paired_remainder_order4']})
        print('S in',str(a),str(b),'normal cap',r['normal_error_cap'],'corner C4',r['maximum_paired_remainder_decimal'],flush=True)
    threshold=Q(39,200)
    lower=lambda s:12*s-2*s**3-29*s**4
    distance=threshold/6+(Q(1,200)+Q(5,1056))*threshold**3+Q(5,32)*threshold**4
    assert lower(threshold)>0 and lower(threshold)**2>5
    assert lower(Q(3,5))>0 and lower(Q(3,5))**2>5
    assert distance<Q(1,30)
    # These are adjacent closed intervals; the first includes s=0 by
    # the same error estimate, though no annulus exclusion is needed there.
    rows[0]['S_interval']=['0',str(threshold)]
    assert all(rows[k]['S_interval'][1]==rows[k+1]['S_interval'][0] for k in range(len(rows)-1))
    result=dict(status='PASS',scope='Local theorem conditional on a horizontal F6 phase norm <=3/10',
        rho='3/10',S_threshold=str(threshold),normal_error_constant='3/8',corner_remainder_constant=29,
        lower_at_threshold=str(lower(threshold)),lower_at_outer=str(lower(Q(3,5))),
        distance_bound=str(distance),distance_decimal=float(distance),global_cover_complete=False,intervals=rows,
        source_sha256={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in
            ['practical_local_jet.py','practical_cubic_bound.py','practical_remainder.py','verify_practical_local.py']})
    (HERE/'practical_radius03_cover.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='intervals'},indent=2))
if __name__=='__main__':main()
