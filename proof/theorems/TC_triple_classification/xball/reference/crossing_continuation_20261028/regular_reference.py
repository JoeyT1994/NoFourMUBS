"""Independent interval certificate for a gamma=1 regular-family reference.

This code does not import or execute any supplied second-brief project code.
Proof checking uses integer arithmetic and the previous directed interval core.
NumPy is used only by the optional certificate discovery function.
"""
from pathlib import Path
import sys,json
from fractions import Fraction
from math import isqrt

if not __debug__:
    raise RuntimeError('Run proof verification without Python optimization flags.')
sys.path.insert(0,str(Path(__file__).resolve().parent))
from interval_support import Interval as I, cmul,cadd,conj,dec,rounded


def sqrt_i(x):
    x=I.coerce(x)
    assert x.lo>=0
    scale=10**85
    def bounds(v):
        f=Fraction(v)
        n=isqrt(f.numerator*scale*scale//f.denominator)
        return I(n)/scale, I(n+1)/scale
    lo,_=bounds(x.lo);_,hi=bounds(x.hi)
    return I(lo.lo,hi.hi)


def inv_i(x):
    x=I.coerce(x);assert x.lo>0
    return I(rounded(lambda:dec(1)/x.hi),rounded(lambda:dec(1)/x.lo,True))


def cscale(a,t):return a[0]*t,a[1]*t
def csub(a,b):return a[0]-b[0],a[1]-b[1]
def cabs2(a):return a[0]*a[0]+a[1]*a[1]
def cpow(a,n):
    out=(I(1),I(0))
    for _ in range(n):out=cmul(out,a)
    return out


def reference_interval():
    one,ii=(I(1),I(0)),(I(0),I(1))
    omega=(-I(1)/2,sqrt_i(I(3))/2)
    a=[one,ii,ii];b=[one,one,(-I(1),I(0))]
    alpha=[];beta=[];six=inv_i(sqrt_i(I(6)))
    for t in range(3):
        values=[]
        for vec in [a,b]:
            z=(I(0),I(0))
            for s in range(3):z=cadd(z,cmul(vec[s],cpow(omega,s*t)))
            values.append(cscale(z,six))
        alpha.append(values[0]);beta.append(values[1])
    x=[];y=[];u=[];v=[]
    for aa,bb in zip(alpha,beta):
        ri=inv_i(sqrt_i(cabs2(aa)*cabs2(bb)))
        xx=cscale(cmul(ii,cmul(aa,bb)),ri)
        yy=cscale(cmul((I(0),-I(1)),cmul(conj(aa),bb)),ri)
        term=cmul(xx,conj(bb))
        x.append(xx);y.append(yy);u.append(cadd(aa,term));v.append(csub(aa,term))
    H=[];K=[]
    for t in range(3):
        for aa in range(2):
            hr=[];kr=[]
            for s in range(3):
                for bb in range(2):
                    z=cscale(cpow(omega,t*s),(-1)**(aa*bb))
                    hr.append(cmul(z,cpow(x[t],bb)))
                    kr.append(cmul(cmul(z,cpow(y[t],bb)),u[t] if aa==0 else v[t]))
            H.append(hr);K.append(kr)
    return H,K


def jacobian_interval(H,K):
    pairs=[(i,j) for i in range(6) for j in range(i+1,6)]
    J=[[I(0) for _ in range(72)] for _ in range(96)]
    for block,M in enumerate([H,K]):
        for n,(i,j) in enumerate(pairs):
            for r in range(6):
                z=cmul(conj(M[r][i]),M[r][j])
                for col,sign in [(i,-1),(j,1)]:
                    idx=36*block+6*r+col
                    J[30*block+n][idx]=-sign*z[1]
                    J[30*block+15+n][idx]=sign*z[0]
    for i in range(6):
        for j in range(6):
            z=[cmul(conj(H[r][i]),K[r][j]) for r in range(6)]
            S=(I(0),I(0))
            for zz in z:S=cadd(S,zz)
            for r in range(6):
                d=-2*cmul(conj(S),z[r])[1]
                J[60+6*i+j][6*r+i]=-d
                J[60+6*i+j][36+6*r+j]=d
    return J


def moving_projector_numerators():
    # Q=diag((I6-J6/6) tensor (I6-C3avg), same), denominator18.
    out=[]
    for i in range(72):
        bi,ri,ci=i//36,(i%36)//6,i%6
        row=[]
        for j in range(72):
            bj,rj,cj=j//36,(j%36)//6,j%6
            row.append(0 if bi!=bj else 18*int(i==j)-6*int(ri==rj and ci%2==cj%2)-3*int(ci==cj)+int(ci%2==cj%2))
        out.append(row)
    return out


def mm(A,B):
    cols=list(zip(*B))
    return [[sum(x*y for x,y in zip(row,col)) for col in cols] for row in A]


def transpose(A):return [list(x) for x in zip(*A)]


def positive_definite_integer(A):
    """Exact Sylvester test via fraction-free elimination, no floating point."""
    a=[row[:] for row in A]
    n=len(a);prev=1
    assert all(a[i][j]==a[j][i] for i in range(n) for j in range(n))
    pivots=[]
    for k in range(n):
        pivot=a[k][k]
        if pivot<=0:return False
        pivots.append(pivot)
        for i in range(k+1,n):
            for j in range(i,n):
                numerator=pivot*a[i][j]-a[i][k]*a[k][j]
                assert numerator%prev==0
                a[i][j]=numerator//prev
                a[j][i]=a[i][j]
        prev=pivot
    return True


def verify(path):
    data=json.loads(Path(path).read_text())
    assert data['format']=='regular-moving-left-inverse-v1'
    D=data['inverse_denominator'];T=data['jacobian_denominator']
    C=data['inverse_numerators'];Z=data['jacobian_numerators']
    assert type(D)is int and D>0 and type(T)is int and T>0
    assert len(C)==72 and all(len(row)==96 for row in C)
    assert len(Z)==96 and all(len(row)==72 for row in Z)
    assert all(type(v)is int for A in [C,Z] for row in A for v in row)
    Q=moving_projector_numerators()
    assert mm(Q,Q)==[[18*x for x in row] for row in Q]
    assert Q==transpose(Q) and sum(Q[i][i] for i in range(72))==18*40
    J=jacobian_interval(*reference_interval())
    err2=I(0)
    for i in range(96):
        for j in range(72):
            e=(J[i][j]-I(Z[i][j])/T).abs_upper()
            err2=err2+I(e)*e
    # A deliberately simple rational enclosure for the exact-reference J.
    assert err2.hi < (I(1)/10**8 * (I(1)/10**8)).lo
    RJQ=mm(mm(C,Z),Q)
    E=[[Q[i][j]*D*T-RJQ[i][j] for j in range(72)] for i in range(72)]
    en2=sum(x*x for row in E for x in row)
    ed=18*D*T
    # ||Q-C Jmid Q||F <= 1/100000.
    assert en2*100000**2<=ed*ed
    # Exact operator-norm bound ||C/D||2<13/20.
    CC=mm(C,transpose(C))
    S=[[169*D*D*int(i==j)-400*CC[i][j] for j in range(72)] for i in range(72)]
    assert positive_definite_integer(S)
    # defect <=1e-5+(13/20)*1e-8 <1e-4.
    assert Fraction(1,100000)+Fraction(13,20*10**8)<Fraction(1,10000)
    # sigma >=(1-1e-4)/(13/20)>3/2.
    assert (1-Fraction(1,10000))/Fraction(13,20)>Fraction(3,2)
    return dict(status='PROVED CONDITIONAL ON THE CANONICAL CONSTRUCTION',
                reference='a=(1,i,i), b=(1,1,-1), gamma=1; full72 orthogonal gauge quotient',
                moving_rank=40,preconditioner_norm_upper='13/20',
                exact_J_to_rational_midpoint_Frobenius_error_upper='1/100000000',
                midpoint_preconditioner_defect_upper='1/100000',
                total_defect_upper='1/10000',
                moving_singular_value_lower='3/2',
                symmetry_tube_radius='1/40',
                normalizations='unweighted96 residuals; radians; horizontal72 quotient')


def build(path):
    import numpy as np
    J=jacobian_interval(*reference_interval())
    j=np.array([[float((v.lo+v.hi)/2) for v in row] for row in J])
    q=np.array(moving_projector_numerators())/18
    c=np.linalg.pinv(j@q,rcond=1e-10)
    D=10**9;T=10**12
    data=dict(format='regular-moving-left-inverse-v1',inverse_denominator=D,jacobian_denominator=T,
              inverse_numerators=np.rint(c*D).astype(np.int64).tolist(),
              jacobian_numerators=np.rint(j*T).astype(np.int64).tolist())
    Path(path).write_text(json.dumps(data,separators=(',',':'))+'\n')
    print('NUMERICAL: moving sigma',np.linalg.svd(j@q,compute_uv=False)[39], 'C norm',np.linalg.norm(c,2),flush=True)
    return verify(path)


if __name__=='__main__':
    p=Path(__file__).with_name('regular_reference_certificate.json')
    result=build(p) if '--build' in sys.argv else verify(p)
    Path(__file__).with_name('regular_reference_verified.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
