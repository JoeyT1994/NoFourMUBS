"""Higher-order replay of stored proposals. No optimization or global claim."""
from pathlib import Path
import argparse,json,time,hashlib
from flint import arb,ctx
from reconstruction_polynomials import combined_polynomials
from j_localizing import exact_combined as exact_j
from half_p_localizing import exact_combined as exact_p
from partitioned_radical_dual import exact_polynomials,support
HERE=Path(__file__).resolve().parent
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('input');ap.add_argument('output');ap.add_argument('--degree',type=int,default=7);ap.add_argument('--hull',type=int,default=5);args=ap.parse_args()
    ctx.prec=192;proof=json.loads((HERE/args.input).read_text());AJ=exact_j();AP=exact_p();models={s:combined_polynomials(s) for s in [1,-1]};rows=[]
    for row in proof['rows']:
        path=row['path'];den=2**(len(path)//4);nums=[2*int(path[j::4],2)+1-den for j in range(4)];h=arb.pi()/den
        start=time.monotonic();ps,shifts=exact_polynomials(*models[row['sigma']],AJ,AP,row['proposal'])
        check=support(ps,nums,h,den,row['side_radius'],row['q_interval'],args.degree,args.hull)
        rows.append({**row,'check':check,'shifts':shifts})
        print(path,row['sigma'],row['q_interval'],check['support_upper_decimal'],'seconds',time.monotonic()-start,flush=True)
    proof.update(rows=rows,complete=all(r['check']['verified'] for r in rows),original_input={args.input:hashlib.sha256((HERE/args.input).read_bytes()).hexdigest()})
    proof['sources']['partitioned_radical_higher.py']=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    (HERE/args.output).write_text(json.dumps(proof,indent=2)+'\n')
