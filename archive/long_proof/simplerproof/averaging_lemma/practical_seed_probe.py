"""Cutoff-5 side-cover probes on ten retained seed boxes; NOT a global cover.

The assumption M(H)<=5 supplies the cap on every corner. No unconditional
R cap on the seed box is asserted. Outward side-cover acceptances alone
exclude that assumption; failures remain open.
"""
from pathlib import Path
import hashlib,json,sys,time
from fractions import Fraction as Q
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/PairedSidePrune'))
from paired_prune import arb,cover_paired_sides
from flint import ctx

def main():
    source=ROOT/'ProvenResults/CornerBounds/LocalBranchGap/data/nearzero10.json'
    rows=[]
    for row in json.loads(source.read_text())['cells']:
        c=[Q(x) for x in row['theta']]
        start=time.monotonic();ctx.prec=96
        cc=[arb(q.numerator)/q.denominator for q in c]
        h=arb.pi()/512+arb(2)**-40
        result=cover_paired_sides(cc,[h]*4,arb(5),depth=12)
        replay=None
        if result['ok']:
            ctx.prec=160
            cc=[arb(q.numerator)/q.denominator for q in c]
            h=arb.pi()/512+arb(2)**-40
            replay=cover_paired_sides(cc,[h]*4,arb(5),depth=12)
            assert replay['ok']
        out=dict(cell=row['cell'],centers_radians=list(map(str,c)),radius='pi/512+2^-40',
            cutoff=5,certified=result['ok'] and replay is not None and replay['ok'],
            result=result,replay=replay,seconds=time.monotonic()-start)
        rows.append(out)
        print(row['cell'],out['certified'],result['reason'],out['seconds'],flush=True)
        report=dict(scope='Ten finite seed boxes, conditional on M<=5; NOT a global cover',
            global_cover_complete=False,source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),rows=rows)
        (HERE/'practical_seed_probe.json').write_text(json.dumps(report,indent=2)+'\n')
if __name__=='__main__':main()
