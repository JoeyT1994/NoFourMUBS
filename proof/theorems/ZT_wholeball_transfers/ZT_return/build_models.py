"""Replay the Z constants for every sampled seed. Export numerical proposals."""
from pathlib import Path
import json,sys,time
from zt_patch import normal_form,export_numeric,load_certificate,SC

def main():
    src=Path(sys.argv[1]); dest=Path(sys.argv[2]);dest.mkdir(parents=True,exist_ok=True)
    d=load_certificate(src/'sample_certificate.json.gz')
    ids=json.loads((src/'sample_seeds.json').read_text());out=[]
    for n,j in enumerate(ids):
        rec={'seed':j}
        try:
            model=normal_form(SC.Ball(d['seeds'][j]))
            rec.update(model['summary'])
            export_numeric(model,dest/f'model_{j}.npz')
        except (ArithmeticError,ValueError,SC.CertError,ZeroDivisionError) as e:
            rec.update(status='NOT ESTABLISHED',failure=str(e))
        out.append(rec)
        (dest/f'model_{j}.json').write_text(json.dumps(rec,indent=2)+'\n')
        if n%20==19:print(n+1,'of',len(ids),'certified',sum(r['status']=='CERTIFIED' for r in out),flush=True)
    (dest/'models_summary.json').write_text(json.dumps(out,indent=2)+'\n')
    print('DONE',len(out),sum(r['status']=='CERTIFIED' for r in out),flush=True)

if __name__=='__main__':main()
