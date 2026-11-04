"""CERTIFIED reduced-radius fallbacks for original whole-ball failures.

A record certifies only its explicitly smaller radius. No claim about coverage
of the corresponding original ball is made.
"""
import sys,json,csv,argparse
from pathlib import Path
from decimal import Decimal
import numpy as np
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'fullphase'))
import certify as cert

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--refresh',action='store_true',help='Reverify the exact radii already stored, without another radius search.');args=ap.parse_args()
 cert.ctx.prec=224
 original=[json.loads(l) for l in open(ROOT/'fullphase/FINAL_CERTIFICATES.jsonl')]
 failures={a['j']:a for a in original if not a.get('contraction',False)}
 rows=list(csv.DictReader(open(ROOT/'Z_completion_hessian/context/ball_table.csv')))
 data=np.load(ROOT/'numerics/centres.npz');V,X=cert.geometry()
 dst=ROOT/'bounds/reduced_radius_certificates.jsonl'
 fixed={a['j']:a for a in (json.loads(l) for l in dst.read_text().splitlines())} if args.refresh else {}
 with dst.open('w') as f:
  for i,row0 in enumerate(rows):
   j=int(row0['j'])
   if j not in failures:continue
   co={k:data[k][i] for k in ['H','Q1','Q2','phih','phiv']};M=data['M'][i]
   original_r=Decimal(row0['r']);attempts=[];best=None;low=None;high=Decimal(1)
   def check(fraction):
    row=dict(row0);row['r']=format(original_r*fraction,'f')
    record=cert.certify(row,co,M,V,X)
    passed=record.get('contraction',False) and record.get('orientation',False)
    attempts.append(dict(fraction_decimal=format(fraction,'f'),r_decimal=row['r'],passed=bool(passed),
                         status=record['status'],q=record['q'],orientation=record.get('orientation'),
                         Cw=record.get('Cw'),n_record=record.get('n_record')))
    print(j,'fraction',fraction,'pass',passed,'q',record['q'],'orientation',record.get('orientation'),flush=True)
    return record,passed
   fractions=[Decimal(fixed[j]['fraction_decimal'])] if args.refresh else list(map(Decimal,['0.8','0.6','0.4','0.2','0.1']))
   for fraction in fractions:
    record,passed=check(fraction)
    if passed:best=record;low=fraction;break
    high=fraction
   if best is not None:
    for _ in range(0 if args.refresh else 3):
     fraction=(low+high)/2
     record,passed=check(fraction)
     if passed:best=record;low=fraction
     else:high=fraction
   if best is None:
    out=dict(j=j,status='NOT ESTABLISHED',original_r_decimal=row0['r'],attempts=attempts,
             scope='Reduced-radius tests only; original ball not certified by this fallback.')
   else:
    out=dict(best);out.update(original_r_decimal=row0['r'],safe_r_decimal=best['rounded_record']['r_decimal'],
        fraction_decimal=format(low,'f'),attempts=attempts,metric='canonical',
        scope='Only the stated reduced radius is certified. The original ball is not covered by this fallback.',
        radius_search=('Fixed previously selected radius reverified with the current verifier; no new radius search.' if args.refresh else 'Largest tested passing fraction after three bisection refinements; no optimality claim.'))
   f.write(json.dumps(out)+'\n');f.flush()
 records=[json.loads(l) for l in dst.read_text().splitlines()]
 cols=['j','original_r_decimal','safe_r_decimal','fraction_decimal','status','orientation','q','Cw','n_record','strict_margin_R']
 with dst.with_suffix('.csv').open('w') as f:
  writer=csv.DictWriter(f,fieldnames=cols);writer.writeheader();writer.writerows([{k:a.get(k) for k in cols} for a in records])
 print('OUTPUT',dst,flush=True)
if __name__=='__main__':main()
