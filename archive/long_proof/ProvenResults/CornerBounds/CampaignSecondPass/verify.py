"""Replay representative real-cell covers and independent failure controls."""
from pathlib import Path
from fractions import Fraction as Q
import copy,json
from flint import ctx
from second_pass import arb,certify_box,replay,audit_partition,leaf_box
from run import cell_box


def controls():
    paths=['00','01','10','110','111'];audit_partition(paths)
    assert sum(Q(1,2**len(p)) for p in paths)==1
    for path in paths:
        exactc=[Q(0)]*4;exacth=[Q(1)]*4
        for k,bit in enumerate(path):
            j=k%4;exacth[j]/=2;exactc[j]+=(-1 if bit=='0' else 1)*exacth[j]
        cc,hh=leaf_box([arb(0)]*4,[arb(1)]*4,path)
        for c,h,ec,eh in zip(cc,hh,exactc,exacth):
            assert c==arb(ec.numerator)/ec.denominator and h==arb(eh.numerator)/eh.denominator
    for bad in ([],paths[:-1],paths+[paths[0]],['','0'],['x']):
        try:audit_partition(bad)
        except ValueError:pass
        else:raise AssertionError('Malformed cover accepted')
    # Genuine maximal physical Fourier controls: the retained CornerBounds
    # curve has leading R=2304v^2/(1+v^2)^4, delta=2 atan(v).
    for delta in (arb(0),2*(arb(1)/128).atan()):
        cc=[4*arb.pi()/3,5*arb.pi()/3+delta,arb(0),arb.pi()+delta]
        for threshold in (None,1):
            out=certify_box(cc,[arb.pi()/512]*4,max_depth=1,threshold=threshold)
            assert not out['ok'],out
    # Tao's E2(omega,omega) is a physical maximal corner with R=243.
    cc=[arb(k)*arb.pi()/3 for k in (2,4,2,2)]
    assert not certify_box(cc,[arb.pi()/512]*4,max_depth=1)['ok']
    assert not certify_box(cc,[arb(1)]*4,node_budget=0)['ok']
    assert not certify_box([arb('nan')]*4,[arb(1)]*4)['ok']
    for hh,options in (([-1]*4,{}),([1]*4,{'threshold':0}),([1]*4,{'threshold':-1})):
        try:certify_box(cc,hh,**options)
        except ValueError:pass
        else:raise AssertionError('Invalid hypotheses accepted')


def main():
    data=json.loads((Path(__file__).parent/'data/replay_cases.json').read_text())
    for precision in (96,160):
        ctx.prec=precision
        for row in data['cases']:
            cc,hh=cell_box(row)
            assert replay(cc,hh,row['certificate']),row['source_row']
        controls()
        row=next(r for r in data['cases'] if len(r['certificate']['leaves'])>1)
        cc,hh=cell_box(row)
        assert not certify_box(cc,hh,max_depth=0)['ok']
        for edit in ('missing','duplicate','scope'):
            bad=copy.deepcopy(row['certificate'])
            if edit=='missing':bad['leaves'].pop()
            elif edit=='duplicate':bad['leaves'].append(bad['leaves'][0])
            else:bad['threshold']='1'
            try:replay(cc,hh,bad)
            except ValueError:pass
            else:raise AssertionError('Corrupted certificate accepted: '+edit)
        print('PASS:',precision,'bits:',len(data['cases']),'real enlarged-cell covers, physical Fourier/Tao controls, budgets, scope and exact partition audits',flush=True)


if __name__=='__main__':main()
