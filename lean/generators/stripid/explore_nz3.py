import pickle,time,re
import common
from common import QCTX
t0=time.time()
nD,ne=pickle.load(open('/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/nz_n.pkl','rb'))
X,Y,k,_=QCTX.gens()
h=1+k*k
n=QCTX.from_dict({(a,b,c,0):v for (a,b,c),v in nD.items()})
L=[2+6*k*k-(1+k)*h*(X+Y), 6*h+4*k-(1+k)*h*(9-Y), 6*h+4*k-(1+k)*h*(9-X),
   2+6*k*k-(1-k)*h*(X+Y), 6*h-4*k-(1-k)*h*(9-Y), 6*h-4*k-(1-k)*h*(9-X)]
P=1
for l in L: P=P*l
hZ=9*h-4-h*X-h*Y
Kh=X*Y*hZ   # h K
src=open('/Users/jtindall/Files/NoFourMUBS/lean/NoFourMUBs/PRM/CoverageQuarticDefs.lean').read()
body=src[src.index('def qCoeffs'):src.index('def Q ')]
QC=[tuple(map(int,mm)) for mm in re.findall(r'\((-?\d+), (\d+), (\d+)\)',body)]
Qh=0
for cc,i,j in QC: Qh=Qh+cc*k**i*Kh**j*h**(4-j)
# W relation times h^3: XY + (X+Y) Z - XYZ = W ; Z = hZ/h ; W = q(q^2-8q+18)/2, q = 4/h
# h^3 * W = 4 (16 - 32 h + 18 h^2)/2 = 2(16 - 32h + 18h^2)
G=h**3*X*Y + h**2*(X+Y)*hZ - h**2*X*Y*hZ - 2*(16-32*h+18*h*h)
print('setup',time.time()-t0,flush=True)
for e in (8,):
    R=n*h**e+2**17*k**2*(3*k*k+1)**3*Qh*P**3
    qq,rem=divmod(R,G)
    print('e',e,'rem',len(rem),'R',len(R),R.degrees(),'q',len(qq),qq.degrees(),time.time()-t0,flush=True)
    if len(rem)==0:
        mx=max(abs(int(c)) for c in qq.coeffs())
        print('q maxbits',mx.bit_length())
        pickle.dump(qq,open('/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/nz_q.pkl','wb'))
