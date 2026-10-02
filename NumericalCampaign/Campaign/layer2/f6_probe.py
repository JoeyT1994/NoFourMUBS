"""Evidence selection plus outward containment at exact F6 references.

This probe does not close cells. It identifies exact F6 points inside
survivors and times retained T2 rules on roots and level-11 subcells.
"""
import argparse,collections,json,math,sys,time
from pathlib import Path
from fractions import Fraction
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedLifting'))
import near_f6,zero_neighbourhood
from flint import arb,ctx

def main():
    p=argparse.ArgumentParser();p.add_argument('survivors',type=Path);p.add_argument('output',type=Path)
    a=p.parse_args();ctx.prec=160;found=[];cache={}
    for line in a.survivors.open():
        f=line.split();th=list(map(float,f[3:]));lev=int(f[2]);nn=tuple(round(3*x/math.pi) for x in th)
        if any(abs(x-n*math.pi/3)>math.pi/2**lev+2**-40 for x,n in zip(th,nn)):continue
        nmod=tuple(n%6 for n in nn)
        if nmod not in cache:cache[nmod]=near_f6.certify_f6_centered_cube(nmod,Fraction(0))
        if not cache[nmod]['ok']:continue
        h=arb.pi()/2**lev+arb(2)**-40
        inside=all(abs(arb(x)-arb(n)*arb.pi()/3)<=h for x,n in zip(th,nn))
        r=dict(cell=int(f[0]),job=int(f[1]),level=lev,theta=th,reference_pi_over_3=nn,
               exact_reference_inside_enlarged_parent=inside,F6_class_certificate=cache[nmod])
        start=time.process_time();rad=math.nextafter(math.pi/2**lev+2**-40,math.inf)
        r['root_T2']=near_f6.certify_box(list(map(arb,th)),[arb(rad)]*4)
        if not r['root_T2']['ok']:r['root_T2']=zero_neighbourhood.certify_box(list(map(arb,th)),[arb(rad)]*4)
        r['root_T2_cpu_seconds']=time.process_time()-start
        found.append(r)
    representatives={}
    for r in found:representatives.setdefault(r['F6_class_certificate']['cube'],r)
    for r in representatives.values():
        start=time.process_time();accepted=[];lev=r['level'];theta=r['theta']
        for j in range(16):
            c=[x+(math.pi/2**(lev+1) if j>>i&1 else -math.pi/2**(lev+1)) for i,x in enumerate(theta)]
            for k in range(16):
                cc=[x+(math.pi/2**(lev+2) if k>>i&1 else -math.pi/2**(lev+2)) for i,x in enumerate(c)]
                hh=math.nextafter(math.pi/2**(lev+2)+2**-40+2*2**-48,math.inf)
                for name,fun in [('near_f6',near_f6.certify_box),('zero_neighbourhood',zero_neighbourhood.certify_box)]:
                    cert=fun(list(map(arb,cc)),[arb(hh)]*4)
                    if cert['ok']:
                        accepted.append(dict(path=[j,k],theta=cc,radius=hh,engine=name,certificate=cert));break
        r['level11_probe']=dict(leaves=256,accepted=accepted,cpu_seconds=time.process_time()-start,
            closure='OPEN' if len(accepted)<256 else 'requires_full_audit')
    result=dict(scope='F6 reference containment and T2 diagnostic; not a layer coverage certificate',
        candidates=found,representative_ids=[r['cell'] for r in representatives.values()])
    with a.output.open('x') as f:json.dump(result,f,indent=2);f.write('\n')
    print('F6-containing survivors:',len(found),'rigorous point containment:',sum(r['exact_reference_inside_enlarged_parent'] for r in found),
          'whole-root T2:',sum(r['root_T2']['ok'] for r in found),flush=True)
    for r in representatives.values():print(r['cell'],r['F6_class_certificate']['cube'],len(r['level11_probe']['accepted']),'/256 T2 leaves',round(r['level11_probe']['cpu_seconds'],3),'CPU-s',flush=True)

if __name__=='__main__':main()
