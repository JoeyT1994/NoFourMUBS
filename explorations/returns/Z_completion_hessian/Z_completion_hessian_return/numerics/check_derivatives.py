"""Independent finite-difference and differentiated unitarity checks (NUMERICAL)."""
from pathlib import Path
import numpy as np
import core
p=Path(__file__).resolve().parent
z=np.load(p/'centres.npz');rng=np.random.default_rng(921)
worst=dict(first=0.,second=0.,third=0.,unitarity_first=0.,unitarity_second=0.)
for idx in [0,38,62,107,151,225,299]:
    co={k:z[k][idx] for k in ['H','theta','phih','phiv']}
    je=core.third_jet(co['theta'],previous=co)
    u=rng.normal(size=4);u/=np.linalg.norm(u);ep=2e-6
    jp=core.jet(co['theta']+ep*u,previous=co);jm=core.jet(co['theta']-ep*u,previous=co)
    d1=(core.horizontal(np.angle(jp['H']*co['H'].conj()))-core.horizontal(np.angle(jm['H']*co['H'].conj()))).reshape(36)/(2*ep)
    e1=je['Q1']@u
    d2=(jp['Q1']-jm['Q1'])/(2*ep);e2=np.einsum('aij,j->ai',je['Q2'],u)
    d3=(jp['Q2']-jm['Q2'])/(2*ep);e3=np.einsum('aijk,k->aij',je['Q3'],u)
    for k,delta,exact in [('first',d1,e1),('second',d2,e2),('third',d3,e3)]:
        err=np.max(abs(delta-exact))/(1+np.max(abs(exact)));worst[k]=max(worst[k],err)
        assert err<2e-6,(idx,k,err)
    H=je['H'];H1=np.einsum('abk,k->ab',je['H1'],u);H2=np.einsum('abkl,k,l->ab',je['H2'],u,u)
    e1=np.max(abs(H1@H.conj().T+H@H1.conj().T))
    e2=np.max(abs(H2@H.conj().T+2*H1@H1.conj().T+H@H2.conj().T))
    worst['unitarity_first']=max(worst['unitarity_first'],e1);worst['unitarity_second']=max(worst['unitarity_second'],e2)
    assert e1<1e-8 and e2<1e-7,(idx,e1,e2)
print('NUMERICAL derivative checks PASS:',worst)
