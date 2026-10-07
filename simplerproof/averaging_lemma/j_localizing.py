"""Additional reconstruction PSD matrices from the proved bound |J|<21/8.

For each pair of seed columns and each physical side column v_l,
J(pair,v_l) is a seven-term Laurent polynomial. Hence
  (21/8) G +/- sum_l J(pair,v_l) v_l v_l^* >= 0.
The entries remain affine in the existing six complex side quantities.
"""
import inspect
import numpy as np
from reconstruction_polynomials import LP,zeros,permute

def affine_data(theta):
    a,b,c,d=np.exp(1j*np.asarray(theta));s=-1-a-b;t=-1-c-d;r=-1-c*a.conjugate()-d*b.conjugate()
    def const(z):
        v=np.zeros(14,complex);v[0]=z;return v
    unknown=[]
    for k in range(6):
        v=const(0);v[1+2*k]=1;v[2+2*k]=1j;unknown.append(v)
    u,v,w,Pi,C1,C2=unknown;m={}
    def put(i,j,z):m[i,j]=z;m[-i,-j]=z.conjugate()
    put(0,0,const(3));put(1,0,const(s));put(0,1,const(t));put(1,-1,const(r.conjugate()))
    put(2,0,const(s*s)-2*u*s.conjugate());put(0,2,const(t*t)-2*v*t.conjugate())
    put(1,1,const(s*t)-Pi);put(2,-1,const(s*r.conjugate())-C1);put(-1,2,const(t*r)-C2)
    put(2,-2,const(r.conjugate()**2)-2*w*r)
    powers=[(0,0),(1,0),(0,1),(1,-1),(-1,0),(0,-1),(-1,1)]
    weights=[(0,0),(1,0),(0,1),(-1,1)]
    xx=[1,a,b];yy=[1,c,d];G=np.array([[3,s.conjugate(),t.conjugate()],[s,3,r.conjugate()],[t,r,3]])
    matrices=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        A=xx[k]/xx[j];B=yy[k]/yy[j]
        c0=-2*(A+B+1)*(A*B+A+B)/(A*B)
        cx=-(2*A*B+A+B*B+2*B)/(A*B)
        cy=-(A*A+2*A*B+2*A+B)/(A*B)
        cxy=-(A*B+2*A+2*B+1)/A
        ds=[c0,cx,cy,cxy,cx.conjugate(),cy.conjugate(),cxy.conjugate()]
        ds=[z*xx[j]**(-pi)*yy[j]**(-pj) for z,(pi,pj) in zip(ds,powers)]
        sums=[]
        for wi,wj in weights:
            f=const(0)
            for z,(pi,pj) in zip(ds,powers):f+=z*m[pi+wi,pj+wj]
            sums.append(f)
        N=np.zeros((3,3,14),complex)
        for j0 in range(3):N[j0,j0]=sums[0].real
        for z,(j0,k0) in zip(sums[1:],[(1,0),(2,0),(2,1)]):N[j0,k0]=z;N[k0,j0]=z.conjugate()
        AG=np.zeros_like(N);AG[:,:,0]=G*21/8
        matrices.extend([AG+N,AG-N])
    return np.array(matrices)

def exact_side():
    source=inspect.getsource(affine_data).replace('def affine_data(theta):','def compiled():')
    source=source.replace('a,b,c,d=np.exp(1j*np.asarray(theta))','a,b,c,d=[LP.variable(j) for j in range(4)]')
    source=source.replace('np.zeros(14,complex)','zeros((14,))').replace('v[0]=z','v[0]=LP(z)')
    source=source.replace('np.zeros((3,3,14),complex)','zeros((3,3,14))').replace('np.zeros_like(N)','zeros(N.shape)')
    source=source.replace('N[j0,j0]=sums[0].real','N[j0,j0]=[LP(z).real for z in sums[0]]')
    source=source.replace('matrices=[]','G=np.array([[LP(x) for x in row] for row in G]);matrices=[]')
    namespace=dict(np=np,LP=LP,zeros=zeros);exec(source,namespace)
    A=namespace['compiled']()
    for index in np.ndindex(A.shape):A[index]=LP(A[index])
    return A

def combined_data(theta):
    matrices=[]
    for side,th in enumerate([np.asarray(theta),np.asarray(theta)[[0,2,1,3]]]):
        a=affine_data(th);b=np.zeros((6,3,3,26),complex)
        indices=[0]+list(range(1+12*side,13+12*side))+[25]
        for j,k in enumerate(indices):b[:,:,:,k]=a[:,:,:,j]
        matrices.extend(b)
    return np.array(matrices)

def exact_combined():
    a=exact_side();matrices=[]
    for side in range(2):
        b=zeros((6,3,3,26));indices=[0]+list(range(1+12*side,13+12*side))+[25]
        for j,k in enumerate(indices):
            for index in np.ndindex((6,3,3)):
                b[index+(k,)]=a[index+(j,)] if side==0 else permute(a[index+(j,)],[0,2,1,3])
        matrices.extend(b)
    return np.array(matrices)

if __name__=='__main__':
    A=exact_combined();theta=np.array([.3,1.2,-.7,2.1]);expected=combined_data(theta)
    actual=np.array([v.evaluate(theta) for v in A.flat]).reshape(A.shape)
    assert np.max(abs(actual-expected))<1e-10
    print('PASS exact compilation control; coefficient terms',sum(len(p.d) for p in A.flat))
