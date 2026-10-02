"""Replay all retained larger regional Fourier-family matrix tubes."""
from pathlib import Path
from fractions import Fraction as F
import argparse,hashlib,json,tempfile,time
from certificate import HERE,prepare,verify_cell


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output-dir',type=Path);args=parser.parse_args()
    manifest=json.loads((HERE/'data/regions.json').read_text())
    cells=manifest['cells'];keys={(c['a'],c['b']) for c in cells}
    coarse={(a,b) for a in range(30) for b in range(a//2+2)}
    unresolved=set(map(tuple,manifest['unresolved_coarse_boxes']))
    assert len(cells)==len(keys)==191 and len(unresolved)==79
    assert not keys&unresolved and keys|unresolved==coarse
    assert all(c['grid']==180 and c['tolerance_denominator']in (8,16) for c in cells)
    assert {(c['a'],c['b']) for c in cells if c['tolerance_denominator']==8}=={(0,0),(3,0),(5,0),(10,2)}
    assert F(15,256)<F(1,16) and F(15,128)<F(1,8)
    # Arithmetic constants are the audited F6 cover constants, with rho<=1/6.
    Q=1<<26;L=218880
    assert 2*(25*Q+10)**2<(36*Q)**2
    assert 2*(12*Q+40)**2<2**63 and 36*Q*Q<2**63
    assert 710*Q*5*(L//38+L//360)<2**63
    assert 128*(6*Q+6*(710*Q*(L//38)//(113*L)+1))<2**63
    print('PASS: exact 191-box regional manifest, 79 explicit gaps, radii and integer ranges',flush=True)
    started=time.monotonic()
    with tempfile.TemporaryDirectory(prefix='wide-family-tube-') as temp:
        work=Path(temp);out=args.output_dir.resolve()if args.output_dir else work/'receipt';out.mkdir(parents=True,exist_ok=True)
        binary,trig,digest=prepare(work)
        (out/'arithmetic.hpp').write_text((work/'arithmetic.hpp').read_text())
        fingerprint={str(p.relative_to(HERE.parent)):hashlib.sha256(p.read_bytes()).hexdigest()
                     for p in (HERE/'certificate.py',HERE/'cover.cpp',HERE/'verify.py',HERE/'data/regions.json',
                               HERE.parent/'PracticalTube/tube.cpp',HERE.parent/'PracticalTube/verify.py')}
        reports=[]
        for k,cell in enumerate(cells):
            name=f"{cell['grid']}_{cell['a']}_{cell['b']}";dest=out/name;saved=dest/'certificate.json'
            center_hash=hashlib.sha256((HERE/'data'/cell['centers']).read_bytes()).hexdigest()
            result=verify_cell(cell,binary,trig,dest)
            result.update(sources=fingerprint,center_sha256=center_hash,trig_sha256=digest)
            saved.write_text(json.dumps(result,indent=2)+'\n')
            reports.append(dict(cell=cell,nodes=result['nodes'],C_cliques=result['graph']['C_cliques'],
                                controls=result['controls'],certificate=str(saved.relative_to(out))))
            if (k+1)%10==0:print('PASS:',k+1,'of',len(cells),'regional boxes;',round(time.monotonic()-started,1),'seconds',flush=True)
        summary=dict(status='PASS',scope=manifest['scope'],boxes=len(cells),unresolved_coarse_boxes=manifest['unresolved_coarse_boxes'],
                     regional_radius='1/256',stronger_region_radius='1/128',unchanged_uniform_radius='1/16384',
                     nodes=sum(x['nodes'] for x in reports),controls=sum(x['controls'] for x in reports),
                     seconds=time.monotonic()-started,regions=reports,sources=fingerprint,trig_sha256=digest)
        (out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
        print('PASS: all 191 complete covers, exact graphs and positive controls; 79 boxes have no new radius',flush=True)


if __name__=='__main__':main()
