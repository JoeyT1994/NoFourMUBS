"""Positive and adversarial checks for the exact Cartesian coverage audit."""
import copy
from geometry import audit_tree
from collar import partition,audit
from fractions import Fraction as Q
from ordering import exclude_F,arb
import fast_prune

def main():
    root=dict(theta=[0.]*4,radius=1.+2.**-40,path=[],status='split')
    kids=[dict(theta=[.5 if j>>a&1 else -.5 for a in range(4)],
               radius=.5+2.**-39,path=[j],status='open') for j in range(16)]
    records=[root,*kids]
    assert len(audit_tree(records,[0.]*4,1.+2.**-40))==16
    bad=[]
    bad.append(records[:-1]);bad.append(records+[kids[0]])
    x=copy.deepcopy(records);x[0]['status']='open';bad.append(x)
    x=copy.deepcopy(records)
    for n in x[1:]:n['radius']=.5
    bad.append(x) # nominal boxes tile, but enlarged outer boundary is omitted
    x=copy.deepcopy(records);x[1]['theta'][0]+=.01;bad.append(x)
    x=copy.deepcopy(records);x[1]['radius']=float('nan');bad.append(x)
    x=copy.deepcopy(records);x[1]['path']=[16];bad.append(x)
    for x in bad:
        try:audit_tree(x,[0.]*4,1.+2.**-40)
        except ValueError:pass
        else:raise AssertionError('Malformed cover accepted')
    print('PASS: exact enlarged-parent coverage and seven rejection controls')
    outer=[(-Q(1)-Q(1,2**40),Q(1)+Q(1,2**40))]*4
    inner=[(-Q(1,2**49),Q(1,2**49))]*4
    leaves=partition(outer,inner);assert len(leaves)==9 and audit(outer,inner,leaves)
    touching=list(inner);touching[0]=outer[0]
    assert len(partition(outer,touching))==7
    assert audit(outer,touching,partition(outer,touching))
    altered=list(leaves);changed=list(altered[1]);changed[0]=(changed[0][0]+Q(1,2**100),changed[0][1]);altered[1]=changed
    for invalid in (leaves[:-1],leaves+[leaves[0]],altered):
        try:audit(outer,inner,invalid)
        except ValueError:pass
        else:raise AssertionError('Invalid exact collar accepted')
    print('PASS: exact collar partition below fixed guard and three rejection controls')
    assert not exclude_F([0]*4,[0]*4)['ok']
    assert not exclude_F([0]*4,[arb.pi()]*4)['ok']
    result=exclude_F([arb.pi()]*4,[arb(1)/1024]*4)
    assert result['ok'] and result['scope']=='outside_F'
    print('PASS: outward F-order controls, including a wide box containing F')
    c=[arb.pi()]*4;h=[arb(1)/1024]*4
    cert=fast_prune.certify_box(c,h)
    assert cert['ok'] and fast_prune.replay(c,h,cert)
    physical=[4*arb.pi()/3,5*arb.pi()/3,arb(0),arb.pi()]
    assert not fast_prune.certify_box(physical,h,max_depth=0,node_budget=1)['ok']
    assert not fast_prune.certify_box(c,h,node_budget=0)['ok']
    bad=copy.deepcopy(cert);bad['scope']='outside_physical_D0'
    try:fast_prune.replay(c,h,bad)
    except ValueError:pass
    else:raise AssertionError('Scope confusion accepted')
    print('PASS: mixed F/side cover, physical F6, budget and scope controls')

if __name__=='__main__':main()
