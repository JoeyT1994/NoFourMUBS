"""Pre-search hook for the existing joint tube checker.

Call after six complete column covers have been verified, before enumerating
tube tuples. The outer checker retains responsibility for H/cover binding.
"""
import projector_joint_certificate as J
import projector_joint_probe as P
import numpy as np

def check_order(tubes,order):
    if len(order)!=6 or len(set(order))!=6 or any(c not in tubes or not tubes[c] for c in order):
        raise ValueError('six distinct nonempty complete column covers required')

def replay(model,tubes,proposal,duty=1.):
    if proposal.get('schema')!='tc-projector-union-hook-v1':raise ValueError('hook proposal schema')
    order=proposal['order'];check_order(tubes,order)
    receipt=J.certify(model,[tubes[c] for c in order],proposal['seed_hex'],duty=duty)
    return receipt

def search(model,tubes,order,steps=100,duty=1.):
    """Returns (proposal, verified receipt), or None on a failed sufficient test."""
    check_order(tubes,order);cs={}
    for c in order:
        entries=list(tubes[c].items());values=[p for key,(p,e) in entries]
        if any(p.get('model') is not model for p in values):raise ValueError('common H model required')
        cs[c]=dict(ids=[key for key,value in entries],v=np.array([J.A.numeric(p['v0']).ravel() for p in values]),
            T=np.array([J.A.numeric(p['T']) for p in values]),e=np.array([J.A.mid(e) for key,(p,e) in entries]))
    best,count=P.propose(P.data(cs,model),steps=steps,verbose=False)
    if best[1] is None or not best[0]>0:return None
    proposal=dict(schema='tc-projector-union-hook-v1',order=list(order),seed_hex=[float(x).hex() for x in best[1][:86]])
    receipt=replay(model,tubes,proposal,duty)
    if receipt['status']!='EXCLUDED_GIVEN_TUBE_COVERS':return None
    return proposal,receipt
